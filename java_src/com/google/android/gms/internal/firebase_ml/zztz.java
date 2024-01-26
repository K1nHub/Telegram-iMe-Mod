package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public abstract class zztz {
    private int zzboz;
    private int zzbpa;
    private boolean zzbpb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zztz zza(byte[] bArr, int i, int i2, boolean z) {
        zzub zzubVar = new zzub(bArr, 0, i2, false);
        try {
            zzubVar.zzcp(i2);
            return zzubVar;
        } catch (zzve e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int zzcq(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long zzr(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public abstract int zzcp(int i) throws zzve;

    public abstract int zzqk();

    private zztz() {
        this.zzboz = 100;
        this.zzbpa = Integer.MAX_VALUE;
        this.zzbpb = false;
    }
}
