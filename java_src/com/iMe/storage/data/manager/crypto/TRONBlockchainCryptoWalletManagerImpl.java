package com.iMe.storage.data.manager.crypto;

import com.iMe.storage.data.utils.crypto.CryptoEVMUtils;
import com.iMe.storage.data.utils.crypto.CryptoLibsLoader;
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
import org.web3j.crypto.Credentials;
import org.web3j.crypto.Keys;
import org.web3j.crypto.MnemonicUtils;
import wallet.core.jni.CoinType;
import wallet.core.jni.HDWallet;
/* compiled from: TRONBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
public final class TRONBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TRONBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        super(cryptoPreferenceHelper, BlockchainType.TRON);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        CryptoLibsLoader.INSTANCE.initTrustWalletCoreLibrary();
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.TRON(guid, new HDWallet(256, ""))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        HDWallet hDWallet = new HDWallet(mnemonic, "");
        String addressForCoin = hDWallet.getAddressForCoin(CoinType.TRON);
        Intrinsics.checkNotNullExpressionValue(addressForCoin, "wallet.getAddressForCoin(CoinType.TRON)");
        BlockchainCryptoWalletManager.saveWalletToPrefs$default(this, guid, addressForCoin, mnemonic, password, false, 16, null);
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.TRON(guid, hDWallet)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Credentials createBip44Wallet = CryptoEVMUtils.INSTANCE.createBip44Wallet(mnemonic);
        if (!Intrinsics.areEqual(guid, oldGuid)) {
            String checksumAddress = Keys.toChecksumAddress(createBip44Wallet.getAddress());
            Intrinsics.checkNotNullExpressionValue(checksumAddress, "toChecksumAddress(credentials.address)");
            rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, checksumAddress);
        }
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.TRON(guid, new HDWallet(mnemonic, ""))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateAddressByMnemonic(final String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.crypto.TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result generateAddressByMnemonic$lambda$0;
                generateAddressByMnemonic$lambda$0 = TRONBlockchainCryptoWalletManagerImpl.generateAddressByMnemonic$lambda$0(mnemonic);
                return generateAddressByMnemonic$lambda$0;
            }
        });
        final C1758x29f55e4 c1758x29f55e4 = C1758x29f55e4.INSTANCE;
        Observable<Result<String>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.crypto.TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result generateAddressByMnemonic$lambda$1;
                generateAddressByMnemonic$lambda$1 = TRONBlockchainCryptoWalletManagerImpl.generateAddressByMnemonic$lambda$1(Function1.this, obj);
                return generateAddressByMnemonic$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateAddressByMnemonic$lambda$0(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "$mnemonic");
        return Result.Companion.success(new HDWallet(mnemonic, "", true).getAddressForCoin(CoinType.TRON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateAddressByMnemonic$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateMnemonic(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable fromCallable = Observable.fromCallable(TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3.INSTANCE);
        final TRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2 tRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2 = TRONBlockchainCryptoWalletManagerImpl$generateMnemonic$2.INSTANCE;
        Observable<Result<String>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.crypto.TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result generateMnemonic$lambda$3;
                generateMnemonic$lambda$3 = TRONBlockchainCryptoWalletManagerImpl.generateMnemonic$lambda$3(Function1.this, obj);
                return generateMnemonic$lambda$3;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateMnemonic$lambda$2() {
        return Result.Companion.success(MnemonicUtils.generateMnemonic(CryptoEVMUtils.generateNewEntropy$default(CryptoEVMUtils.INSTANCE, 0, 1, null)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateMnemonic$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.valueOf(CoinType.TRON.validate(address))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
