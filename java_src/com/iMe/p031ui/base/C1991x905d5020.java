package com.iMe.p031ui.base;

import com.iMe.p031ui.base.mvp.base.BaseView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.base.WalletAuthFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2 */
/* loaded from: classes.dex */
public final class C1991x905d5020 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ BaseView $viewState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1991x905d5020(BaseView baseView) {
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
        Timber.m6e(th);
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
