package com.microsoft.appcenter;

import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.InstrumentationRegistryHelper;
/* loaded from: classes4.dex */
class ServiceInstrumentationUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isServiceDisabledByInstrumentation(String serviceName) {
        try {
            String string = InstrumentationRegistryHelper.getArguments().getString("APP_CENTER_DISABLE");
            if (string == null) {
                return false;
            }
            for (String str : string.split(",")) {
                String trim = str.trim();
                if (trim.equals("All") || trim.equals(serviceName)) {
                    return true;
                }
            }
            return false;
        } catch (IllegalStateException | LinkageError unused) {
            AppCenterLog.debug("AppCenter", "Cannot read instrumentation variables in a non-test environment.");
            return false;
        }
    }
}
