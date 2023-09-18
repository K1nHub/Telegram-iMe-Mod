package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzap extends zzal<Void> {
    final /* synthetic */ zzaw zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzap(zzaw zzawVar, com.google.android.play.core.tasks.zzi<Void> zziVar) {
        super(zzawVar, zziVar);
        this.zzc = zzawVar;
    }

    @Override // com.google.android.play.core.assetpacks.zzal, com.google.android.play.core.internal.zzw
    public final void zzh(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        com.google.android.play.core.internal.zzag zzagVar;
        super.zzh(bundle, bundle2);
        atomicBoolean = this.zzc.zzh;
        if (!atomicBoolean.compareAndSet(true, false)) {
            zzagVar = zzaw.zza;
            zzagVar.zze("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.zzc.zzf();
        }
    }
}
