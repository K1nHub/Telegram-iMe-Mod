package com.google.android.gms.internal.p018authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbau */
/* loaded from: classes.dex */
final class zbau extends zbx {
    final /* synthetic */ TaskCompletionSource zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbau(zbay zbayVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p018authapi.zby
    public final void zbb(Status status, BeginSignInResult beginSignInResult) throws RemoteException {
        TaskUtil.setResultOrApiException(status, beginSignInResult, this.zba);
    }
}
