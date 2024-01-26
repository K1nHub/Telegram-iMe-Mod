package com.iMe.storage.data.manager.crypto.blockchains;

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
/* compiled from: TRONBlockchainCryptoWalletManagerImpl.kt */
/* loaded from: classes3.dex */
public final class TRONBlockchainCryptoWalletManagerImpl extends BlockchainCryptoWalletManager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TRONBlockchainCryptoWalletManagerImpl(CryptoPreferenceHelper cryptoPreferenceHelper) {
        super(cryptoPreferenceHelper, BlockchainType.TRON);
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet() {
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(new Wallet.TRON("", new HDWallet(128, ""))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Wallet.TRON tron = new Wallet.TRON(guid, new HDWallet(mnemonic, ""));
        BlockchainCryptoWalletManager.saveWalletToPrefs$default(this, guid, tron.getAddress(), mnemonic, password, false, 16, null);
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(tron));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Wallet.TRON tron = new Wallet.TRON(guid, new HDWallet(mnemonic, ""));
        if (!Intrinsics.areEqual(guid, oldGuid)) {
            rewriteWalletToNewGuid(guid, oldGuid, mnemonic, password, tron.getAddress());
        }
        Observable<Result<Wallet>> just = Observable.just(Result.Companion.success(tron));
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
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.crypto.blockchains.TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result isValidMnemonic$lambda$0;
                isValidMnemonic$lambda$0 = TRONBlockchainCryptoWalletManagerImpl.isValidMnemonic$lambda$0(mnemonic);
                return isValidMnemonic$lambda$0;
            }
        });
        final TRONBlockchainCryptoWalletManagerImpl$isValidMnemonic$2 tRONBlockchainCryptoWalletManagerImpl$isValidMnemonic$2 = new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.manager.crypto.blockchains.TRONBlockchainCryptoWalletManagerImpl$isValidMnemonic$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(Boolean.FALSE);
            }
        };
        Observable<Result<Boolean>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.crypto.blockchains.TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidMnemonic$lambda$1;
                isValidMnemonic$lambda$1 = TRONBlockchainCryptoWalletManagerImpl.isValidMnemonic$lambda$1(Function1.this, obj);
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
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.valueOf(CoinType.TRON.validate(address))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
