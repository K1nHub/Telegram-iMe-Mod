package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.CryptoLocalWalletRepository;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extensions.CryptoExtKt;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
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
        Observable<Result<Wallet>> subscribeOn = this.cryptoLocalWalletRepository.createWallet(blockchainType).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Wallet>> importWallet(String seed, String password, String pinCode, final BlockchainType blockchainType) {
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
        Observable<R> flatMap = this.cryptoLocalWalletRepository.importWallet(generateUuid, seed, password, blockchainType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet>, ObservableSource<? extends Result<? extends Wallet>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends Wallet> result) {
                List listOfNotNull;
                Observable linkWalletsWithCheck;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                CryptoWalletInteractor cryptoWalletInteractor = CryptoWalletInteractor.this;
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(result.getData());
                linkWalletsWithCheck = cryptoWalletInteractor.linkWalletsWithCheck(listOfNotNull);
                Observable map = linkWalletsWithCheck.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends List<? extends Wallet>>, Result<? extends Wallet>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$lambda$2$$inlined$mapSuccess$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends Wallet> invoke(Result<? extends List<? extends Wallet>> result2) {
                        Wallet wallet2;
                        Result<? extends Wallet> success;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result<? extends Wallet> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                                return error$default2;
                            } else if (result2 instanceof Object) {
                                return result2;
                            } else {
                                return null;
                            }
                        }
                        List list = (List) result2.getData();
                        return (list == null || (wallet2 = (Wallet) CollectionsKt.firstOrNull((List<? extends Object>) list)) == null || (success = Result.Companion.success(wallet2)) == null) ? Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null) : success;
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        Observable doOnNext = subscribeOn.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Wallet>, Unit>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<? extends Wallet> result) {
                RxEventBus rxEventBus;
                if (result instanceof Result.Success) {
                    rxEventBus = CryptoWalletInteractor.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.WalletRestored.INSTANCE);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        Observable flatMap2 = doOnNext.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Wallet>, ObservableSource<? extends Result<? extends Wallet>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Wallet>> invoke(final Result<? extends Wallet> result) {
                Observable activateAllBip39BasedWallets;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                } else if (!BlockchainType.this.isBip39PhraseBased()) {
                    Observable just = Observable.just(result);
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                } else {
                    activateAllBip39BasedWallets = this.activateAllBip39BasedWallets();
                    final Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends Wallet>>> function1 = new Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends Wallet>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importWallet$4$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final ObservableSource<? extends Result<Wallet>> invoke(Result<? extends List<? extends Wallet>> it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            Observable just2 = Observable.just(result);
                            Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                            return just2;
                        }
                    };
                    Observable flatMap3 = activateAllBip39BasedWallets.flatMap(new Function(function1) { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$sam$io_reactivex_functions_Function$0
                        private final /* synthetic */ Function1 function;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            Intrinsics.checkNotNullParameter(function1, "function");
                            this.function = function1;
                        }

                        @Override // io.reactivex.functions.Function
                        public final /* synthetic */ Object apply(Object obj) {
                            return this.function.invoke(obj);
                        }
                    });
                    schedulersProvider = this.schedulersProvider;
                    Observable subscribeOn2 = flatMap3.subscribeOn(schedulersProvider.mo1014io());
                    Intrinsics.checkNotNullExpressionValue(subscribeOn2, "result ->\n              …r.io())\n                }");
                    return subscribeOn2;
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Wallet>> subscribeOn2 = flatMap2.startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn2, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn2;
    }

    public final Observable<Result<Wallet>> activateBip39BasedWallet(BlockchainType blockchainType) {
        List<? extends BlockchainType> listOf;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(blockchainType);
        Observable flatMap = importBib39BasedWallets(listOf).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends Wallet>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$activateBip39BasedWallet$$inlined$flatMapSuccess$1
            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends List<? extends Wallet>> result) {
                Result error$default;
                Wallet wallet2;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default2);
                    }
                    return Observable.empty();
                }
                List<? extends Wallet> data = result.getData();
                if (data == null || (wallet2 = (Wallet) CollectionsKt.firstOrNull((List<? extends Object>) data)) == null || (error$default = Result.Companion.success(wallet2)) == null) {
                    error$default = Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.NOT_DEFINED, (Throwable) null, 2, (DefaultConstructorMarker) null), null, 2, null);
                }
                Observable just = Observable.just(error$default);
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    public final Observable<Result<Map<BlockchainType, String>>> getLinkedWalletsAddresses() {
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends CryptoWalletsInfo>, ObservableSource<? extends Result<? extends Map<BlockchainType, ? extends String>>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$getLinkedWalletsAddresses$$inlined$flatMapSuccess$1
            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Map<BlockchainType, ? extends String>>> invoke(Result<? extends CryptoWalletsInfo> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                CryptoWalletsInfo data = result.getData();
                Map<BlockchainType, String> walletsAddresses = data != null ? data.getWalletsAddresses() : null;
                if (walletsAddresses == null) {
                    walletsAddresses = MapsKt__MapsKt.emptyMap();
                }
                Observable just = Observable.just(Result.Companion.success(walletsAddresses));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Map<BlockchainType, String>>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> isValidPasswordForWallet(String password, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidPasswordForWallet(password, blockchainType).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoLocalWalletReposit…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<List<String>> getMnemonicWordsSuggestions(final String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        Observable<List<String>> fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda10
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List mnemonicWordsSuggestions$lambda$7;
                mnemonicWordsSuggestions$lambda$7 = CryptoWalletInteractor.getMnemonicWordsSuggestions$lambda$7(query);
                return mnemonicWordsSuggestions$lambda$7;
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromCallable, "fromCallable {\n         …  else listOf()\n        }");
        return fromCallable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getMnemonicWordsSuggestions$lambda$7(String query) {
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
        Observable<Result<Boolean>> subscribeOn = this.cryptoLocalWalletRepository.isValidSeed(seed, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
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
    public static final Unit deleteWallet$lambda$8(CryptoWalletInteractor this$0, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        this$0.cryptoAccessManager.deleteWallet(blockchainType);
        return Unit.INSTANCE;
    }

    public final Observable<Result<Boolean>> deleteWallet(final BlockchainType blockchainType, final boolean z, final boolean z2) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit deleteWallet$lambda$8;
                deleteWallet$lambda$8 = CryptoWalletInteractor.deleteWallet$lambda$8(CryptoWalletInteractor.this, blockchainType);
                return deleteWallet$lambda$8;
            }
        });
        final Function1<Unit, ObservableSource<? extends Result<? extends Boolean>>> function1 = new Function1<Unit, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<Boolean>> invoke(Unit it) {
                CryptoWalletRepository cryptoWalletRepository;
                Intrinsics.checkNotNullParameter(it, "it");
                cryptoWalletRepository = CryptoWalletInteractor.this.cryptoWalletRepository;
                return cryptoWalletRepository.clearTokensData(blockchainType);
            }
        };
        Observable flatMap = fromCallable.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteWallet$lambda$9;
                deleteWallet$lambda$9 = CryptoWalletInteractor.deleteWallet$lambda$9(Function1.this, obj);
                return deleteWallet$lambda$9;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "fun deleteWallet(\n      …(schedulersProvider.io())");
        Observable doOnNext = flatMap.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<? extends Boolean> result) {
                RxEventBus rxEventBus;
                if ((result instanceof Result.Success) && z2) {
                    rxEventBus = this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.WalletReset.INSTANCE);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        final Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> function12 = new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
                return invoke2((Result<Boolean>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<Boolean>> invoke2(Result<Boolean> it) {
                CryptoWalletRepository cryptoWalletRepository;
                Intrinsics.checkNotNullParameter(it, "it");
                if (!z) {
                    Observable just = Observable.just(it);
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                cryptoWalletRepository = this.cryptoWalletRepository;
                Observable<Result<Boolean>> unlinkWallet = cryptoWalletRepository.unlinkWallet(blockchainType);
                final boolean z3 = z2;
                final CryptoWalletInteractor cryptoWalletInteractor = this;
                Observable<Result<Boolean>> doOnNext2 = unlinkWallet.doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$4$invoke$$inlined$doOnSuccessNext$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                        invoke2(result);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(Result<? extends Boolean> result) {
                        RxEventBus rxEventBus;
                        if (result instanceof Result.Success) {
                            Objects.requireNonNull(result, "null cannot be cast to non-null type com.iMe.storage.domain.model.Result<kotlin.Boolean>");
                            if (z3) {
                                rxEventBus = cryptoWalletInteractor.rxEventBus;
                                rxEventBus.publish(DomainRxEvents.WalletReset.INSTANCE);
                            }
                        }
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(doOnNext2, "crossinline body: (T) ->…ult as T)\n        }\n    }");
                return doOnNext2;
            }
        };
        Observable<Result<Boolean>> subscribeOn = doOnNext.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteWallet$lambda$11;
                deleteWallet$lambda$11 = CryptoWalletInteractor.deleteWallet$lambda$11(Function1.this, obj);
                return deleteWallet$lambda$11;
            }
        }).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun deleteWallet(\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteWallet$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteWallet$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Observable<Result<Boolean>> deleteAllWallets() {
        int collectionSizeOrDefault;
        final Observable zip;
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
            final CryptoWalletInteractor$deleteAllWallets$finalObservable$1 cryptoWalletInteractor$deleteAllWallets$finalObservable$1 = new Function1<Object[], Result<? extends Boolean>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteAllWallets$finalObservable$1
                @Override // kotlin.jvm.functions.Function1
                public final Result<Boolean> invoke(Object[] results) {
                    boolean z;
                    Intrinsics.checkNotNullParameter(results, "results");
                    int length = results.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        } else if (results[i] instanceof Result.Loading) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (z) {
                        return Result.Companion.loading$default(Result.Companion, null, 1, null);
                    }
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : results) {
                        if (obj instanceof Result.Success) {
                            arrayList3.add(obj);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj2 : arrayList3) {
                        if (((Boolean) ((Result.Success) obj2).getData()).booleanValue()) {
                            arrayList4.add(obj2);
                        }
                    }
                    return Result.Companion.success(Boolean.valueOf(arrayList4.size() == results.length));
                }
            };
            zip = Observable.zip(arrayList2, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result deleteAllWallets$lambda$14;
                    deleteAllWallets$lambda$14 = CryptoWalletInteractor.deleteAllWallets$lambda$14(Function1.this, obj);
                    return deleteAllWallets$lambda$14;
                }
            });
        }
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit deleteAllWallets$lambda$15;
                deleteAllWallets$lambda$15 = CryptoWalletInteractor.deleteAllWallets$lambda$15(CryptoWalletInteractor.this);
                return deleteAllWallets$lambda$15;
            }
        });
        final Function1<Unit, ObservableSource<? extends Result<? extends Boolean>>> function1 = new Function1<Unit, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteAllWallets$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<Boolean>> invoke(Unit it) {
                CryptoWalletRepository cryptoWalletRepository;
                Intrinsics.checkNotNullParameter(it, "it");
                cryptoWalletRepository = CryptoWalletInteractor.this.cryptoWalletRepository;
                return cryptoWalletRepository.clearAllTokensData();
            }
        };
        Observable flatMap = fromCallable.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteAllWallets$lambda$16;
                deleteAllWallets$lambda$16 = CryptoWalletInteractor.deleteAllWallets$lambda$16(Function1.this, obj);
                return deleteAllWallets$lambda$16;
            }
        });
        final Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> function12 = new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteAllWallets$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<Boolean>> invoke2(Result<Boolean> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return zip;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
                return invoke2((Result<Boolean>) result);
            }
        };
        Observable<Result<Boolean>> subscribeOn = flatMap.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource deleteAllWallets$lambda$17;
                deleteAllWallets$lambda$17 = CryptoWalletInteractor.deleteAllWallets$lambda$17(Function1.this, obj);
                return deleteAllWallets$lambda$17;
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun deleteAllWallets(): …ulersProvider.io())\n    }");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result deleteAllWallets$lambda$14(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteAllWallets$lambda$15(CryptoWalletInteractor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cryptoAccessManager.deleteAllWallets();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteAllWallets$lambda$16(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource deleteAllWallets$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Completable rewriteDataWithNewPin(final String newPinCode) {
        Intrinsics.checkNotNullParameter(newPinCode, "newPinCode");
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                CryptoWalletInteractor.rewriteDataWithNewPin$lambda$18(CryptoWalletInteractor.this, newPinCode);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction {\n           …e\n            )\n        }");
        return fromAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void rewriteDataWithNewPin$lambda$18(CryptoWalletInteractor this$0, String newPinCode) {
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
        final String walletPassword = this.cryptoAccessManager.getWalletPassword();
        Wallet wallet2 = this.cryptoAccessManager.getWallet(this.cryptoAccessManager.getFirstBip39PhraseBasedBlockchainType());
        String mnemonic = wallet2 != null ? wallet2.getMnemonic() : null;
        if (mnemonic == null) {
            mnemonic = "";
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BlockchainType blockchainType : list) {
            arrayList.add(this.cryptoLocalWalletRepository.importWallet(this.cryptoPreferenceHelper.getLastLoggedInGuid(), mnemonic, walletPassword, blockchainType).subscribeOn(this.schedulersProvider.mo1014io()));
        }
        final CryptoWalletInteractor$importBib39BasedWallets$2 cryptoWalletInteractor$importBib39BasedWallets$2 = new Function1<Object[], Result<? extends List<? extends Wallet>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importBib39BasedWallets$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<List<Wallet>> invoke(Object[] results) {
                boolean z;
                int collectionSizeOrDefault2;
                Intrinsics.checkNotNullParameter(results, "results");
                int length = results.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    } else if (results[i] instanceof Result.Loading) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (z) {
                    return Result.Companion.loading$default(Result.Companion, null, 1, null);
                }
                ArrayList<Result.Success> arrayList2 = new ArrayList();
                for (Object obj : results) {
                    if (obj instanceof Result.Success) {
                        arrayList2.add(obj);
                    }
                }
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                for (Result.Success success : arrayList2) {
                    arrayList3.add((Wallet) success.getData());
                }
                return Result.Companion.success(arrayList3);
            }
        };
        Observable zip = Observable.zip(arrayList, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result importBib39BasedWallets$lambda$20;
                importBib39BasedWallets$lambda$20 = CryptoWalletInteractor.importBib39BasedWallets$lambda$20(Function1.this, obj);
                return importBib39BasedWallets$lambda$20;
            }
        });
        Intrinsics.checkNotNullExpressionValue(zip, "zip(\n                blo…          }\n            }");
        Observable flatMap = zip.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends List<? extends Wallet>>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importBib39BasedWallets$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends Wallet>>> invoke(Result<? extends List<? extends Wallet>> result) {
                Observable linkWalletsWithCheck;
                SchedulersProvider schedulersProvider;
                CryptoAccessManager cryptoAccessManager;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                List<? extends Wallet> data = result.getData();
                if (data == null) {
                    data = CollectionsKt__CollectionsKt.emptyList();
                }
                for (Wallet wallet3 : data) {
                    cryptoAccessManager = CryptoWalletInteractor.this.cryptoAccessManager;
                    cryptoAccessManager.setWallet(wallet3, walletPassword);
                }
                linkWalletsWithCheck = CryptoWalletInteractor.this.linkWalletsWithCheck(data);
                schedulersProvider = CryptoWalletInteractor.this.schedulersProvider;
                Observable subscribeOn = linkWalletsWithCheck.subscribeOn(schedulersProvider.mo1014io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "linkWalletsWithCheck(wal…(schedulersProvider.io())");
                return subscribeOn;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<List<Wallet>>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "zip(\n                blo…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result importBib39BasedWallets$lambda$20(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<Wallet>>> linkWalletsWithCheck(final List<? extends Wallet> list) {
        Observable<R> flatMap = getLinkedCryptoWalletAddresses().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Map<BlockchainType, ? extends String>>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Map<BlockchainType, ? extends String>> result) {
                int collectionSizeOrDefault;
                Observable unlinkWalletsIfNeeded;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                Map<BlockchainType, ? extends String> data = result.getData();
                if (data == null) {
                    data = MapsKt__MapsKt.emptyMap();
                }
                List list2 = list;
                final ArrayList arrayList = new ArrayList();
                for (Object obj : list2) {
                    Wallet wallet2 = (Wallet) obj;
                    if (true ^ Intrinsics.areEqual(wallet2.getAddress(), data.get(wallet2.getBlockchainType()))) {
                        arrayList.add(obj);
                    }
                }
                if (!(!arrayList.isEmpty())) {
                    Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                ArrayList<Wallet> arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    String str = data.get(((Wallet) obj2).getBlockchainType());
                    if (!(str == null || str.length() == 0)) {
                        arrayList2.add(obj2);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                for (Wallet wallet3 : arrayList2) {
                    arrayList3.add(wallet3.getBlockchainType());
                }
                unlinkWalletsIfNeeded = this.unlinkWalletsIfNeeded(arrayList3);
                final CryptoWalletInteractor cryptoWalletInteractor = this;
                Observable flatMap2 = unlinkWalletsIfNeeded.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$lambda$30$$inlined$flatMapSuccess$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result2) {
                        CryptoWalletRepository cryptoWalletRepository;
                        int collectionSizeOrDefault2;
                        int mapCapacity;
                        int coerceAtLeast;
                        SchedulersProvider schedulersProvider2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                                return Observable.just(error$default2);
                            }
                            return Observable.empty();
                        }
                        cryptoWalletRepository = CryptoWalletInteractor.this.cryptoWalletRepository;
                        List<Wallet> list3 = arrayList;
                        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
                        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
                        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                        for (Wallet wallet4 : list3) {
                            Pair m149to = TuplesKt.m149to(wallet4.getBlockchainType(), wallet4.getPublicKey());
                            linkedHashMap.put(m149to.getFirst(), m149to.getSecond());
                        }
                        Observable<Result<Boolean>> linkWallets = cryptoWalletRepository.linkWallets(linkedHashMap);
                        final List list4 = arrayList;
                        final CryptoWalletInteractor cryptoWalletInteractor2 = CryptoWalletInteractor.this;
                        Observable<R> flatMap3 = linkWallets.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$lambda$30$lambda$29$$inlined$flatMapAnyError$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result3) {
                                CryptoAccessManager cryptoAccessManager;
                                Intrinsics.checkNotNullParameter(result3, "result");
                                if (result3 instanceof Result.Success) {
                                    return Observable.just(result3);
                                }
                                if (!(result3 instanceof Result.Error)) {
                                    return Observable.empty();
                                }
                                ((Result.Error) result3).getError();
                                for (Wallet wallet5 : list4) {
                                    cryptoAccessManager = cryptoWalletInteractor2.cryptoAccessManager;
                                    cryptoAccessManager.deleteWallet(wallet5.getBlockchainType());
                                }
                                Observable just2 = Observable.just(result3);
                                Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                                return just2;
                            }
                        }));
                        Intrinsics.checkNotNullExpressionValue(flatMap3, "crossinline body: (T, Er…e.empty()\n        }\n    }");
                        schedulersProvider2 = CryptoWalletInteractor.this.schedulersProvider;
                        Observable subscribeOn = flatMap3.subscribeOn(schedulersProvider2.mo1014io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
                        return subscribeOn;
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                schedulersProvider = this.schedulersProvider;
                Observable subscribeOn = flatMap2.subscribeOn(schedulersProvider.mo1014io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                    va…r.io())\n                }");
                return subscribeOn;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable map = flatMap.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends List<? extends Wallet>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends List<? extends Wallet>> invoke(Result<? extends Boolean> result) {
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
                return Result.Companion.success(list);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<List<Wallet>>> subscribeOn = map.subscribeOn(this.schedulersProvider.mo1014io());
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
        final CryptoWalletInteractor$unlinkWalletsIfNeeded$2 cryptoWalletInteractor$unlinkWalletsIfNeeded$2 = new Function1<Object[], Result<? extends Boolean>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$unlinkWalletsIfNeeded$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Object[] results) {
                boolean z;
                Intrinsics.checkNotNullParameter(results, "results");
                int length = results.length;
                boolean z2 = false;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    } else if (results[i] instanceof Result.Loading) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (z) {
                    return Result.Companion.loading$default(Result.Companion, null, 1, null);
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : results) {
                    if (obj instanceof Result.Success) {
                        arrayList2.add(obj);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    Iterator it = arrayList2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((Boolean) ((Result.Success) it.next()).getData()).booleanValue()) {
                                z2 = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                return Result.Companion.success(Boolean.valueOf(z2));
            }
        };
        Observable<Result<Boolean>> subscribeOn = Observable.zip(arrayList, new Function() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result unlinkWalletsIfNeeded$lambda$33;
                unlinkWalletsIfNeeded$lambda$33 = CryptoWalletInteractor.unlinkWalletsIfNeeded$lambda$33(Function1.this, obj);
                return unlinkWalletsIfNeeded$lambda$33;
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "zip(\n                blo…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result unlinkWalletsIfNeeded$lambda$33(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    private final Observable<Result<Map<BlockchainType, String>>> getLinkedCryptoWalletAddresses() {
        Observable<R> flatMap = this.cryptoWalletRepository.getLinkedCryptoWalletInfo().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends CryptoWalletsInfo>, ObservableSource<? extends Result<? extends Map<BlockchainType, ? extends String>>>>() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$getLinkedCryptoWalletAddresses$$inlined$flatMapSuccess$1
            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Map<BlockchainType, ? extends String>>> invoke(Result<? extends CryptoWalletsInfo> result) {
                int mapCapacity;
                int coerceAtLeast;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                BlockchainType[] values = BlockchainType.values();
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (BlockchainType blockchainType : values) {
                    CryptoWalletsInfo data = result.getData();
                    String addressByBlockchain = data != null ? data.getAddressByBlockchain(blockchainType) : null;
                    if (addressByBlockchain == null) {
                        addressByBlockchain = "";
                    }
                    linkedHashMap.put(blockchainType, addressByBlockchain);
                }
                Observable just = Observable.just(Result.Companion.success(linkedHashMap));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Map<BlockchainType, String>>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
