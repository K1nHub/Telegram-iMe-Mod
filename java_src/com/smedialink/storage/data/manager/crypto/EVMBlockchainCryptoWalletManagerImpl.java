package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.data.utils.crypto.CryptoWalletUtils;
import com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.Credentials;
import org.web3j.crypto.Keys;
import org.web3j.crypto.MnemonicUtils;
import org.web3j.crypto.WalletUtils;
/* compiled from: EVMBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
public final class EVMBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EVMBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        super(cryptoPreferenceHelper, BlockchainType.EVM);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable flatMap = generateMnemonic(guid, password).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1688x67d25efc(this, guid, password)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Credentials createBip44Wallet = CryptoWalletUtils.INSTANCE.createBip44Wallet(mnemonic);
        String checksumAddress = Keys.toChecksumAddress(createBip44Wallet.getAddress());
        Intrinsics.checkNotNullExpressionValue(checksumAddress, "toChecksumAddress(credentials.address)");
        BlockchainCryptoWalletManager.saveWalletToPrefs$default(this, guid, checksumAddress, mnemonic, password, false, 16, null);
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.EVM(guid, mnemonic, createBip44Wallet)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Credentials createBip44Wallet = CryptoWalletUtils.INSTANCE.createBip44Wallet(mnemonic);
        if (!Intrinsics.areEqual(guid, oldGuid)) {
            String checksumAddress = Keys.toChecksumAddress(createBip44Wallet.getAddress());
            Intrinsics.checkNotNullExpressionValue(checksumAddress, "toChecksumAddress(credentials.address)");
            rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, checksumAddress);
        }
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.EVM(guid, mnemonic, createBip44Wallet)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateAddressByMnemonic(final String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result generateAddressByMnemonic$lambda$1;
                generateAddressByMnemonic$lambda$1 = EVMBlockchainCryptoWalletManagerImpl.generateAddressByMnemonic$lambda$1(mnemonic);
                return generateAddressByMnemonic$lambda$1;
            }
        });
        final EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 eVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2 = EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2.INSTANCE;
        Observable<Result<String>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result generateAddressByMnemonic$lambda$2;
                generateAddressByMnemonic$lambda$2 = EVMBlockchainCryptoWalletManagerImpl.generateAddressByMnemonic$lambda$2(Function1.this, obj);
                return generateAddressByMnemonic$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateAddressByMnemonic$lambda$1(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "$mnemonic");
        return Result.Companion.success(Keys.toChecksumAddress(CryptoWalletUtils.INSTANCE.createBip44Wallet(mnemonic).getAddress()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateAddressByMnemonic$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateMnemonic(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable fromCallable = Observable.fromCallable(EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3.INSTANCE);
        final EVMBlockchainCryptoWalletManagerImpl$generateMnemonic$2 eVMBlockchainCryptoWalletManagerImpl$generateMnemonic$2 = EVMBlockchainCryptoWalletManagerImpl$generateMnemonic$2.INSTANCE;
        Observable<Result<String>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result generateMnemonic$lambda$4;
                generateMnemonic$lambda$4 = EVMBlockchainCryptoWalletManagerImpl.generateMnemonic$lambda$4(Function1.this, obj);
                return generateMnemonic$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateMnemonic$lambda$3() {
        return Result.Companion.success(MnemonicUtils.generateMnemonic(CryptoWalletUtils.generateNewEntropy$default(CryptoWalletUtils.INSTANCE, 0, 1, null)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result generateMnemonic$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.valueOf(WalletUtils.isValidAddress(address))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
