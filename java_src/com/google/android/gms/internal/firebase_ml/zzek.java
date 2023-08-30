package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public final class zzek {
    public static final String VERSION;
    public static final Integer zzrz = 1;
    public static final Integer zzsa = 26;
    private static final Integer zzsb = 0;

    static {
        String valueOf = String.valueOf((Object) 1);
        String valueOf2 = String.valueOf((Object) 26);
        String valueOf3 = String.valueOf((Object) 0);
        StringBuilder sb = new StringBuilder(valueOf.length() + 11 + valueOf2.length() + valueOf3.length());
        sb.append(valueOf);
        sb.append(".");
        sb.append(valueOf2);
        sb.append(".");
        sb.append(valueOf3);
        sb.append("-SNAPSHOT");
        VERSION = sb.toString().toString();
    }
}
