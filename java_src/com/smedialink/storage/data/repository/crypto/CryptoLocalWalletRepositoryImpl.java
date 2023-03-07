package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.utils.extentions.CollectionExtKt;
import com.smedialink.storage.data.utils.extentions.CryptoExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.crypto.CryptoWalletsManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
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
            iArr[BlockchainType.EVM.ordinal()] = 1;
            iArr[BlockchainType.TON.ordinal()] = 2;
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

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Wallet>> createWallet(String guid, final String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.walletManager.createWallet(guid, password, blockchainType).map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$createWallet$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
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
                    return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                } else {
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
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
            Observable<Result<List<Wallet>>> map = ((Observable) CollectionsKt.first((List<? extends Object>) arrayList2)).map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
                @Override // io.reactivex.functions.Function
                public final Object apply(Result result) {
                    CryptoAccessManager cryptoAccessManager;
                    List listOf;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        }
                        if (result instanceof Object) {
                            return result;
                        }
                        return null;
                    }
                    Object data = result.getData();
                    Intrinsics.checkNotNull(data);
                    Wallet wallet = (Wallet) data;
                    cryptoAccessManager = CryptoLocalWalletRepositoryImpl.this.cryptoAccessManager;
                    cryptoAccessManager.setWallet(wallet, password);
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(wallet);
                    return Result.Companion.success(listOf);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        }
        Observable<Result<List<Wallet>>> zip = Observable.zip(arrayList2, new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result m1360unlockAllWallets$lambda7;
                m1360unlockAllWallets$lambda7 = CryptoLocalWalletRepositoryImpl.m1360unlockAllWallets$lambda7(CryptoLocalWalletRepositoryImpl.this, password, (Object[]) obj);
                return m1360unlockAllWallets$lambda7;
            }
        });
        Intrinsics.checkNotNullExpressionValue(zip, "{\n            Observable…)\n            }\n        }");
        return zip;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<String>> generateMnemonic(String guid, String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.walletManager.generateMnemonic(guid, password, blockchainType);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidAddress(String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.walletManager.isValidAddress(address, blockchainType);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidPasswordForWallet(String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        String dataByBlockchain = this.cryptoPreferenceHelper.getWalletSeeds().getDataByBlockchain(blockchainType);
        if (dataByBlockchain == null) {
            dataByBlockchain = "";
        }
        return isValidSeed(CryptoExtKt.safeAesDecrypt(dataByBlockchain, password), blockchainType);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidSeed(final String seed, BlockchainType blockchainType) {
        Observable fromCallable;
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i == 1) {
            fromCallable = Observable.fromCallable(new Callable() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Result m1358isValidSeed$lambda8;
                    m1358isValidSeed$lambda8 = CryptoLocalWalletRepositoryImpl.m1358isValidSeed$lambda8(seed);
                    return m1358isValidSeed$lambda8;
                }
            });
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            fromCallable = this.walletManager.generateAddressByMnemonic(seed, blockchainType).map(CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda1.INSTANCE);
        }
        Observable<Result<Boolean>> onErrorReturn = fromCallable.onErrorReturn(CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda3.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "when (blockchainType) {\n…urn { false.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isValidSeed$lambda-8  reason: not valid java name */
    public static final Result m1358isValidSeed$lambda8(String seed) {
        Intrinsics.checkNotNullParameter(seed, "$seed");
        return Result.Companion.success(Boolean.valueOf(MnemonicUtils.validateMnemonic(seed)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isValidSeed$lambda-9  reason: not valid java name */
    public static final Result m1359isValidSeed$lambda9(Result it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.valueOf(it.isSuccess()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isValidSeed$lambda-10  reason: not valid java name */
    public static final Result m1357isValidSeed$lambda10(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.FALSE);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Boolean>> isValidRestoredAddress(final String seed, final String linkedAddress, final BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(linkedAddress, "linkedAddress");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> flatMap = isValidSeed(seed, blockchainType).flatMap(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                CryptoWalletsManager cryptoWalletsManager;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                cryptoWalletsManager = CryptoLocalWalletRepositoryImpl.this.walletManager;
                Observable<Result<String>> generateAddressByMnemonic = cryptoWalletsManager.generateAddressByMnemonic(seed, blockchainType);
                final String str = linkedAddress;
                Observable<R> map = generateAddressByMnemonic.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$lambda-12$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Result result2) {
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                return Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                            }
                            if (result2 instanceof Object) {
                                return result2;
                            }
                            return null;
                        }
                        String str2 = str;
                        String str3 = (String) result2.getData();
                        if (str3 == null) {
                            str3 = "";
                        }
                        return Result.Companion.success(Boolean.valueOf(Intrinsics.areEqual(str2, str3)));
                    }
                });
                Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Boolean>> onErrorReturn = flatMap.onErrorReturn(CryptoLocalWalletRepositoryImpl$$ExternalSyntheticLambda2.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "isValidSeed(seed, blockc…urn { false.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isValidRestoredAddress$lambda-13  reason: not valid java name */
    public static final Result m1356isValidRestoredAddress$lambda13(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.FALSE);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository
    public Observable<Result<Wallet>> importWallet(String guid, String seed, final String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.walletManager.importWallet(guid, seed, password, blockchainType).map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
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
                    return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                } else {
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: unlockAllWallets$lambda-7  reason: not valid java name */
    public static final Result m1360unlockAllWallets$lambda7(CryptoLocalWalletRepositoryImpl this$0, String password, Object[] results) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(password, "$password");
        Intrinsics.checkNotNullParameter(results, "results");
        ArrayList<Result.Success> arrayList = new ArrayList();
        for (Object obj : results) {
            if (obj instanceof Result.Success) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Result.Success success : arrayList) {
            Wallet wallet = (Wallet) success.getData();
            this$0.cryptoAccessManager.setWallet(wallet, password);
            arrayList2.add(wallet);
        }
        return Result.Companion.success(arrayList2);
    }
}
