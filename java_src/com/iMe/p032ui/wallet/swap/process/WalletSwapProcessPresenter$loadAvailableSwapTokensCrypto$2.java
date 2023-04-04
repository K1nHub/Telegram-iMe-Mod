package com.iMe.p032ui.wallet.swap.process;

import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2 extends Lambda implements Function1<Observable<Result<? extends List<? extends TokenInfo>>>, ObservableSource<Result<? extends List<? extends TokenInfo>>>> {
    final /* synthetic */ boolean $isWithLoading;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2(boolean z, WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.$isWithLoading = z;
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<Result<? extends List<? extends TokenInfo>>> invoke(Observable<Result<? extends List<? extends TokenInfo>>> observable) {
        return invoke2((Observable<Result<List<TokenInfo>>>) observable);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<Result<List<TokenInfo>>> invoke2(Observable<Result<List<TokenInfo>>> observable) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        if (this.$isWithLoading) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            return RxExtKt.withLoadingDialog$default((Observable) observable, (BaseView) viewState, false, 2, (Object) null);
        }
        return observable;
    }
}
