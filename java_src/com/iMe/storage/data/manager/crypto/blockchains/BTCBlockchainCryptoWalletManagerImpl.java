package com.iMe.storage.data.manager.crypto.blockchains;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.CoinType;
import wallet.core.jni.HDWallet;
import wallet.core.jni.Mnemonic;
import wallet.core.jni.SegwitAddress;
/* compiled from: BTCBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
public final class BTCBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BTCBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        super(cryptoPreferenceHelper, BlockchainType.BITCOIN);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet() {
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.BTC("", new HDWallet(128, ""))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Wallet.BTC btc = new Wallet.BTC(guid, new HDWallet(mnemonic, ""));
        BlockchainCryptoWalletManager.saveWalletToPrefs$default(this, guid, btc.getAddress(), mnemonic, password, false, 16, null);
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(btc));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Wallet.BTC btc = new Wallet.BTC(guid, new HDWallet(mnemonic, ""));
        if (!Intrinsics.areEqual(guid, oldGuid)) {
            rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, btc.getAddress());
        }
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(btc));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidMnemonic$lambda$0(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "$mnemonic");
        return Result.Companion.success(Boolean.valueOf(Mnemonic.isValid(mnemonic)));
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidMnemonic(final String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.crypto.blockchains.BTCBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result isValidMnemonic$lambda$0;
                isValidMnemonic$lambda$0 = BTCBlockchainCryptoWalletManagerImpl.isValidMnemonic$lambda$0(mnemonic);
                return isValidMnemonic$lambda$0;
            }
        });
        final BTCBlockchainCryptoWalletManagerImpl$isValidMnemonic$2 bTCBlockchainCryptoWalletManagerImpl$isValidMnemonic$2 = new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.manager.crypto.blockchains.BTCBlockchainCryptoWalletManagerImpl$isValidMnemonic$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(Boolean.FALSE);
            }
        };
        Observable<Result<Boolean>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.crypto.blockchains.BTCBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidMnemonic$lambda$1;
                isValidMnemonic$lambda$1 = BTCBlockchainCryptoWalletManagerImpl.isValidMnemonic$lambda$1(Function1.this, obj);
                return isValidMnemonic$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable { Mnemonic.…urn { false.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidMnemonic$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        boolean isValidString;
        Intrinsics.checkNotNullParameter(address, "address");
        if (EnvironmentManager.INSTANCE.isProductionActive()) {
            isValidString = CoinType.BITCOIN.validate(address);
        } else {
            isValidString = SegwitAddress.isValidString(address);
        }
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.valueOf(isValidString)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
