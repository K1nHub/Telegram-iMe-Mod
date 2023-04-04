package com.iMe.p032ui.wallet.crypto.create;

import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C2123x17c7d15b extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ boolean $isPasscodeCreated$inlined;
    final /* synthetic */ String $seed$inlined;
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2123x17c7d15b(boolean z, CreateWalletPresenter createWalletPresenter, String str) {
        super(1);
        this.$isPasscodeCreated$inlined = z;
        this.this$0 = createWalletPresenter;
        this.$seed$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        CryptoWalletInteractor cryptoWalletInteractor;
        CreateWalletScreenType createWalletScreenType;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        } else if (this.$isPasscodeCreated$inlined && Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
            cryptoWalletInteractor = this.this$0.cryptoWalletInteractor;
            createWalletScreenType = this.this$0.screenType;
            String password = ((CreateWalletScreenType.Import) createWalletScreenType).getPassword();
            String str = this.$seed$inlined;
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            Observable<Result<Wallet>> createWallet = cryptoWalletInteractor.createWallet(password, "", "", str, cryptoPreferenceHelper.getCurrentBlockchainType());
            schedulersProvider = this.this$0.schedulersProvider;
            Observable<Result<Wallet>> observeOn = createWallet.observeOn(schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            ObservableSource map = observeOn.map(new C2127x9ee4cc57(new C2126x9247a8b3()));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        } else {
            Observable just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(validationResult)");
            return just;
        }
    }
}
