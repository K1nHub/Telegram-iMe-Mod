package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.data.utils.crypto.CryptoWalletUtils;
import com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.Credentials;
import org.web3j.crypto.Keys;
import org.web3j.crypto.MnemonicUtils;
import org.web3j.crypto.WalletUtils;
/* compiled from: EVMBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
public final class EVMBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: generateAddressByMnemonic$lambda-2  reason: not valid java name */
    public static final Result m1299generateAddressByMnemonic$lambda2(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: generateMnemonic$lambda-4  reason: not valid java name */
    public static final Result m1301generateMnemonic$lambda4(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success("");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EVMBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        super(cryptoPreferenceHelper, BlockchainType.EVM);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet(final String guid, final String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable flatMap = generateMnemonic(guid, password).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$createWallet$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                EVMBlockchainCryptoWalletManagerImpl eVMBlockchainCryptoWalletManagerImpl = EVMBlockchainCryptoWalletManagerImpl.this;
                String str = guid;
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                return eVMBlockchainCryptoWalletManagerImpl.importWallet(str, (String) data, password);
            }
        });
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
        Observable<Result<String>> onErrorReturn = Observable.fromCallable(new Callable() { // from class: com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result m1298generateAddressByMnemonic$lambda1;
                m1298generateAddressByMnemonic$lambda1 = EVMBlockchainCryptoWalletManagerImpl.m1298generateAddressByMnemonic$lambda1(mnemonic);
                return m1298generateAddressByMnemonic$lambda1;
            }
        }).onErrorReturn(EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: generateAddressByMnemonic$lambda-1  reason: not valid java name */
    public static final Result m1298generateAddressByMnemonic$lambda1(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "$mnemonic");
        return Result.Companion.success(Keys.toChecksumAddress(CryptoWalletUtils.INSTANCE.createBip44Wallet(mnemonic).getAddress()));
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateMnemonic(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<String>> onErrorReturn = Observable.fromCallable(EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda3.INSTANCE).onErrorReturn(EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …MPTY_STRING.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: generateMnemonic$lambda-3  reason: not valid java name */
    public static final Result m1300generateMnemonic$lambda3() {
        return Result.Companion.success(MnemonicUtils.generateMnemonic(CryptoWalletUtils.generateNewEntropy$default(CryptoWalletUtils.INSTANCE, 0, 1, null)));
    }

    @Override // com.smedialink.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.valueOf(WalletUtils.isValidAddress(address))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
