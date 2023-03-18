package com.smedialink.p031ui.wallet.home.old;

import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAttachAlertPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$getWalletTransactions$1 */
/* loaded from: classes3.dex */
public final class WalletAttachAlertPresenter$getWalletTransactions$1 extends Lambda implements Function1<Boolean, ObservableSource<? extends Result<? extends List<? extends Transaction>>>> {
    final /* synthetic */ TokenCode $selectedTokenCode;
    final /* synthetic */ WalletAttachAlertPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAttachAlertPresenter$getWalletTransactions$1(WalletAttachAlertPresenter walletAttachAlertPresenter, TokenCode tokenCode) {
        super(1);
        this.this$0 = walletAttachAlertPresenter;
        this.$selectedTokenCode = tokenCode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<Transaction>>> invoke(Boolean it) {
        HashMap hashMap;
        WalletInteractor walletInteractor;
        Result success;
        Intrinsics.checkNotNullParameter(it, "it");
        hashMap = this.this$0.cachedTransactions;
        List list = (List) hashMap.get(this.$selectedTokenCode);
        if (list != null && (success = Result.Companion.success(list)) != null) {
            Observable just = Observable.just(success);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            if (just != null) {
                return just;
            }
        }
        walletInteractor = this.this$0.walletInteractor;
        return WalletInteractor.getWalletTransactions$default(walletInteractor, false, null, this.$selectedTokenCode, 0, null, 27, null);
    }
}
