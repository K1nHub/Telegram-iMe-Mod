package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class WalletInteractor$getWalletBalance$$inlined$flatMapError$1 extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>> {
    final /* synthetic */ IErrorStatus[] $errorStatus;
    final /* synthetic */ boolean $force$inlined;
    final /* synthetic */ NetworkType $networkType$inlined;
    final /* synthetic */ WalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletInteractor$getWalletBalance$$inlined$flatMapError$1(IErrorStatus[] iErrorStatusArr, WalletInteractor walletInteractor, boolean z, NetworkType networkType) {
        super(1);
        this.$errorStatus = iErrorStatusArr;
        this.this$0 = walletInteractor;
        this.$force$inlined = z;
        this.$networkType$inlined = networkType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends List<? extends TokenBalance>>> invoke(Result<? extends List<? extends TokenBalance>> result) {
        boolean contains;
        WalletRepository walletRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            return Observable.just(result);
        }
        if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            contains = ArraysKt___ArraysKt.contains(this.$errorStatus, error.getError().getStatus());
            if (contains) {
                error.getError();
                walletRepository = this.this$0.walletRepository;
                Observable<Result<Boolean>> activateWallet = walletRepository.activateWallet();
                final WalletInteractor$getWalletBalance$1$1 walletInteractor$getWalletBalance$1$1 = new WalletInteractor$getWalletBalance$1$1(this.this$0, this.$force$inlined, this.$networkType$inlined);
                Observable<R> flatMap = activateWallet.flatMap(new Function(walletInteractor$getWalletBalance$1$1) { // from class: com.iMe.storage.domain.interactor.wallet.WalletInteractor$sam$io_reactivex_functions_Function$0
                    private final /* synthetic */ Function1 function;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        Intrinsics.checkNotNullParameter(walletInteractor$getWalletBalance$1$1, "function");
                        this.function = walletInteractor$getWalletBalance$1$1;
                    }

                    @Override // io.reactivex.functions.Function
                    public final /* synthetic */ Object apply(Object obj) {
                        return this.function.invoke(obj);
                    }
                });
                schedulersProvider = this.this$0.schedulersProvider;
                Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo708io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun getWalletBalance(for…(schedulersProvider.io())");
                return subscribeOn;
            }
            Result error$default = Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapError");
            Observable just = Observable.just(error$default);
            Intrinsics.checkNotNullExpressionValue(just, "just(Result.error<R>(result.error) as R)");
            return just;
        }
        return Observable.empty();
    }
}
