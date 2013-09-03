/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo.config;

import com.anosym.vjax.VXMLBindingException;
import com.anosym.vjax.v3.VObjectMarshaller;
import com.anosym.vjax.xml.VDocument;
import java.io.File;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kenn
 */
public class TrangloConfigUtil {

  public static final String TRANGLO_CONFIG_PROPERTY = "com.anosym.tranglo.config";
  private static Calendar LAST_UPDATE_CHECK;
  private static TrangloConfiguration trangloConfig;

  static {
    File trangloConfigPath = new File(System.getProperty(TRANGLO_CONFIG_PROPERTY, System.getProperty("user.home")), "tranglo.xml");
    Logger.getLogger(TrangloConfigUtil.class.getName()).log(Level.INFO, "TRANGLO_CONFIG_PROPERTY: {0}", trangloConfigPath.getAbsolutePath());
    if (!trangloConfigPath.exists()) {
      try {
        TrangloConfiguration newTrangloConfig = new TrangloConfiguration("replace_with_username", "update_with_account_password");
        VDocument doc = new VObjectMarshaller<TrangloConfiguration>(TrangloConfiguration.class).marshall(newTrangloConfig);
        doc.setDocumentName(trangloConfigPath);
        doc.writeDocument();
      } catch (Exception ex) {
        Logger.getLogger(TrangloConfigUtil.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
  }

  private static void load() {
    Calendar now = Calendar.getInstance();
    boolean load = LAST_UPDATE_CHECK == null || (now.getTimeInMillis() - LAST_UPDATE_CHECK.getTimeInMillis()) > 3600;
    if (load) {
      try {
        File trangloConfigPath = new File(System.getProperty(TRANGLO_CONFIG_PROPERTY, System.getProperty("user.home")), "tranglo.xml");
        VDocument doc = VDocument.parseDocument(trangloConfigPath);
        TrangloConfiguration trangloConfigReloaded = new VObjectMarshaller<TrangloConfiguration>(TrangloConfiguration.class).unmarshall(doc);
        if (trangloConfigReloaded != null) {
          if (trangloConfigReloaded.getUsername().equals("replace_with_username")) {
          } else {
            synchronized (TrangloConfigUtil.class) {
              TrangloConfigUtil.trangloConfig = trangloConfigReloaded;
            }
          }
        }
      } catch (VXMLBindingException ex) {
        Logger.getLogger(TrangloConfiguration.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
  }

  public static TrangloConfiguration getTrangloConfigurations() {
    /**
     * check if we need to update.
     */
    load();
    return trangloConfig;
  }
}
