package com.google.android.gms.internal.wearable;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public abstract class zzaw implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzaw zzb = new zzat(zzcd.zzd);
    private static final zzav zzd;
    private int zzc = 0;

    static {
        int i = zzai.zza;
        zzd = new zzav(null);
        zza = new zzao();
    }

    public static zzaw zzm(byte[] bArr) {
        return zzn(bArr, 0, bArr.length);
    }

    public static zzaw zzn(byte[] bArr, int i, int i2) {
        zzk(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzat(bArr2);
    }

    public static zzaw zzo(String str) {
        return new zzat(str.getBytes(zzcd.zzb));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzd2 = zzd();
            i = zzf(zzd2, 0, zzd2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzan(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? zzec.zza(this) : zzec.zza(zzg(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i);

    public abstract int zzd();

    protected abstract void zze(byte[] bArr, int i, int i2, int i3);

    protected abstract int zzf(int i, int i2, int i3);

    public abstract zzaw zzg(int i, int i2);

    protected abstract String zzh(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzi(zzam zzamVar) throws IOException;

    public abstract boolean zzj();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzl() {
        return this.zzc;
    }

    public final String zzp(Charset charset) {
        return zzd() == 0 ? "" : zzh(charset);
    }

    public final byte[] zzq() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return zzcd.zzd;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
            } else if (i2 < i) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
            }
        }
        return i4;
    }
}
