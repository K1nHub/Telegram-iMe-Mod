package com.google.android.gms.internal.firebase_ml;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzub extends zztz {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzbpc;
    private int zzbpd;
    private int zzbpe;
    private int zzbpf;

    private zzub(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzbpf = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzbpe = i;
        this.zzbpc = z;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztz
    public final int zzcp(int i) throws zzve {
        if (i < 0) {
            throw zzve.zzru();
        }
        int zzqk = i + zzqk();
        int i2 = this.zzbpf;
        if (zzqk > i2) {
            throw zzve.zzrt();
        }
        this.zzbpf = zzqk;
        int i3 = this.limit + this.zzbpd;
        this.limit = i3;
        int i4 = i3 - this.zzbpe;
        if (i4 > zzqk) {
            int i5 = i4 - zzqk;
            this.zzbpd = i5;
            this.limit = i3 - i5;
        } else {
            this.zzbpd = 0;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztz
    public final int zzqk() {
        return this.pos - this.zzbpe;
    }
}
