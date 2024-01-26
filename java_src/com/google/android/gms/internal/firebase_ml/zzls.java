package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzls extends zzlp {
    @Override // com.google.android.gms.internal.firebase_ml.zzlp
    public final void zza(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzlp
    public final void zzb(Throwable th) {
        th.printStackTrace();
    }
}
