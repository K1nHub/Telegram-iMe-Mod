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
import java.util.concurrent.Callable;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.MnemonicUtils;
/* compiled from: CryptoLocalWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CryptoLocalWalletRepositoryImpl implements CryptoLocalWalletRepository {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ApiErrorHandler errorHandler;
    private final CryptoWalletsManager walletManager;

    /* compiled from: CryptoLocalWalletRepositoryImpl.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            try {
                iArr[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BlockchainType.TRON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlockchainType.TON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

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
    public Observable<Result<Wallet>> createWallet(String guid, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.walletManager.createWallet(guid, password, blockchainType).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1792x33bae8b9(this, password)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1791x26a9e708(this.errorHandler)));
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
            Observable<Result<List<Wallet>>> map = ((Observable) CollectionsKt.first((List<? extends Object>) arrayList2)).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1797x36424441(this, password)));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        }
        final CryptoLocalWalletRepositoryImpl$unlockAllWallets$2 cryptoLocalWalletRepositoryImpl$unlockAllWallets$2 = new CryptoLocalWalletRepositoryImpl$unlockAllWallets$2(this, password);
        Observable<Result<List<Wallet>>> zip = Observable.zip(arrayList2, new Function() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result unlockAllWallets$lambda$5;
                unlockAllWallets$lambda$5 = CryptoLocalWalletRepositoryImpl.unlockAllWallets$lambda$5(Function1.this, obj);
                return unlockAllWallets$lambda$5;
            }
        });
        Intrinsics.checkNotNullExpressionValue(zip, "override fun unlockAllWa…        }\n        }\n    }");
        return zip;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result unlockAllWallets$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<String>> generateMnemonic(String guid, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.walletManager.generateMnemonic(guid, password, blockchainType);
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
    public Observable<Result<Boolean>> isValidSeed(final String seed, BlockchainType blockchainType) {
        Observable fromCallable;
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i == 1 || i == 2) {
            fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Result isValidSeed$lambda$6;
                    isValidSeed$lambda$6 = CryptoLocalWalletRepositoryImpl.isValidSeed$lambda$6(seed);
                    return isValidSeed$lambda$6;
                }
            });
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            Observable<Result<String>> generateAddressByMnemonic = this.walletManager.generateAddressByMnemonic(seed, blockchainType);
            final CryptoLocalWalletRepositoryImpl$isValidSeed$2 cryptoLocalWalletRepositoryImpl$isValidSeed$2 = CryptoLocalWalletRepositoryImpl$isValidSeed$2.INSTANCE;
            fromCallable = generateAddressByMnemonic.map(new Function() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result isValidSeed$lambda$7;
                    isValidSeed$lambda$7 = CryptoLocalWalletRepositoryImpl.isValidSeed$lambda$7(Function1.this, obj);
                    return isValidSeed$lambda$7;
                }
            });
        }
        final CryptoLocalWalletRepositoryImpl$isValidSeed$3 cryptoLocalWalletRepositoryImpl$isValidSeed$3 = CryptoLocalWalletRepositoryImpl$isValidSeed$3.INSTANCE;
        Observable<Result<Boolean>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidSeed$lambda$8;
                isValidSeed$lambda$8 = CryptoLocalWalletRepositoryImpl.isValidSeed$lambda$8(Function1.this, obj);
                return isValidSeed$lambda$8;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "when (blockchainType) {\n…urn { false.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidSeed$lambda$6(String seed) {
        Intrinsics.checkNotNullParameter(seed, "$seed");
        return Result.Companion.success(Boolean.valueOf(MnemonicUtils.validateMnemonic(seed)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidSeed$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidSeed$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidRestoredAddress(String seed, String linkedAddress, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(linkedAddress, "linkedAddress");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> flatMap = isValidSeed(seed, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1795x2157d0e9(this, seed, blockchainType, linkedAddress)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        final CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2 cryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2 = CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2.INSTANCE;
        Observable<Result<Boolean>> onErrorReturn = flatMap.onErrorReturn(new Function() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidRestoredAddress$lambda$11;
                isValidRestoredAddress$lambda$11 = CryptoLocalWalletRepositoryImpl.isValidRestoredAddress$lambda$11(Function1.this, obj);
                return isValidRestoredAddress$lambda$11;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "isValidSeed(seed, blockc…urn { false.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidRestoredAddress$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Wallet>> importWallet(String guid, String seed, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.walletManager.importWallet(guid, seed, password, blockchainType).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1794x966593e2(this, password)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1793x1954a0ff(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
