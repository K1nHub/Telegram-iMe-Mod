package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public abstract class zzey implements zzff {
    private zzfl zztf;
    private long zztg;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzey(String str) {
        this(str == null ? null : new zzfl(str));
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzff
    public final boolean zzeo() {
        return true;
    }

    private zzey(zzfl zzflVar) {
        this.zztg = -1L;
        this.zztf = zzflVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzff
    public final long getLength() throws IOException {
        if (this.zztg == -1) {
            this.zztg = zzhq.zzb(this);
        }
        return this.zztg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Charset zzen() {
        zzfl zzflVar = this.zztf;
        return (zzflVar == null || zzflVar.zzfb() == null) ? zzhe.UTF_8 : this.zztf.zzfb();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzff
    public final String getType() {
        zzfl zzflVar = this.zztf;
        if (zzflVar == null) {
            return null;
        }
        return zzflVar.zzep();
    }
}
