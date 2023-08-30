package com.google.android.gms.internal.firebase_ml;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztv {
    private final byte[] buffer;
    private final zzue zzboy;

    private zztv(int i) {
        byte[] bArr = new byte[i];
        this.buffer = bArr;
        this.zzboy = zzue.zzg(bArr);
    }

    public final zztn zzqi() {
        this.zzboy.zzqm();
        return new zztx(this.buffer);
    }

    public final zzue zzqj() {
        return this.zzboy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zztv(int i, zztq zztqVar) {
        this(i);
    }
}
