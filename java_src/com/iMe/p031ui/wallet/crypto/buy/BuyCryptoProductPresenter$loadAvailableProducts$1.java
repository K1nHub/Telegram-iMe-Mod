package com.iMe.p031ui.wallet.crypto.buy;

import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: BuyCryptoProductPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$1 */
/* loaded from: classes3.dex */
final class BuyCryptoProductPresenter$loadAvailableProducts$1 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ BuyCryptoProductPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductPresenter$loadAvailableProducts$1(BuyCryptoProductPresenter buyCryptoProductPresenter) {
        super(1);
        this.this$0 = buyCryptoProductPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Disposable disposable) {
        ((BuyCryptoProductView) this.this$0.getViewState()).showRefreshLoading(true);
    }
}
