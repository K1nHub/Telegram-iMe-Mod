package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public class zzgo implements zzgq {
    protected final zzfv zzs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgo(zzfv zzfvVar) {
        Preconditions.checkNotNull(zzfvVar);
        this.zzs = zzfvVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final Context zzau() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final Clock zzav() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzaa zzaw() {
        throw null;
    }

    public void zzax() {
        this.zzs.zzaz().zzax();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzel zzay() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzfs zzaz() {
        throw null;
    }

    public void zzg() {
        this.zzs.zzaz().zzg();
    }
}
