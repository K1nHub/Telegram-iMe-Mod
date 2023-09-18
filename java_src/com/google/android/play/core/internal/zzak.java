package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.zzi;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzak extends zzah {
    final /* synthetic */ zzah zza;
    final /* synthetic */ zzas zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(zzas zzasVar, zzi zziVar, zzah zzahVar) {
        super(zziVar);
        this.zzb = zzasVar;
        this.zza = zzahVar;
    }

    @Override // com.google.android.play.core.internal.zzah
    public final void zza() {
        zzas.zzn(this.zzb, this.zza);
    }
}
