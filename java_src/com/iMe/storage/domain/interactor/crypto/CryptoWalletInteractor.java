package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.Mnemonic;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoLocalWalletRepository cryptoLocalWalletRepository;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletRepository cryptoWalletRepository;
    private final PinCodeInteractor pinCodeInteractor;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    private final Observable<Result<Wallet>> withAllBip39BasedWalletsActivationCheck(Observable<Result<Wallet>> observable, BlockchainType blockchainType) {
        Observable flatMap = observable.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1971xc8c5d4ec(blockchainType, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    public CryptoWalletInteractor(CryptoLocalWalletRepository cryptoLocalWalletRepository, CryptoWalletRepository cryptoWalletRepository, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, PinCodeInteractor pinCodeInteractor, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoLocalWalletRepository, "cryptoLocalWalletRepository");
        Intrinsics.checkNotNullParameter(cryptoWalletRepository, "cryptoWalletRepository");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(pinCodeInteractor, "pinCodeInteractor");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoLocalWalletRepository = cryptoLocalWalletRepository;
        this.cryptoWalletRepository = cryptoWalletRepository;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.pinCodeInteractor = pinCodeInteractor;
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
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (this.cryptoAccessManager.isAnyWalletCreated()) {
            generateUuid = this.cryptoPreferenceHelper.getLastLoggedInGuid();
        } else {
            generateUuid = CryptoExtKt.generateUuid();
        }
        Observable<R> flatMap = this.cryptoLocalWalletRepository.importWallet(generateUuid, seed, password, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = flatMap.subscribeOn(this.schedulersProvider.mo699io());
        if (!(pinCode.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "importWalletObservable");
            finalObservable = getCreatePinCodeObservable(pinCode, password, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = withAllBip39BasedWalletsActivationCheck(doOnNext, blockchainType).startWith((Observable<Result<Wallet>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "finalObservable\n        …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Wallet>> recreateWallet(String password, String pinCode, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        String generateUuid = CryptoExtKt.generateUuid();
        Observable<R> map = this.cryptoLocalWalletRepository.unlockAllWallets(this.cryptoAccessManager.getLastLoggedInGuid(), generateUuid, password).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1(blockchainType)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = map.subscribeOn(this.schedulersProvider.mo699io());
        if (!(pinCode.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "unlockWalletsObservable");
            finalObservable = getCreatePinCodeObservable(pinCode, password, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$recreateWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = withAllBip39BasedWalletsActivationCheck(doOnNext, blockchainType).startWith((Observable<Result<Wallet>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "finalObservable\n        …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Wallet>> activateBip39BasedWallet(BlockchainType blockchainType) {
        List<? extends BlockchainType> listOf;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(blockchainType);
        Observable flatMap = importBib39BasedWallets(listOf).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1963xfb32ecc7()));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    public final Observable<Result<String>> getLinkedCryptoWalletAddress(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1966xc1cdc982(blockchainType)));
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
        Observable<List<String>> fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda2
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

    public final Observable<Result<Boolean>> isValidRestoredAddress(String seed, String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidRestoredAddress(seed, address, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
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

    public final Observable<Result<Boolean>> deleteWallet(BlockchainType blockchainType, boolean z, boolean z2) {
        Observable<Result<Boolean>> just;
        NetworkType[] values;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (!z) {
            just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        } else {
            CryptoWalletRepository cryptoWalletRepository = this.cryptoWalletRepository;
            for (NetworkType networkType : NetworkType.values()) {
                if (networkType.getBlockchainType() == blockchainType) {
                    just = cryptoWalletRepository.unlinkWallet(networkType);
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        Observable<R> flatMap = just.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1(this, blockchainType)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable doOnNext = flatMap.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1(z2, this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = doOnNext.startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "observable\n             …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable deleteAllWallets$default(CryptoWalletInteractor cryptoWalletInteractor, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return cryptoWalletInteractor.deleteAllWallets(z);
    }

    public final Observable<Result<Boolean>> deleteAllWallets(boolean z) {
        int collectionSizeOrDefault;
        Observable finalObservable;
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
            arrayList2.add(deleteWallet(blockchainType2, z, false));
        }
        if (CollectionExtKt.isSingletonList(arrayList2)) {
            finalObservable = (Observable) CollectionsKt.first((List<? extends Object>) arrayList2);
        } else {
            final CryptoWalletInteractor$deleteAllWallets$finalObservable$1 cryptoWalletInteractor$deleteAllWallets$finalObservable$1 = CryptoWalletInteractor$deleteAllWallets$finalObservable$1.INSTANCE;
            finalObservable = Observable.zip(arrayList2, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result deleteAllWallets$lambda$14;
                    deleteAllWallets$lambda$14 = CryptoWalletInteractor.deleteAllWallets$lambda$14(Function1.this, obj);
                    return deleteAllWallets$lambda$14;
                }
            });
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Boolean>> doOnNext = finalObservable.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1964x5e7d6f0b(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        return doOnNext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result deleteAllWallets$lambda$14(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
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
            Observable<R> flatMap = this.cryptoLocalWalletRepository.importWallet(this.cryptoPreferenceHelper.getLastLoggedInGuid(), mnemonic, walletPassword, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1967xe8447d17(this)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            arrayList.add(flatMap.subscribeOn(this.schedulersProvider.mo699io()));
        }
        final CryptoWalletInteractor$importBib39BasedWallets$2 cryptoWalletInteractor$importBib39BasedWallets$2 = CryptoWalletInteractor$importBib39BasedWallets$2.INSTANCE;
        Observable<Result<List<Wallet>>> subscribeOn = Observable.zip(arrayList, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result importBib39BasedWallets$lambda$18;
                importBib39BasedWallets$lambda$18 = CryptoWalletInteractor.importBib39BasedWallets$lambda$18(Function1.this, obj);
                return importBib39BasedWallets$lambda$18;
            }
        }).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "zip(\n                   …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result importBib39BasedWallets$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    private final Observable<Result<Wallet>> getCreatePinCodeObservable(String str, String str2, String str3, Observable<Result<Wallet>> observable) {
        Observable flatMap = this.pinCodeInteractor.createPinCode(str, str2, str3).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1965x237bf90a(observable)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Wallet>> linkWalletAddressWithCheck(Wallet wallet2) {
        Observable<R> flatMap = getLinkedCryptoWalletAddress(wallet2.getBlockchainType()).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1968xffacd658(this, wallet2)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable map = flatMap.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1969x3cb7ddbf(wallet2)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = map.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "getLinkedCryptoWalletAdd…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAddressChanged(String str, Wallet wallet2) {
        return !Intrinsics.areEqual(str, wallet2.getAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.Observable<com.iMe.storage.domain.model.Result<java.lang.Boolean>> unlinkWalletIfNeed(java.lang.String r1, com.iMe.storage.domain.model.crypto.NetworkType r2) {
        /*
            r0 = this;
            if (r1 == 0) goto Lb
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L9
            goto Lb
        L9:
            r1 = 0
            goto Lc
        Lb:
            r1 = 1
        Lc:
            if (r1 == 0) goto L20
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            com.iMe.storage.domain.model.Result$Companion r2 = com.iMe.storage.domain.model.Result.Companion
            com.iMe.storage.domain.model.Result r1 = r2.success(r1)
            io.reactivex.Observable r1 = io.reactivex.Observable.just(r1)
            java.lang.String r2 = "just(this)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            goto L26
        L20:
            com.iMe.storage.domain.repository.crypto.CryptoWalletRepository r1 = r0.cryptoWalletRepository
            io.reactivex.Observable r1 = r1.unlinkWallet(r2)
        L26:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor.unlinkWalletIfNeed(java.lang.String, com.iMe.storage.domain.model.crypto.NetworkType):io.reactivex.Observable");
    }
}
