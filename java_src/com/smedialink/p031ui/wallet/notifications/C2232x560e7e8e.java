package com.smedialink.p031ui.wallet.notifications;

import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2232x560e7e8e extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ WalletNotificationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2232x560e7e8e(WalletNotificationsPresenter walletNotificationsPresenter) {
        super(1);
        this.this$0 = walletNotificationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1394invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1394invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Error) {
            ((WalletNotificationsView) this.this$0.getViewState()).showToast(((Result.Error) result).getError().getMessage(this.this$0.getResourceManager()));
        }
    }
}
