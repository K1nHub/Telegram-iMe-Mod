package com.microsoft.appcenter.utils;

import android.os.Process;
/* loaded from: classes4.dex */
public class ShutdownHelper {
    public static void shutdown(int status) {
        Process.killProcess(Process.myPid());
        System.exit(status);
    }
}
