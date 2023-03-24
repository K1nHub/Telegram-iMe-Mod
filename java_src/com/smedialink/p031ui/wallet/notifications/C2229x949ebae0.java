package com.smedialink.p031ui.wallet.notifications;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$2 */
/* loaded from: classes3.dex */
public final class C2229x949ebae0 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ BaseView $viewState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2229x949ebae0(BaseView baseView) {
        super(1);
        this.$viewState = baseView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        Timber.m4e(th);
        BaseView baseView = this.$viewState;
        if (baseView != null) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            baseView.showToast(message);
        }
    }
}
