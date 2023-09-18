package com.iMe.storage.data.manager.crypto.blockchains;

import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TONBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes4.dex */
public final class TONBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    private final SchedulersProvider schedulersProvider;
    private final TonController tonController;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TONBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper, TonController tonController, SchedulersProvider schedulersProvider) {
        super(cryptoPreferenceHelper, BlockchainType.TON);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(tonController, "tonController");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.tonController = tonController;
        this.schedulersProvider = schedulersProvider;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet() {
        Observable<Result<Wallet>> subscribeOn = this.tonController.createWallet().subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        return subscribeOn;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(final String guid, final String mnemonic, final String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet.TON>> subscribeOn = this.tonController.importWallet(StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet.TON>, Result<? extends Wallet>>() { // from class: com.iMe.storage.data.manager.crypto.blockchains.TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends Wallet> invoke(Result<? extends Wallet.TON> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                boolean z = result instanceof Result.Success;
                if (!z) {
                    if (result instanceof Result.Error) {
                        Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                        return error$default;
                    } else if (result instanceof Object) {
                        return result;
                    } else {
                        return null;
                    }
                }
                if (z) {
                    Result.Success success = (Result.Success) result;
                    BlockchainCryptoWalletManager.saveWalletToPrefs$default(TONBlockchainCryptoWalletManagerImpl.this, guid, ((Wallet.TON) success.getData()).getAddress(), mnemonic, password, false, 16, null);
                    result = Result.Companion.success(Wallet.TON.copy$default((Wallet.TON) success.getData(), guid, null, null, null, 14, null));
                }
                Intrinsics.checkNotNullExpressionValue(result, "if (result is Result.Suc… result\n                }");
                return result;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(final String guid, final String oldGuid, final String mnemonic, final String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet.TON>> subscribeOn = this.tonController.importWallet(StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet.TON>, Result<? extends Wallet>>() { // from class: com.iMe.storage.data.manager.crypto.blockchains.TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends Wallet> invoke(Result<? extends Wallet.TON> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                boolean z = result instanceof Result.Success;
                if (!z) {
                    if (result instanceof Result.Error) {
                        Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                        return error$default;
                    } else if (result instanceof Object) {
                        return result;
                    } else {
                        return null;
                    }
                }
                if (z) {
                    if (!Intrinsics.areEqual(guid, oldGuid)) {
                        this.rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, ((Wallet.TON) ((Result.Success) result).getData()).getAddress());
                    }
                    result = Result.Companion.success(Wallet.TON.copy$default((Wallet.TON) ((Result.Success) result).getData(), guid, null, null, null, 14, null));
                }
                Intrinsics.checkNotNullExpressionValue(result, "if (result is Result.Suc… result\n                }");
                return result;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateAddressByMnemonic(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable<Result<Wallet.TON>> subscribeOn = this.tonController.importWallet(StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet.TON>, Result<? extends String>>() { // from class: com.iMe.storage.data.manager.crypto.blockchains.TONBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$$inlined$mapSuccess$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends String> invoke(Result<? extends Wallet.TON> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result<? extends String> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                        return error$default;
                    } else if (result instanceof Object) {
                        return result;
                    } else {
                        return null;
                    }
                }
                Wallet.TON ton = (Wallet.TON) result.getData();
                String address = ton != null ? ton.getAddress() : null;
                if (address == null) {
                    address = "";
                }
                return Result.Companion.success(address);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> subscribeOn = this.tonController.isValidWalletAddress(address).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        return subscribeOn;
    }
}
