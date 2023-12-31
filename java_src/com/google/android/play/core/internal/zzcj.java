package com.google.android.play.core.internal;

import java.io.File;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzcj {
    public static String zza(File file) {
        if (!file.getName().endsWith(".apk")) {
            throw new IllegalArgumentException("Non-apk found in splits directory.");
        }
        String replaceFirst = file.getName().replaceFirst("(_\\d+)?\\.apk", "");
        if (replaceFirst.equals("base-master") || replaceFirst.equals("base-main")) {
            return "";
        }
        if (replaceFirst.startsWith("base-")) {
            return replaceFirst.replace("base-", "config.");
        }
        return replaceFirst.replace("-", ".config.").replace(".config.master", "").replace(".config.main", "");
    }
}
