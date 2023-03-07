package com.google.android.gms.internal.firebase_ml;

import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzlq extends zzlp {
    private final zzlo zzacz = new zzlo();

    @Override // com.google.android.gms.internal.firebase_ml.zzlp
    public final void zza(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
        this.zzacz.zza(th, true).add(th2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzlp
    public final void zzb(Throwable th) {
        th.printStackTrace();
        List<Throwable> zza = this.zzacz.zza(th, false);
        if (zza == null) {
            return;
        }
        synchronized (zza) {
            for (Throwable th2 : zza) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }
}
