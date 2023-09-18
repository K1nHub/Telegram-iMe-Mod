package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.zzac;
import com.google.android.play.core.internal.zzad;
import com.google.android.play.core.internal.zzag;
import com.google.android.play.core.internal.zzas;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
class zzg<T> extends zzad {
    final zzag zza;
    final com.google.android.play.core.tasks.zzi<T> zzb;
    final /* synthetic */ zzi zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzi zziVar, zzag zzagVar, com.google.android.play.core.tasks.zzi<T> zziVar2) {
        this.zzc = zziVar;
        this.zza = zzagVar;
        this.zzb = zziVar2;
    }

    @Override // com.google.android.play.core.internal.zzae
    public void zzb(Bundle bundle) throws RemoteException {
        zzas<zzac> zzasVar = this.zzc.zza;
        if (zzasVar != null) {
            zzasVar.zzs(this.zzb);
        }
        this.zza.zzd("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
