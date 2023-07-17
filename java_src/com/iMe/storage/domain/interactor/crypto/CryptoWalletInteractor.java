package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import wallet.core.jni.Mnemonic;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoLocalWalletRepository cryptoLocalWalletRepository;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletRepository cryptoWalletRepository;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    public CryptoWalletInteractor(CryptoAccessManager cryptoAccessManager, CryptoLocalWalletRepository cryptoLocalWalletRepository, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletRepository cryptoWalletRepository, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoLocalWalletRepository, "cryptoLocalWalletRepository");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletRepository, "cryptoWalletRepository");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoLocalWalletRepository = cryptoLocalWalletRepository;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletRepository = cryptoWalletRepository;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<Wallet>> createLocalWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Wallet>> subscribeOn = this.cryptoLocalWalletRepository.createWallet(blockchainType).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Wallet>> importWallet(String seed, String password, String pinCode, BlockchainType blockchainType) {
        String generateUuid;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (this.cryptoAccessManager.isAnyWalletCreated()) {
            generateUuid = this.cryptoPreferenceHelper.getLastLoggedInGuid();
        } else {
            generateUuid = CryptoExtKt.generateUuid();
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(pinCode);
        if (!isBlank) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
            cryptoPreferenceHelper.setLastLoggedInGuid(generateUuid);
            cryptoPreferenceHelper.setWalletPassword(com.iMe.storage.data.utils.extentions.CryptoExtKt.aesEncrypt(password, pinCode));
            cryptoPreferenceHelper.setLocalEncryptionCompleted(true);
        }
        Observable<R> flatMap = this.cryptoLocalWalletRepository.importWallet(generateUuid, seed, password, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        Observable doOnNext = subscribeOn.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable flatMap2 = doOnNext.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$2(blockchainType, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn2 = flatMap2.startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn2, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn2;
    }

    public final Observable<Result<Wallet>> activateBip39BasedWallet(BlockchainType blockchainType) {
        List<? extends BlockchainType> listOf;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(blockchainType);
        Observable flatMap = importBib39BasedWallets(listOf).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1968xfb32ecc7()));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    public final Observable<Result<String>> getLinkedCryptoWalletAddress(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1970xc1cdc982(blockchainType)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> isValidPasswordForWallet(String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidPasswordForWallet(password, blockchainType).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<List<String>> getMnemonicWordsSuggestions(final String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        Observable<List<String>> fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda10
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List mnemonicWordsSuggestions$lambda$8;
                mnemonicWordsSuggestions$lambda$8 = CryptoWalletInteractor.getMnemonicWordsSuggestions$lambda$8(query);
                return mnemonicWordsSuggestions$lambda$8;
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromCallable, "fromCallable {\n         …se listOf()\n            }");
        return fromCallable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getMnemonicWordsSuggestions$lambda$8(String query) {
        List emptyList;
        Intrinsics.checkNotNullParameter(query, "$query");
        String words = Mnemonic.suggest(query);
        Intrinsics.checkNotNullExpressionValue(words, "words");
        if (words.length() > 0) {
            return StringExtKt.splitBySpace(words);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    public final Observable<Result<Boolean>> isValidAddress(String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.cryptoLocalWalletRepository.isValidAddress(address, blockchainType);
    }

    public final Observable<Result<Boolean>> isValidSeed(String seed, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidSeed(seed, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable deleteWallet$default(CryptoWalletInteractor cryptoWalletInteractor, BlockchainType blockchainType, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return cryptoWalletInteractor.deleteWallet(blockchainType, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteWallet$lambda$9(CryptoWalletInteractor this$0, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        this$0.cryptoAccessManager.deleteWallet(blockchainType);
        return Unit.INSTANCE;
    }

    public final Observable<Result<Boolean>> deleteWallet(final BlockchainType blockchainType, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit deleteWallet$lambda$9;
                deleteWallet$lambda$9 = CryptoWalletInteractor.deleteWallet$lambda$9(CryptoWalletInteractor.this, blockchainType);
                return deleteWallet$lambda$9;
            }
        });
        final CryptoWalletInteractor$deleteWallet$2 cryptoWalletInteractor$deleteWallet$2 = new CryptoWalletInteractor$deleteWallet$2(this, blockchainType);
        Observable flatMap = fromCallable.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteWallet$lambda$10;
                deleteWallet$lambda$10 = CryptoWalletInteractor.deleteWallet$lambda$10(Function1.this, obj);
                return deleteWallet$lambda$10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "fun deleteWallet(\n      …(schedulersProvider.io())");
        Observable doOnNext = flatMap.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1(z2, this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        final CryptoWalletInteractor$deleteWallet$4 cryptoWalletInteractor$deleteWallet$4 = new CryptoWalletInteractor$deleteWallet$4(z, this, blockchainType, z2);
        Observable<Result<Boolean>> subscribeOn = doOnNext.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteWallet$lambda$12;
                deleteWallet$lambda$12 = CryptoWalletInteractor.deleteWallet$lambda$12(Function1.this, obj);
                return deleteWallet$lambda$12;
            }
        }).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun deleteWallet(\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteWallet$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteWallet$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Observable<Result<Boolean>> deleteAllWallets() {
        int collectionSizeOrDefault;
        Observable zip;
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
            arrayList2.add(this.cryptoWalletRepository.unlinkWallet(blockchainType2));
        }
        if (CollectionExtKt.isSingletonList(arrayList2)) {
            zip = (Observable) CollectionsKt.first((List<? extends Object>) arrayList2);
        } else {
            final CryptoWalletInteractor$deleteAllWallets$finalObservable$1 cryptoWalletInteractor$deleteAllWallets$finalObservable$1 = CryptoWalletInteractor$deleteAllWallets$finalObservable$1.INSTANCE;
            zip = Observable.zip(arrayList2, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result deleteAllWallets$lambda$15;
                    deleteAllWallets$lambda$15 = CryptoWalletInteractor.deleteAllWallets$lambda$15(Function1.this, obj);
                    return deleteAllWallets$lambda$15;
                }
            });
        }
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit deleteAllWallets$lambda$16;
                deleteAllWallets$lambda$16 = CryptoWalletInteractor.deleteAllWallets$lambda$16(CryptoWalletInteractor.this);
                return deleteAllWallets$lambda$16;
            }
        });
        final CryptoWalletInteractor$deleteAllWallets$2 cryptoWalletInteractor$deleteAllWallets$2 = new CryptoWalletInteractor$deleteAllWallets$2(this);
        Observable flatMap = fromCallable.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteAllWallets$lambda$17;
                deleteAllWallets$lambda$17 = CryptoWalletInteractor.deleteAllWallets$lambda$17(Function1.this, obj);
                return deleteAllWallets$lambda$17;
            }
        });
        final CryptoWalletInteractor$deleteAllWallets$3 cryptoWalletInteractor$deleteAllWallets$3 = new CryptoWalletInteractor$deleteAllWallets$3(zip);
        Observable<Result<Boolean>> subscribeOn = flatMap.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteAllWallets$lambda$18;
                deleteAllWallets$lambda$18 = CryptoWalletInteractor.deleteAllWallets$lambda$18(Function1.this, obj);
                return deleteAllWallets$lambda$18;
            }
        }).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun deleteAllWallets(): …ulersProvider.io())\n    }");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result deleteAllWallets$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteAllWallets$lambda$16(CryptoWalletInteractor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cryptoAccessManager.deleteAllWallets();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteAllWallets$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteAllWallets$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Completable rewriteDataWithNewPin(final String newPinCode) {
        Intrinsics.checkNotNullParameter(newPinCode, "newPinCode");
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                CryptoWalletInteractor.rewriteDataWithNewPin$lambda$19(CryptoWalletInteractor.this, newPinCode);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction {\n           …          )\n            }");
        return fromAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void rewriteDataWithNewPin$lambda$19(CryptoWalletInteractor this$0, String newPinCode) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newPinCode, "$newPinCode");
        this$0.cryptoPreferenceHelper.setWalletPassword(com.iMe.storage.data.utils.extentions.CryptoExtKt.aesEncrypt(this$0.cryptoAccessManager.getWalletPassword(), newPinCode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<Wallet>>> activateAllBip39BasedWallets() {
        return importBib39BasedWallets(this.cryptoAccessManager.getUnactivatedBip39PhraseBasedBlockchainTypes());
    }

    private final Observable<Result<List<Wallet>>> importBib39BasedWallets(List<? extends BlockchainType> list) {
        int collectionSizeOrDefault;
        String walletPassword = this.cryptoAccessManager.getWalletPassword();
        Wallet wallet2 = this.cryptoAccessManager.getWallet(this.cryptoAccessManager.getFirstBip39PhraseBasedBlockchainType());
        String mnemonic = wallet2 != null ? wallet2.getMnemonic() : null;
        if (mnemonic == null) {
            mnemonic = "";
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BlockchainType blockchainType : list) {
            arrayList.add(this.cryptoLocalWalletRepository.importWallet(this.cryptoPreferenceHelper.getLastLoggedInGuid(), mnemonic, walletPassword, blockchainType).subscribeOn(this.schedulersProvider.mo699io()));
        }
        final CryptoWalletInteractor$importBib39BasedWallets$2 cryptoWalletInteractor$importBib39BasedWallets$2 = CryptoWalletInteractor$importBib39BasedWallets$2.INSTANCE;
        Observable zip = Observable.zip(arrayList, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result importBib39BasedWallets$lambda$21;
                importBib39BasedWallets$lambda$21 = CryptoWalletInteractor.importBib39BasedWallets$lambda$21(Function1.this, obj);
                return importBib39BasedWallets$lambda$21;
            }
        });
        Intrinsics.checkNotNullExpressionValue(zip, "zip(\n                   …      }\n                }");
        Observable flatMap = zip.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1972x2e0ed3d8(this, walletPassword)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<List<Wallet>>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "zip(\n                   …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result importBib39BasedWallets$lambda$21(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<Wallet>>> linkWalletsWithCheck(List<? extends Wallet> list) {
        Observable<R> flatMap = getLinkedCryptoWalletAddresses().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1974x20d82859(list, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable map = flatMap.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1975xbe965840(list)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<List<Wallet>>> subscribeOn = map.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "getLinkedCryptoWalletAdd…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> unlinkWalletsIfNeeded(List<? extends BlockchainType> list) {
        int collectionSizeOrDefault;
        if (list.isEmpty()) {
            Observable<Result<Boolean>> just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BlockchainType blockchainType : list) {
            arrayList.add(this.cryptoWalletRepository.unlinkWallet(blockchainType));
        }
        final CryptoWalletInteractor$unlinkWalletsIfNeeded$2 cryptoWalletInteractor$unlinkWalletsIfNeeded$2 = CryptoWalletInteractor$unlinkWalletsIfNeeded$2.INSTANCE;
        Observable<Result<Boolean>> subscribeOn = Observable.zip(arrayList, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result unlinkWalletsIfNeeded$lambda$34;
                unlinkWalletsIfNeeded$lambda$34 = CryptoWalletInteractor.unlinkWalletsIfNeeded$lambda$34(Function1.this, obj);
                return unlinkWalletsIfNeeded$lambda$34;
            }
        }).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "zip(\n                   …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result unlinkWalletsIfNeeded$lambda$34(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    private final Observable<Result<Map<BlockchainType, String>>> getLinkedCryptoWalletAddresses() {
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1971x1cad89b0()));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Map<BlockchainType, String>>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
