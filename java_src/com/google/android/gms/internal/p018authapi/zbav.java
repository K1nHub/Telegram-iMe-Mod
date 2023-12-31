package com.google.android.gms.internal.p018authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbav */
/* loaded from: classes.dex */
final class zbav extends IStatusCallback.Stub {
    final /* synthetic */ TaskCompletionSource zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbav(zbay zbayVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        TaskUtil.setResultOrApiException(status, this.zba);
    }
}
