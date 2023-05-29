package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.crypto.CryptoWalletsManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoLocalWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CryptoLocalWalletRepositoryImpl implements CryptoLocalWalletRepository {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ApiErrorHandler errorHandler;
    private final CryptoWalletsManager walletManager;

    public CryptoLocalWalletRepositoryImpl(CryptoPreferenceHelper cryptoPreferenceHelper, CryptoAccessManager cryptoAccessManager, CryptoWalletsManager walletManager, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(walletManager, "walletManager");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoAccessManager = cryptoAccessManager;
        this.walletManager = walletManager;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Wallet>> createWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Wallet>> onErrorReturn = this.walletManager.createWallet(blockchainType).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1861x26a9e708(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<List<Wallet>>> unlockAllWallets(String oldGuid, String newGuid, String password) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(oldGuid, "oldGuid");
        Intrinsics.checkNotNullParameter(newGuid, "newGuid");
        Intrinsics.checkNotNullParameter(password, "password");
        BlockchainType[] values = BlockchainType.values();
        ArrayList<BlockchainType> arrayList = new ArrayList();
        for (BlockchainType blockchainType : values) {
            if (this.cryptoPreferenceHelper.getWalletSeeds().getData().keySet().contains(blockchainType.name())) {
                arrayList.add(blockchainType);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (BlockchainType blockchainType2 : arrayList) {
            arrayList2.add(this.walletManager.unlockWallet(newGuid, oldGuid, CryptoExtKt.safeAesDecrypt(this.cryptoPreferenceHelper.getWalletSeedByGuid(oldGuid, blockchainType2), password), password, blockchainType2));
        }
        if (CollectionExtKt.isSingletonList(arrayList2)) {
            Observable<Result<List<Wallet>>> map = ((Observable) CollectionsKt.first((List<? extends Object>) arrayList2)).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1866x36424441(this, password)));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        }
        final CryptoLocalWalletRepositoryImpl$unlockAllWallets$2 cryptoLocalWalletRepositoryImpl$unlockAllWallets$2 = new CryptoLocalWalletRepositoryImpl$unlockAllWallets$2(this, password);
        Observable<Result<List<Wallet>>> zip = Observable.zip(arrayList2, new Function() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result unlockAllWallets$lambda$4;
                unlockAllWallets$lambda$4 = CryptoLocalWalletRepositoryImpl.unlockAllWallets$lambda$4(Function1.this, obj);
                return unlockAllWallets$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(zip, "override fun unlockAllWa…        }\n        }\n    }");
        return zip;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result unlockAllWallets$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidAddress(String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.walletManager.isValidAddress(address, blockchainType);
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidPasswordForWallet(String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletSeeds().getDataByBlockchain(blockchainType);
        if (dataByBlockchain == null) {
            dataByBlockchain = "";
        }
        return isValidSeed(CryptoExtKt.safeAesDecrypt(dataByBlockchain, password), blockchainType);
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidSeed(String seed, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable flatMap = this.walletManager.generateAddressByMnemonic(seed, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1865xf78a2b72(this, blockchainType)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidRestoredAddress(String seed, String linkedAddress, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(linkedAddress, "linkedAddress");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable map = this.walletManager.generateAddressByMnemonic(seed, blockchainType).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1864x41e0c8d0(linkedAddress)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Wallet>> importWallet(String guid, String seed, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.walletManager.importWallet(guid, seed, password, blockchainType).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1863x966593e2(this, password)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1862x1954a0ff(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
