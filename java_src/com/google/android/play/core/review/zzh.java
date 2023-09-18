package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.zzag;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzh extends zzg<ReviewInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzi zziVar, com.google.android.play.core.tasks.zzi<ReviewInfo> zziVar2, String str) {
        super(zziVar, new zzag("OnRequestInstallCallback"), zziVar2);
    }

    @Override // com.google.android.play.core.review.zzg, com.google.android.play.core.internal.zzae
    public final void zzb(Bundle bundle) throws RemoteException {
        super.zzb(bundle);
        this.zzb.zze(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
