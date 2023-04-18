package com.iMe.storage.data.manager.crypto;

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
/* compiled from: EVMBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
public final class EVMBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EVMBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        super(cryptoPreferenceHelper, BlockchainType.EVM);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet() {
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.EVM("", new HDWallet(256, ""))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Wallet.EVM evm = new Wallet.EVM(guid, new HDWallet(mnemonic, ""));
        BlockchainCryptoWalletManager.saveWalletToPrefs$default(this, guid, evm.getAddress(), mnemonic, password, false, 16, null);
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(evm));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Wallet.EVM evm = new Wallet.EVM(guid, new HDWallet(mnemonic, ""));
        if (!Intrinsics.areEqual(guid, oldGuid)) {
            rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, evm.getAddress());
        }
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(evm));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateAddressByMnemonic(final String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result generateAddressByMnemonic$lambda$0;
                generateAddressByMnemonic$lambda$0 = EVMBlockchainCryptoWalletManagerImpl.generateAddressByMnemonic$lambda$0(mnemonic);
                return generateAddressByMnemonic$lambda$0;
            }
        });
        final EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 eVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 = EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2.INSTANCE;
        Observable<Result<String>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result generateAddressByMnemonic$lambda$1;
                generateAddressByMnemonic$lambda$1 = EVMBlockchainCryptoWalletManagerImpl.generateAddressByMnemonic$lambda$1(Function1.this, obj);
                return generateAddressByMnemonic$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateAddressByMnemonic$lambda$0(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "$mnemonic");
        return Result.Companion.success(new HDWallet(mnemonic, "").getAddressForCoin(CoinType.ETHEREUM));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateAddressByMnemonic$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.valueOf(CoinType.ETHEREUM.validate(address))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}