package com.iMe.utils.helper.wallet;

import com.iMe.p031ui.base.mvp.base.BaseView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.utils.helper.wallet.AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2 */
/* loaded from: classes4.dex */
public final class C2433x3a0d1b4f extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ BaseView $viewState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2433x3a0d1b4f(BaseView baseView) {
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
