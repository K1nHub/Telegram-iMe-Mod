package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.C0468C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzuw {
    public static final byte[] zzbtk;
    private static final ByteBuffer zzbtl;
    private static final zztz zzbtm;
    static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName(C0468C.ISO88591_NAME);

    public static int zzab(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zzan(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzf(zzwe zzweVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static boolean zzi(byte[] bArr) {
        return zzxv.zzi(bArr);
    }

    public static String zzj(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int zza = zza(length, bArr, 0, length);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzc(Object obj, Object obj2) {
        return ((zzwe) obj).zzri().zza((zzwe) obj2).zzrp();
    }

    static {
        byte[] bArr = new byte[0];
        zzbtk = bArr;
        zzbtl = ByteBuffer.wrap(bArr);
        zzbtm = zztz.zza(bArr, 0, bArr.length, false);
    }
}
