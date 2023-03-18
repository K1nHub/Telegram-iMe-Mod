package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.data.utils.extentions.CollectionExtKt;
import com.smedialink.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.extentions.CryptoExtKt;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
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

    public final Observable<Result<Wallet>> createWallet(String password, String pinCode, String guid, String seed, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        if (guid.length() > 0) {
            return recreateWallet(password, pinCode, blockchainType);
        }
        return seed.length() > 0 ? importWallet(password, seed, pinCode, blockchainType) : createWallet(password, pinCode, blockchainType);
    }

    public final Observable<Result<String>> getLinkedCryptoWalletAddress() {
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1835xc1cdc982(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> isPasswordForWallet(String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidPasswordForWallet(password, blockchainType).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> generateMnemonic(String guid, String password) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<String>> subscribeOn = this.cryptoLocalWalletRepository.generateMnemonic(guid, password, this.cryptoPreferenceHelper.getCurrentBlockchainType()).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> isValidAddress(String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return this.cryptoLocalWalletRepository.isValidAddress(address, blockchainType);
    }

    public final Observable<Result<Boolean>> isValidSeed(String seed, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidSeed(seed, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> isValidRestoredAddress(String seed, String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidRestoredAddress(seed, address, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable deleteWallet$default(CryptoWalletInteractor cryptoWalletInteractor, BlockchainType blockchainType, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return cryptoWalletInteractor.deleteWallet(blockchainType, z);
    }

    public final Observable<Result<Boolean>> deleteWallet(BlockchainType blockchainType, boolean z) {
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
                    just = cryptoWalletRepository.unlinkWallet(networkType, blockchainType);
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        Observable<R> flatMap = just.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1(this, blockchainType)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable doOnNext = flatMap.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = doOnNext.startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
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
            arrayList2.add(deleteWallet(blockchainType2, z));
        }
        if (CollectionExtKt.isSingletonList(arrayList2)) {
            return (Observable) CollectionsKt.first((List<? extends Object>) arrayList2);
        }
        final CryptoWalletInteractor$deleteAllWallets$1 cryptoWalletInteractor$deleteAllWallets$1 = CryptoWalletInteractor$deleteAllWallets$1.INSTANCE;
        Observable<Result<Boolean>> zip = Observable.zip(arrayList2, new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result deleteAllWallets$lambda$7;
                deleteAllWallets$lambda$7 = CryptoWalletInteractor.deleteAllWallets$lambda$7(Function1.this, obj);
                return deleteAllWallets$lambda$7;
            }
        });
        Intrinsics.checkNotNullExpressionValue(zip, "{\n            Observable…)\n            }\n        }");
        return zip;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result deleteAllWallets$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    private final Observable<Result<Wallet>> recreateWallet(String str, String str2, BlockchainType blockchainType) {
        String generateUuid = CryptoExtKt.generateUuid();
        Observable<R> map = this.cryptoLocalWalletRepository.unlockAllWallets(this.cryptoAccessManager.getLastLoggedInGuid(), generateUuid, str).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1(blockchainType)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = map.subscribeOn(this.schedulersProvider.mo708io());
        if (!(str2.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "unlockWalletsObservable");
            finalObservable = getCreatePinCodeObservable(str2, str, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$recreateWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = doOnNext.startWith((Observable<Result<Wallet>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "finalObservable\n        …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<Result<Wallet>> createWallet(String str, String str2, BlockchainType blockchainType) {
        String generateUuid;
        if (this.cryptoAccessManager.isAnyWalletCreated()) {
            generateUuid = this.cryptoPreferenceHelper.getLastLoggedInGuid();
        } else {
            generateUuid = CryptoExtKt.generateUuid();
        }
        Observable<R> flatMap = this.cryptoLocalWalletRepository.createWallet(generateUuid, str, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$createWallet$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        if (!(str2.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "createWalletObservable");
            finalObservable = getCreatePinCodeObservable(str2, str, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = doOnNext.startWith((Observable<Result<Wallet>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "finalObservable\n        …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<Result<Wallet>> importWallet(String str, String str2, String str3, BlockchainType blockchainType) {
        String generateUuid;
        if (this.cryptoAccessManager.isAnyWalletCreated()) {
            generateUuid = this.cryptoPreferenceHelper.getLastLoggedInGuid();
        } else {
            generateUuid = CryptoExtKt.generateUuid();
        }
        Observable<R> flatMap = this.cryptoLocalWalletRepository.importWallet(generateUuid, str2, str, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        if (!(str3.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "importWalletObservable");
            finalObservable = getCreatePinCodeObservable(str3, str, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1(this)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = doOnNext.startWith((Observable<Result<Wallet>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "finalObservable\n        …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<Result<Wallet>> getCreatePinCodeObservable(String str, String str2, String str3, Observable<Result<Wallet>> observable) {
        Observable flatMap = this.pinCodeInteractor.createPinCode(str, str2, str3).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1834x237bf90a(observable)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Wallet>> linkWalletAddressWithCheck(Wallet wallet) {
        Observable<R> flatMap = getLinkedCryptoWalletAddress().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1836xffacd658(this, wallet)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable map = flatMap.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1837x3cb7ddbf(wallet)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = map.subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "getLinkedCryptoWalletAdd…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAddressChanged(String str, Wallet wallet) {
        return !Intrinsics.areEqual(str, wallet.getAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.Observable<com.smedialink.storage.domain.model.Result<java.lang.Boolean>> unlinkWalletIfNeed(java.lang.String r3) {
        /*
            r2 = this;
            if (r3 == 0) goto Lb
            boolean r3 = kotlin.text.StringsKt.isBlank(r3)
            if (r3 == 0) goto L9
            goto Lb
        L9:
            r3 = 0
            goto Lc
        Lb:
            r3 = 1
        Lc:
            if (r3 == 0) goto L20
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            com.smedialink.storage.domain.model.Result$Companion r0 = com.smedialink.storage.domain.model.Result.Companion
            com.smedialink.storage.domain.model.Result r3 = r0.success(r3)
            io.reactivex.Observable r3 = io.reactivex.Observable.just(r3)
            java.lang.String r0 = "just(this)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            goto L30
        L20:
            com.smedialink.storage.domain.storage.CryptoPreferenceHelper r3 = r2.cryptoPreferenceHelper
            com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository r0 = r2.cryptoWalletRepository
            com.smedialink.storage.domain.model.crypto.NetworkType r1 = r3.getNetworkType()
            com.smedialink.storage.domain.model.crypto.BlockchainType r3 = r3.getCurrentBlockchainType()
            io.reactivex.Observable r3 = r0.unlinkWallet(r1, r3)
        L30:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor.unlinkWalletIfNeed(java.lang.String):io.reactivex.Observable");
    }
}
