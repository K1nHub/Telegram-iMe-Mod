package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2308x250116c7 extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends List<BaseNode>>>> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2308x250116c7(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<BaseNode>>> invoke(Result<? extends List<? extends TokenBalance>> result) {
        WalletInteractor walletInteractor;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        walletInteractor = this.this$0.walletInteractor;
        Observable tokensSettings$default = WalletInteractor.getTokensSettings$default(walletInteractor, null, 1, null);
        schedulersProvider = this.this$0.schedulersProvider;
        Observable observeOn = tokensSettings$default.observeOn(schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Observable map = observeOn.map(new C2316x21775993(new C2309xa18e8008(this.this$0, result)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }
}
