package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.data.utils.extentions.CollectionExtKt;
import com.smedialink.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.extentions.CryptoExtKt;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
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
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$getLinkedCryptoWalletAddress$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(result, "result");
                String str = null;
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                CryptoWalletInfo cryptoWalletInfo = (CryptoWalletInfo) result.getData();
                if (cryptoWalletInfo != null) {
                    cryptoPreferenceHelper = CryptoWalletInteractor.this.cryptoPreferenceHelper;
                    str = cryptoWalletInfo.getAddressByBlockchain(cryptoPreferenceHelper.getCurrentBlockchainType());
                }
                if (str == null) {
                    str = "";
                }
                Observable just = Observable.just(Result.Companion.success(str));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        });
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

    public final Observable<Result<Boolean>> deleteWallet(final BlockchainType blockchainType, boolean z) {
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
        Observable<R> flatMap = just.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                final CryptoWalletInteractor cryptoWalletInteractor = CryptoWalletInteractor.this;
                final BlockchainType blockchainType2 = blockchainType;
                Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$1$1
                    @Override // java.util.concurrent.Callable
                    public /* bridge */ /* synthetic */ Object call() {
                        call();
                        return Unit.INSTANCE;
                    }

                    @Override // java.util.concurrent.Callable
                    public final void call() {
                        CryptoAccessManager cryptoAccessManager;
                        cryptoAccessManager = CryptoWalletInteractor.this.cryptoAccessManager;
                        cryptoAccessManager.deleteWallet(blockchainType2);
                    }
                });
                final CryptoWalletInteractor cryptoWalletInteractor2 = CryptoWalletInteractor.this;
                Observable<R> flatMap2 = fromCallable.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$1$2
                    @Override // io.reactivex.functions.Function
                    public final ObservableSource<? extends Result<Boolean>> apply(Unit it) {
                        CryptoWalletRepository cryptoWalletRepository2;
                        Intrinsics.checkNotNullParameter(it, "it");
                        cryptoWalletRepository2 = CryptoWalletInteractor.this.cryptoWalletRepository;
                        return cryptoWalletRepository2.clearTokensData();
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap2, "fun deleteWallet(blockch…ulersProvider.io())\n    }");
                return flatMap2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable doOnNext = flatMap.doOnNext(new Consumer() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1
            /* JADX WARN: Incorrect types in method signature: (TT;)V */
            @Override // io.reactivex.functions.Consumer
            public final void accept(Result result) {
                RxEventBus rxEventBus;
                CryptoAccessManager cryptoAccessManager;
                if (result instanceof Result.Success) {
                    rxEventBus = CryptoWalletInteractor.this.rxEventBus;
                    cryptoAccessManager = CryptoWalletInteractor.this.cryptoAccessManager;
                    rxEventBus.publish(new DomainRxEvents.SuccessResetWallet(!cryptoAccessManager.isAnyWalletCreated()));
                }
            }
        });
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
        Observable<Result<Boolean>> zip = Observable.zip(arrayList2, CryptoWalletInteractor$$ExternalSyntheticLambda0.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(zip, "{\n            Observable…)\n            }\n        }");
        return zip;
    }

    private final Observable<Result<Wallet>> recreateWallet(String str, String str2, final BlockchainType blockchainType) {
        String generateUuid = CryptoExtKt.generateUuid();
        Observable<R> map = this.cryptoLocalWalletRepository.unlockAllWallets(this.cryptoAccessManager.getLastLoggedInGuid(), generateUuid, str).map(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                boolean z;
                Intrinsics.checkNotNullParameter(result, "result");
                Wallet wallet = null;
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
                List list = (List) data;
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    T next = it.next();
                    if (((Wallet) next).getBlockchainType() == BlockchainType.this) {
                        z = true;
                        continue;
                    } else {
                        z = false;
                        continue;
                    }
                    if (z) {
                        wallet = next;
                        break;
                    }
                }
                Wallet wallet2 = wallet;
                if (wallet2 == null) {
                    wallet2 = (Wallet) CollectionsKt.first((List<? extends Object>) list);
                }
                return Result.Companion.success(wallet2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = map.subscribeOn(this.schedulersProvider.mo708io());
        if (!(str2.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "unlockWalletsObservable");
            finalObservable = getCreatePinCodeObservable(str2, str, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new Consumer() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$recreateWallet$$inlined$doOnSuccessNext$1
            /* JADX WARN: Incorrect types in method signature: (TT;)V */
            @Override // io.reactivex.functions.Consumer
            public final void accept(Result result) {
                RxEventBus rxEventBus;
                if (result instanceof Result.Success) {
                    rxEventBus = CryptoWalletInteractor.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE);
                }
            }
        });
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
        Observable<R> flatMap = this.cryptoLocalWalletRepository.createWallet(generateUuid, str, blockchainType).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$createWallet$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Observable linkWalletAddressWithCheck;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                CryptoWalletInteractor cryptoWalletInteractor = CryptoWalletInteractor.this;
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                linkWalletAddressWithCheck = cryptoWalletInteractor.linkWalletAddressWithCheck((Wallet) data);
                return linkWalletAddressWithCheck;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        if (!(str2.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "createWalletObservable");
            finalObservable = getCreatePinCodeObservable(str2, str, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new Consumer() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1
            /* JADX WARN: Incorrect types in method signature: (TT;)V */
            @Override // io.reactivex.functions.Consumer
            public final void accept(Result result) {
                RxEventBus rxEventBus;
                if (result instanceof Result.Success) {
                    rxEventBus = CryptoWalletInteractor.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.SuccessCreateWallet.INSTANCE);
                }
            }
        });
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
        Observable<R> flatMap = this.cryptoLocalWalletRepository.importWallet(generateUuid, str2, str, blockchainType).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Observable linkWalletAddressWithCheck;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                CryptoWalletInteractor cryptoWalletInteractor = CryptoWalletInteractor.this;
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                linkWalletAddressWithCheck = cryptoWalletInteractor.linkWalletAddressWithCheck((Wallet) data);
                return linkWalletAddressWithCheck;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> finalObservable = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        if (!(str3.length() == 0)) {
            Intrinsics.checkNotNullExpressionValue(finalObservable, "importWalletObservable");
            finalObservable = getCreatePinCodeObservable(str3, str, generateUuid, finalObservable);
        }
        Intrinsics.checkNotNullExpressionValue(finalObservable, "finalObservable");
        Observable<Result<Wallet>> doOnNext = finalObservable.doOnNext(new Consumer() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1
            /* JADX WARN: Incorrect types in method signature: (TT;)V */
            @Override // io.reactivex.functions.Consumer
            public final void accept(Result result) {
                RxEventBus rxEventBus;
                if (result instanceof Result.Success) {
                    rxEventBus = CryptoWalletInteractor.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.SuccessRestoreWallet.INSTANCE);
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn = doOnNext.startWith((Observable<Result<Wallet>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "finalObservable\n        …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<Result<Wallet>> getCreatePinCodeObservable(String str, String str2, String str3, final Observable<Result<Wallet>> observable) {
        Observable flatMap = this.pinCodeInteractor.createPinCode(str, str2, str3).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$getCreatePinCodeObservable$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    return Observable.this;
                }
                return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Wallet>> linkWalletAddressWithCheck(final Wallet wallet) {
        Observable<R> flatMap = getLinkedCryptoWalletAddress().flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                boolean isAddressChanged;
                Observable unlinkWalletIfNeed;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                String str = (String) result.getData();
                isAddressChanged = CryptoWalletInteractor.this.isAddressChanged(str, wallet);
                if (!isAddressChanged) {
                    Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                unlinkWalletIfNeed = CryptoWalletInteractor.this.unlinkWalletIfNeed(str);
                final CryptoWalletInteractor cryptoWalletInteractor = CryptoWalletInteractor.this;
                final Wallet wallet2 = wallet;
                Observable<R> flatMap2 = unlinkWalletIfNeed.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final ObservableSource apply(Result result2) {
                        CryptoWalletRepository cryptoWalletRepository;
                        CryptoPreferenceHelper cryptoPreferenceHelper;
                        SchedulersProvider schedulersProvider2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            return result2 instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null)) : Observable.empty();
                        }
                        cryptoWalletRepository = CryptoWalletInteractor.this.cryptoWalletRepository;
                        String address = wallet2.getAddress();
                        cryptoPreferenceHelper = CryptoWalletInteractor.this.cryptoPreferenceHelper;
                        NetworkType networkType = cryptoPreferenceHelper.getNetworkType();
                        Wallet wallet3 = wallet2;
                        Wallet.TON ton = wallet3 instanceof Wallet.TON ? (Wallet.TON) wallet3 : null;
                        Observable<Result<Boolean>> linkWallet = cryptoWalletRepository.linkWallet(address, networkType, ton != null ? CryptoExtKt.getUnarmoredPublicKey(ton) : null);
                        schedulersProvider2 = CryptoWalletInteractor.this.schedulersProvider;
                        Observable<Result<Boolean>> subscribeOn = linkWallet.subscribeOn(schedulersProvider2.mo708io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
                        return subscribeOn;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                schedulersProvider = CryptoWalletInteractor.this.schedulersProvider;
                Observable<R> subscribeOn = flatMap2.subscribeOn(schedulersProvider.mo708io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                      …                        }");
                return subscribeOn;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable map = flatMap.map(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
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
                return Result.Companion.success(Wallet.this);
            }
        });
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteAllWallets$lambda-8  reason: not valid java name */
    public static final Result m1394deleteAllWallets$lambda8(Object[] results) {
        Intrinsics.checkNotNullParameter(results, "results");
        ArrayList arrayList = new ArrayList();
        for (Object obj : results) {
            if (obj instanceof Result.Success) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((Boolean) ((Result.Success) obj2).getData()).booleanValue()) {
                arrayList2.add(obj2);
            }
        }
        return Result.Companion.success(Boolean.valueOf(arrayList2.size() == results.length));
    }
}
