package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.smedialink.storage.domain.manager.ton.TonController;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TONBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
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

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet>> subscribeOn = this.tonController.createWallet(guid).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        return subscribeOn;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(final String guid, final String mnemonic, final String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet>> subscribeOn = this.tonController.importWallet(guid, StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new Function() { // from class: com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                boolean z = result instanceof Result.Success;
                if (z) {
                    if (z) {
                        BlockchainCryptoWalletManager.saveWalletToPrefs$default(TONBlockchainCryptoWalletManagerImpl.this, guid, ((Wallet) ((Result.Success) result).getData()).getAddress(), mnemonic, password, false, 16, null);
                        return result;
                    }
                    return result;
                } else if (result instanceof Result.Error) {
                    return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                } else {
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(final String guid, final String oldGuid, final String mnemonic, final String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet>> subscribeOn = this.tonController.importWallet(guid, StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new Function() { // from class: com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                boolean z = result instanceof Result.Success;
                if (!z) {
                    if (result instanceof Result.Error) {
                        return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    }
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                } else if (!z || Intrinsics.areEqual(guid, oldGuid)) {
                    return result;
                } else {
                    this.rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, ((Wallet) ((Result.Success) result).getData()).getAddress());
                    return result;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateAddressByMnemonic(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable<Result<Wallet>> subscribeOn = this.tonController.importWallet("", StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new Function() { // from class: com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    }
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
                Wallet wallet = (Wallet) result.getData();
                String address = wallet != null ? wallet.getAddress() : null;
                if (address == null) {
                    address = "";
                }
                return Result.Companion.success(address);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateMnemonic(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet>> subscribeOn = createWallet(guid, password).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "createWallet(guid, passw…(schedulersProvider.io())");
        Observable map = subscribeOn.map(new Function() { // from class: com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl$generateMnemonic$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    }
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
                Wallet.TON ton = (Wallet.TON) result.getData();
                String mnemonic = ton != null ? ton.getMnemonic() : null;
                if (mnemonic == null) {
                    mnemonic = "";
                }
                return Result.Companion.success(mnemonic);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> subscribeOn = this.tonController.isValidWalletAddress(address).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        return subscribeOn;
    }
}
