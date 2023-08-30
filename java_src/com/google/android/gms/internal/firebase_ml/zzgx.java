package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public abstract class zzgx {
    @Deprecated
    private final byte zzxa;
    protected final byte zzxb;
    private final int zzxc;
    private final int zzxd;
    protected final int zzxe;
    private final int zzxf;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgx(int i, int i2, int i3, int i4) {
        this(3, 4, i3, i4, (byte) 61);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(byte[] bArr, int i, int i2, zzha zzhaVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean zza(byte b);

    private zzgx(int i, int i2, int i3, int i4, byte b) {
        this.zzxa = (byte) 61;
        this.zzxc = 3;
        this.zzxd = 4;
        this.zzxe = i3 > 0 && i4 > 0 ? (i3 / 4) << 2 : 0;
        this.zzxf = i4;
        this.zzxb = (byte) 61;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final byte[] zza(int i, zzha zzhaVar) {
        byte[] bArr = zzhaVar.buffer;
        if (bArr == null || bArr.length < zzhaVar.pos + i) {
            if (bArr == null) {
                zzhaVar.buffer = new byte[8192];
                zzhaVar.pos = 0;
                zzhaVar.zzxq = 0;
            } else {
                byte[] bArr2 = new byte[bArr.length << 1];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                zzhaVar.buffer = bArr2;
            }
            return zzhaVar.buffer;
        }
        return bArr;
    }

    public final long zzb(byte[] bArr) {
        int length = bArr.length;
        int i = this.zzxc;
        long j = (((length + i) - 1) / i) * this.zzxd;
        int i2 = this.zzxe;
        return i2 > 0 ? j + ((((i2 + j) - 1) / i2) * this.zzxf) : j;
    }
}
