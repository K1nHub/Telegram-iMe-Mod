package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
final class zzxo extends zzxm<zzxp, zzxp> {
    private static void zza(Object obj, zzxp zzxpVar) {
        ((zzuu) obj).zzbso = zzxpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final void zzq(Object obj) {
        ((zzuu) obj).zzbso.zzqa();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ int zzaa(zzxp zzxpVar) {
        return zzxpVar.zzre();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ int zzaf(zzxp zzxpVar) {
        return zzxpVar.zztp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ zzxp zzi(zzxp zzxpVar, zzxp zzxpVar2) {
        zzxp zzxpVar3 = zzxpVar;
        zzxp zzxpVar4 = zzxpVar2;
        return zzxpVar4.equals(zzxp.zztn()) ? zzxpVar3 : zzxp.zza(zzxpVar3, zzxpVar4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ void zzc(zzxp zzxpVar, zzyj zzyjVar) throws IOException {
        zzxpVar.zza(zzyjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ void zza(zzxp zzxpVar, zzyj zzyjVar) throws IOException {
        zzxpVar.zzb(zzyjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ void zzh(Object obj, zzxp zzxpVar) {
        zza(obj, zzxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ zzxp zzae(Object obj) {
        return ((zzuu) obj).zzbso;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ void zzg(Object obj, zzxp zzxpVar) {
        zza(obj, zzxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ zzxp zztm() {
        return zzxp.zzto();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ void zza(zzxp zzxpVar, int i, zztn zztnVar) {
        zzxpVar.zzb((i << 3) | 2, zztnVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzxm
    public final /* synthetic */ void zza(zzxp zzxpVar, int i, long j) {
        zzxpVar.zzb(i << 3, Long.valueOf(j));
    }
}
