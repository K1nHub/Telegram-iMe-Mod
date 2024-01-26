package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public abstract class zzkg {
    public static zzkg zza(char c) {
        return new zzki(',');
    }

    public abstract boolean zzb(char c);

    public int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        zzkv.zza(i, length, "index");
        while (i < length) {
            if (zzb(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzc(char c) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }
}
