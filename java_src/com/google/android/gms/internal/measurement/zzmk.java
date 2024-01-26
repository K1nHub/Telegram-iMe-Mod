package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzmk extends zzmi<zzmj, zzmj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ int zza(zzmj zzmjVar) {
        return zzmjVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ int zzb(zzmj zzmjVar) {
        return zzmjVar.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ zzmj zzc(Object obj) {
        return ((zzjz) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ zzmj zzd(zzmj zzmjVar, zzmj zzmjVar2) {
        zzmj zzmjVar3 = zzmjVar2;
        return zzmjVar3.equals(zzmj.zzc()) ? zzmjVar : zzmj.zzd(zzmjVar, zzmjVar3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ zzmj zze() {
        return zzmj.zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ void zzf(zzmj zzmjVar, int i, long j) {
        zzmjVar.zzh(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final void zzg(Object obj) {
        ((zzjz) obj).zzc.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ void zzh(Object obj, zzmj zzmjVar) {
        ((zzjz) obj).zzc = zzmjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzmi
    public final /* bridge */ /* synthetic */ void zzi(zzmj zzmjVar, zzjh zzjhVar) throws IOException {
        zzmjVar.zzi(zzjhVar);
    }
}
