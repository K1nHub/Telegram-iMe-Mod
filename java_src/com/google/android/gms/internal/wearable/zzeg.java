package com.google.android.gms.internal.wearable;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzeg extends zzee {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ int zza(Object obj) {
        return ((zzef) obj).zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzef) obj).zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ Object zzc(Object obj) {
        return ((zzbv) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* bridge */ /* synthetic */ Object zzd(Object obj, Object obj2) {
        zzef zzefVar = (zzef) obj2;
        return zzefVar.equals(zzef.zzc()) ? obj : zzef.zzd((zzef) obj, zzefVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ Object zze() {
        return zzef.zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* bridge */ /* synthetic */ void zzf(Object obj, int i, long j) {
        ((zzef) obj).zzh(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final void zzg(Object obj) {
        ((zzbv) obj).zzc.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ void zzh(Object obj, Object obj2) {
        ((zzbv) obj).zzc = (zzef) obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ void zzi(Object obj, zzew zzewVar) throws IOException {
        ((zzef) obj).zzi(zzewVar);
    }
}
