package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zziy extends zzam {
    final /* synthetic */ zzjo zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziy(zzjo zzjoVar, zzgq zzgqVar) {
        super(zzgqVar);
        this.zza = zzjoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzam
    public final void zzc() {
        zzjo zzjoVar = this.zza;
        zzjoVar.zzg();
        if (zzjoVar.zzL()) {
            zzjoVar.zzs.zzay().zzj().zza("Inactivity, disconnecting from the service");
            zzjoVar.zzs();
        }
    }
}
