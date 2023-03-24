package com.smedialink.storage.domain.interactor.wallet;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletInteractor.kt */
/* loaded from: classes3.dex */
final class WalletInteractor$getWalletBalance$1$1 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>> {
    final /* synthetic */ boolean $force;
    final /* synthetic */ NetworkType $networkType;
    final /* synthetic */ WalletInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletInteractor$getWalletBalance$1$1(WalletInteractor walletInteractor, boolean z, NetworkType networkType) {
        super(1);
        this.this$0 = walletInteractor;
        this.$force = z;
        this.$networkType = networkType;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<List<TokenBalance>>> invoke2(Result<Boolean> it) {
        WalletRepository walletRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(it, "it");
        walletRepository = this.this$0.walletRepository;
        Observable<Result<List<TokenBalance>>> walletBalance = walletRepository.getWalletBalance(this.$force, this.$networkType);
        schedulersProvider = this.this$0.schedulersProvider;
        return walletBalance.subscribeOn(schedulersProvider.mo707io());
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends TokenBalance>>> invoke(Result<? extends Boolean> result) {
        return invoke2((Result<Boolean>) result);
    }
}
