package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
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
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
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
        Observable<Result<Wallet>> createWallet = this.walletManager.createWallet(blockchainType);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Wallet>> onErrorReturn = createWallet.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Wallet>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$createWallet$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Wallet> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<List<Wallet>>> unlockAllWallets(String oldGuid, String newGuid, final String password) {
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
            Observable<Result<List<Wallet>>> map = ((Observable) CollectionsKt.first((List<? extends Object>) arrayList2)).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet>, Result<? extends List<? extends Wallet>>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public final Result<? extends List<? extends Wallet>> invoke(Result<? extends Wallet> result) {
                    CryptoAccessManager cryptoAccessManager;
                    List listOf;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            Result<? extends List<? extends Wallet>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                            return error$default;
                        } else if (result instanceof Object) {
                            return result;
                        } else {
                            return null;
                        }
                    }
                    Object data = result.getData();
                    Intrinsics.checkNotNull(data);
                    Wallet wallet2 = (Wallet) data;
                    cryptoAccessManager = CryptoLocalWalletRepositoryImpl.this.cryptoAccessManager;
                    cryptoAccessManager.setWallet(wallet2, password);
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(wallet2);
                    return Result.Companion.success(listOf);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        }
        final Function1<Object[], Result<? extends List<? extends Wallet>>> function1 = new Function1<Object[], Result<? extends List<? extends Wallet>>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$unlockAllWallets$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<Wallet>> invoke(Object[] results) {
                int collectionSizeOrDefault2;
                CryptoAccessManager cryptoAccessManager;
                Intrinsics.checkNotNullParameter(results, "results");
                ArrayList<Result.Success> arrayList3 = new ArrayList();
                for (Object obj : results) {
                    if (obj instanceof Result.Success) {
                        arrayList3.add(obj);
                    }
                }
                CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl = CryptoLocalWalletRepositoryImpl.this;
                String str = password;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
                ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
                for (Result.Success success : arrayList3) {
                    Wallet wallet2 = (Wallet) success.getData();
                    cryptoAccessManager = cryptoLocalWalletRepositoryImpl.cryptoAccessManager;
                    cryptoAccessManager.setWallet(wallet2, str);
                    arrayList4.add(wallet2);
                }
                return Result.Companion.success(arrayList4);
            }
        };
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
    public Observable<Result<String>> getPasswordByPinCodeWithValidation(String pinCode, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        final String safeAesDecrypt = CryptoExtKt.safeAesDecrypt(this.cryptoPreferenceHelper.getWalletPassword(), pinCode);
        Observable map = isValidPasswordForWallet(safeAesDecrypt, blockchainType).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$getPasswordByPinCodeWithValidation$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends String> invoke(Result<? extends Boolean> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result<? extends String> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                        return error$default;
                    } else if (result instanceof Object) {
                        return result;
                    } else {
                        return null;
                    }
                } else if (Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
                    return Result.Companion.success(safeAesDecrypt);
                } else {
                    return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
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
    public Observable<Result<Boolean>> isValidSeed(String seed, final BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable flatMap = this.walletManager.generateAddressByMnemonic(seed, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$isValidSeed$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl = CryptoLocalWalletRepositoryImpl.this;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                return cryptoLocalWalletRepositoryImpl.isValidAddress(data, blockchainType);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Wallet>> importWallet(String guid, String seed, final String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.walletManager.importWallet(guid, seed, password, blockchainType).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet>, Result<? extends Wallet>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends Wallet> invoke(Result<? extends Wallet> result) {
                CryptoAccessManager cryptoAccessManager;
                Intrinsics.checkNotNullParameter(result, "result");
                boolean z = result instanceof Result.Success;
                if (z) {
                    if (z) {
                        cryptoAccessManager = CryptoLocalWalletRepositoryImpl.this.cryptoAccessManager;
                        cryptoAccessManager.setWallet((Wallet) ((Result.Success) result).getData(), password);
                        return result;
                    }
                    return result;
                } else if (result instanceof Result.Error) {
                    Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                    return error$default;
                } else if (result instanceof Object) {
                    return result;
                } else {
                    return null;
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Wallet>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Wallet>>() { // from class: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$importWallet$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Wallet> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
