package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$loadTokens$1 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoPresenter$loadTokens$1 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends List<BaseNode>>>> {
    final /* synthetic */ boolean $isSwipeToRefresh;
    final /* synthetic */ Observable<Result<List<BaseNode>>> $tokensObservable;
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$loadTokens$1(WalletHomeCryptoPresenter walletHomeCryptoPresenter, boolean z, Observable<Result<List<BaseNode>>> observable) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
        this.$isSwipeToRefresh = z;
        this.$tokensObservable = observable;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<BaseNode>>> invoke(Result<? extends String> result) {
        return invoke2((Result<String>) result);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<List<BaseNode>>> invoke2(Result<String> addressResult) {
        CryptoAccessManager cryptoAccessManager;
        BlockchainType currentBlockchainType;
        boolean isWalletDataMismatching;
        Intrinsics.checkNotNullParameter(addressResult, "addressResult");
        this.this$0.setLinkedWalletAddress(addressResult.getData());
        if (!this.$isSwipeToRefresh) {
            ((WalletHomeCryptoView) this.this$0.getViewState()).renderNodes(WalletHomeCryptoPresenter.configureUiItems$default(this.this$0, null, true, null, 5, null));
        }
        cryptoAccessManager = this.this$0.cryptoAccessManager;
        currentBlockchainType = this.this$0.getCurrentBlockchainType();
        if (cryptoAccessManager.isAuthorized(currentBlockchainType)) {
            isWalletDataMismatching = this.this$0.isWalletDataMismatching();
            if (isWalletDataMismatching) {
                ((WalletHomeCryptoView) this.this$0.getViewState()).showAddressMismatchScreen();
            }
            return this.$tokensObservable;
        }
        Observable just = Observable.just(Result.Companion.success(WalletHomeCryptoPresenter.configureUiItems$default(this.this$0, null, false, null, 7, null)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
