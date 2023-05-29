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

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> createWallet() {
        Observable<Result<Wallet>> subscribeOn = this.tonController.createWallet().subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        return subscribeOn;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> importWallet(String guid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet.TON>> subscribeOn = this.tonController.importWallet(StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1826xa78c6f83(this, guid, mnemonic, password)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Wallet>> unlockWallet(String guid, String oldGuid, String mnemonic, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Wallet.TON>> subscribeOn = this.tonController.importWallet(StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1827x643346a2(guid, oldGuid, this, mnemonic, password)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<String>> generateAddressByMnemonic(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable<Result<Wallet.TON>> subscribeOn = this.tonController.importWallet(StringExtKt.splitBySpace(mnemonic)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        Observable map = subscribeOn.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1825xcf4b3e2d()));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager
    public Observable<Result<Boolean>> isValidAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable<Result<Boolean>> subscribeOn = this.tonController.isValidWalletAddress(address).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonController\n          …(schedulersProvider.io())");
        return subscribeOn;
    }
}
