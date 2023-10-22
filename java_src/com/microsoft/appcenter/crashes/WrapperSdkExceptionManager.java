package com.microsoft.appcenter.crashes;

import com.microsoft.appcenter.crashes.utils.ErrorLogHelper;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.storage.FileManager;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public class WrapperSdkExceptionManager {
    static final Map<String, String> sWrapperExceptionDataContainer = new HashMap();

    public static void deleteWrapperExceptionData(UUID errorId) {
        if (errorId == null) {
            AppCenterLog.error("AppCenterCrashes", "Failed to delete wrapper exception data: null errorId");
            return;
        }
        File file = getFile(errorId);
        if (file.exists()) {
            if (loadWrapperExceptionData(errorId) == null) {
                AppCenterLog.error("AppCenterCrashes", "Failed to load wrapper exception data.");
            }
            FileManager.delete(file);
        }
    }

    public static String loadWrapperExceptionData(UUID errorId) {
        String str = null;
        if (errorId == null) {
            AppCenterLog.error("AppCenterCrashes", "Failed to load wrapper exception data: null errorId");
            return null;
        }
        Map<String, String> map = sWrapperExceptionDataContainer;
        String str2 = map.get(errorId.toString());
        if (str2 != null) {
            return str2;
        }
        File file = getFile(errorId);
        if (file.exists() && (str = FileManager.read(file)) != null) {
            map.put(errorId.toString(), str);
        }
        return str;
    }

    private static File getFile(UUID errorId) {
        File errorStorageDirectory = ErrorLogHelper.getErrorStorageDirectory();
        return new File(errorStorageDirectory, errorId.toString() + ".dat");
    }
}
