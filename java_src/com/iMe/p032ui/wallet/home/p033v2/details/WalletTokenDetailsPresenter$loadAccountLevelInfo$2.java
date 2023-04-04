package com.iMe.p032ui.wallet.home.p033v2.details;

import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$loadAccountLevelInfo$2 */
/* loaded from: classes3.dex */
final class WalletTokenDetailsPresenter$loadAccountLevelInfo$2 extends Lambda implements Function1<Observable<Result<? extends AccountLevelInformation>>, ObservableSource<Result<? extends AccountLevelInformation>>> {
    final /* synthetic */ boolean $isWithLoading;
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$loadAccountLevelInfo$2(boolean z, WalletTokenDetailsPresenter walletTokenDetailsPresenter) {
        super(1);
        this.$isWithLoading = z;
        this.this$0 = walletTokenDetailsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<Result<? extends AccountLevelInformation>> invoke(Observable<Result<? extends AccountLevelInformation>> observable) {
        return invoke2((Observable<Result<AccountLevelInformation>>) observable);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<Result<AccountLevelInformation>> invoke2(Observable<Result<AccountLevelInformation>> observable) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        if (this.$isWithLoading) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            return RxExtKt.withLoadingDialog$default((Observable) observable, (BaseView) viewState, false, 2, (Object) null);
        }
        return observable;
    }
}
