package com.google.android.play.core.tasks;

import java.util.concurrent.CountDownLatch;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzo implements zzp {
    private final CountDownLatch zza = new CountDownLatch(1);

    @Override // com.google.android.play.core.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.zza.countDown();
    }

    @Override // com.google.android.play.core.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.zza.countDown();
    }

    public final void zza() throws InterruptedException {
        this.zza.await();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzo(zzn zznVar) {
    }
}
