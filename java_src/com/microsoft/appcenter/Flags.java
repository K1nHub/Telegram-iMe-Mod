package com.microsoft.appcenter;

import com.microsoft.appcenter.utils.AppCenterLog;
/* loaded from: classes4.dex */
public final class Flags {
    public static int getPersistenceFlag(int flags, boolean warnFallback) {
        int i = flags & 255;
        if (i == 1 || i == 2) {
            return i;
        }
        if (i != 0 && warnFallback) {
            AppCenterLog.warn("AppCenter", "Invalid value=" + i + " for persistence flag, using NORMAL as a default.");
        }
        return 1;
    }
}
