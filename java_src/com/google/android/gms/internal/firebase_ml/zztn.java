package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class zztn implements Serializable, Iterable<Byte> {
    public static final zztn zzbos = new zztx(zzuw.zzbtk);
    private static final zztt zzbot;
    private static final Comparator<zztn> zzbou;
    private int zzada = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(byte b) {
        return b & 255;
    }

    public abstract boolean equals(Object obj);

    public abstract int size();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzto zztoVar) throws IOException;

    protected abstract int zzb(int i, int i2, int i3);

    protected abstract String zzb(Charset charset);

    public abstract byte zzcm(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzcn(int i);

    public abstract zztn zzg(int i, int i2);

    public abstract boolean zzqf();

    public static zztn zzb(byte[] bArr, int i, int i2) {
        zzc(i, i + i2, bArr.length);
        return new zztx(zzbot.zzd(bArr, i, i2));
    }

    public static zztn zzcf(String str) {
        return new zztx(str.getBytes(zzuw.UTF_8));
    }

    public final String zzqe() {
        return size() == 0 ? "" : zzb(zzuw.UTF_8);
    }

    public final int hashCode() {
        int i = this.zzada;
        if (i == 0) {
            int size = size();
            i = zzb(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.zzada = i;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zztv zzco(int i) {
        return new zztv(i, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzqg() {
        return this.zzada;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Beginning index: ");
                sb.append(i);
                sb.append(" < 0");
                throw new IndexOutOfBoundsException(sb.toString());
            } else if (i2 < i) {
                StringBuilder sb2 = new StringBuilder(66);
                sb2.append("Beginning index larger than ending index: ");
                sb2.append(i);
                sb2.append(", ");
                sb2.append(i2);
                throw new IndexOutOfBoundsException(sb2.toString());
            } else {
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("End index: ");
                sb3.append(i2);
                sb3.append(" >= ");
                sb3.append(i3);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
        }
        return i4;
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zztq(this);
    }

    static {
        zzbot = zztk.zzqc() ? new zzua(null) : new zztr(null);
        zzbou = new zztp();
    }
}
