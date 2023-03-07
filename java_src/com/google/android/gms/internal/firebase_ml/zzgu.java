package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
final class zzgu extends zzgi {
    private final zzgs zzwu;
    private final zzrj zzwy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgu(zzgs zzgsVar, zzrj zzrjVar) {
        this.zzwu = zzgsVar;
        this.zzwy = zzrjVar;
        zzrjVar.setLenient(true);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void flush() throws IOException {
        this.zzwy.flush();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void writeBoolean(boolean z) throws IOException {
        this.zzwy.zzak(z);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzfr() throws IOException {
        this.zzwy.zzof();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzft() throws IOException {
        this.zzwy.zzoh();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzaj(String str) throws IOException {
        this.zzwy.zzcb(str);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzfu() throws IOException {
        this.zzwy.zzoj();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzaa(int i) throws IOException {
        this.zzwy.zzq(i);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zze(long j) throws IOException {
        this.zzwy.zzq(j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zza(BigInteger bigInteger) throws IOException {
        this.zzwy.zza(bigInteger);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zza(double d) throws IOException {
        this.zzwy.zzb(d);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzl(float f) throws IOException {
        this.zzwy.zzb(f);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zza(BigDecimal bigDecimal) throws IOException {
        this.zzwy.zza(bigDecimal);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzfq() throws IOException {
        this.zzwy.zzoe();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzfs() throws IOException {
        this.zzwy.zzog();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void writeString(String str) throws IOException {
        this.zzwy.zzcc(str);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgi
    public final void zzfv() throws IOException {
        this.zzwy.setIndent("  ");
    }
}
