package com.iMe.storage.domain.interactor.crypto.fragment;

import com.google.android.gms.common.util.Base64Utils;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TonTransactionPayload;
import com.iMe.storage.domain.model.crypto.ton.PremiumBuyTransactionParams;
import com.iMe.storage.domain.model.crypto.ton.PremiumPlan;
import com.iMe.storage.domain.model.crypto.ton.ProductBuyTransactionParams;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProduct;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProductsSortingType;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentSessionData;
import com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository;
import com.iMe.storage.domain.utils.extensions.CryptoExtKt;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* compiled from: TonFragmentInteractor.kt */
/* loaded from: classes3.dex */
public final class TonFragmentInteractor {
    private final CryptoAccessManager cryptoAccessManager;
    private final SchedulersProvider schedulersProvider;
    private final TonController tonController;
    private final TonFragmentRepository tonFragmentRepository;

    static {
        new Companion(null);
    }

    public TonFragmentInteractor(CryptoAccessManager cryptoAccessManager, SchedulersProvider schedulersProvider, TonController tonController, TonFragmentRepository tonFragmentRepository) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(tonController, "tonController");
        Intrinsics.checkNotNullParameter(tonFragmentRepository, "tonFragmentRepository");
        this.cryptoAccessManager = cryptoAccessManager;
        this.schedulersProvider = schedulersProvider;
        this.tonController = tonController;
        this.tonFragmentRepository = tonFragmentRepository;
    }

    public final Observable<Result<Boolean>> checkAndPrepareSession() {
        Observable<Result<Boolean>> sessionAuthState = this.tonFragmentRepository.getSessionAuthState();
        final Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> function1 = new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$checkAndPrepareSession$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
                return invoke2((Result<Boolean>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<Boolean>> invoke2(Result<Boolean> authStateResult) {
                Observable initSession;
                Observable initSession2;
                Intrinsics.checkNotNullParameter(authStateResult, "authStateResult");
                if (authStateResult instanceof Result.Error) {
                    IErrorStatus status = ((Result.Error) authStateResult).getError().getStatus();
                    boolean z = true;
                    if (status != FirebaseFunctionsErrorHandler.TonFragmentErrorStatus.NO_CURRENT_TON_CONNECT_SESSION_FOUND && status != FirebaseFunctionsErrorHandler.TonFragmentErrorStatus.NO_CURRENT_AUTHORIZATION_FOUND) {
                        z = false;
                    }
                    if (!z) {
                        Observable just = Observable.just(authStateResult);
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    }
                    initSession2 = TonFragmentInteractor.this.initSession();
                    return initSession2;
                } else if (!(authStateResult instanceof Result.Success)) {
                    Observable just2 = Observable.just(authStateResult);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    return just2;
                } else if (((Boolean) ((Result.Success) authStateResult).getData()).booleanValue()) {
                    Observable just3 = Observable.just(authStateResult);
                    Intrinsics.checkNotNullExpressionValue(just3, "just(this)");
                    return just3;
                } else {
                    initSession = TonFragmentInteractor.this.initSession();
                    return initSession;
                }
            }
        };
        Observable<Result<Boolean>> subscribeOn = sessionAuthState.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource checkAndPrepareSession$lambda$0;
                checkAndPrepareSession$lambda$0 = TonFragmentInteractor.checkAndPrepareSession$lambda$0(Function1.this, obj);
                return checkAndPrepareSession$lambda$0;
            }
        }).startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun checkAndPrepareSessi…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource checkAndPrepareSession$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Observable<Result<List<PremiumPlan>>> getPremiumPlans() {
        Observable<Result<List<PremiumPlan>>> subscribeOn = this.tonFragmentRepository.getPremiumPrices().subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonFragmentRepository\n  …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendPremiumGift(String username, int i) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<R> flatMap = getRecipientByUsername(username, i).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends PremiumBuyTransactionParams>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$sendPremiumGift$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends PremiumBuyTransactionParams>> invoke(Result<? extends String> result) {
                Observable preparePremiumBuyTransaction;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                TonFragmentInteractor tonFragmentInteractor = TonFragmentInteractor.this;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                preparePremiumBuyTransaction = tonFragmentInteractor.preparePremiumBuyTransaction(data);
                return preparePremiumBuyTransaction;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable flatMap2 = flatMap.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends PremiumBuyTransactionParams>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$sendPremiumGift$$inlined$flatMapSuccess$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends PremiumBuyTransactionParams> result) {
                TonController tonController;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                PremiumBuyTransactionParams data = result.getData();
                Intrinsics.checkNotNull(data);
                PremiumBuyTransactionParams premiumBuyTransactionParams = data;
                tonController = TonFragmentInteractor.this.tonController;
                Observable map = TonController.CC.sendTransaction$default(tonController, premiumBuyTransactionParams.getAddress(), premiumBuyTransactionParams.getAmount().longValue(), premiumBuyTransactionParams.getSeqno(), new TonTransactionPayload.Raw(premiumBuyTransactionParams.getPayload()), 0, 16, null).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, Result<? extends Boolean>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$sendPremiumGift$lambda$4$lambda$3$$inlined$mapSuccess$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends Boolean> invoke(Result<? extends String> result2) {
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result<? extends Boolean> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                                return error$default2;
                            } else if (result2 instanceof Object) {
                                return result2;
                            } else {
                                return null;
                            }
                        }
                        CharSequence charSequence = (CharSequence) result2.getData();
                        return Result.Companion.success(Boolean.valueOf(!(charSequence == null || charSequence.length() == 0)));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = flatMap2.subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "getRecipientByUsername(u…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TonFragmentProduct>>> getUsernames(TonFragmentProductsSortingType sortingType, String searchQuery) {
        Intrinsics.checkNotNullParameter(sortingType, "sortingType");
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        Observable<Result<List<TonFragmentProduct>>> subscribeOn = this.tonFragmentRepository.getUsernames(sortingType, searchQuery).startWith((Observable<Result<List<TonFragmentProduct>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonFragmentRepository\n  …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> buyProduct(String username, String price) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(price, "price");
        Observable<R> flatMap = prepareProductBuyTransaction(username, price).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends ProductBuyTransactionParams>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$buyProduct$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends ProductBuyTransactionParams> result) {
                TonController tonController;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                ProductBuyTransactionParams data = result.getData();
                Intrinsics.checkNotNull(data);
                ProductBuyTransactionParams productBuyTransactionParams = data;
                tonController = TonFragmentInteractor.this.tonController;
                Observable map = TonController.CC.sendTransaction$default(tonController, productBuyTransactionParams.getAddress(), productBuyTransactionParams.getAmount().longValue(), productBuyTransactionParams.getSeqno(), null, 0, 24, null).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, Result<? extends Boolean>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$buyProduct$lambda$7$lambda$6$$inlined$mapSuccess$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends Boolean> invoke(Result<? extends String> result2) {
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result<? extends Boolean> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                                return error$default2;
                            } else if (result2 instanceof Object) {
                                return result2;
                            } else {
                                return null;
                            }
                        }
                        CharSequence charSequence = (CharSequence) result2.getData();
                        return Result.Companion.success(Boolean.valueOf(!(charSequence == null || charSequence.length() == 0)));
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "prepareProductBuyTransac…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> initSession() {
        Observable<R> flatMap = this.tonFragmentRepository.getSessionData().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends TonFragmentSessionData>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends TonFragmentSessionData> result) {
                CryptoAccessManager cryptoAccessManager;
                String sessionMessage;
                TonController tonController;
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
                cryptoAccessManager = TonFragmentInteractor.this.cryptoAccessManager;
                final Wallet wallet2 = cryptoAccessManager.getWallet(BlockchainType.TON);
                if (wallet2 == null) {
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                TonFragmentInteractor tonFragmentInteractor = TonFragmentInteractor.this;
                String address = wallet2.getAddress();
                TonFragmentSessionData data = result.getData();
                String clientId = data != null ? data.getClientId() : null;
                if (clientId == null) {
                    clientId = "";
                }
                sessionMessage = tonFragmentInteractor.getSessionMessage("v3R2", address, clientId);
                byte[] bytes = sessionMessage.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                tonController = TonFragmentInteractor.this.tonController;
                Observable<Result<byte[]>> signData = tonController.signData(bytes);
                final TonFragmentInteractor tonFragmentInteractor2 = TonFragmentInteractor.this;
                Observable<R> flatMap2 = signData.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends byte[]>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends byte[]> result2) {
                        TonFragmentRepository tonFragmentRepository;
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
                        byte[] orEmpty = CryptoExtKt.orEmpty(result2.getData());
                        tonFragmentRepository = TonFragmentInteractor.this.tonFragmentRepository;
                        String encodeUrlSafe = Base64Utils.encodeUrlSafe(orEmpty);
                        Intrinsics.checkNotNullExpressionValue(encodeUrlSafe, "encodeUrlSafe(signatureBytes)");
                        String address2 = wallet2.getAddress();
                        String str = r3;
                        String encodeUrlSafe2 = Base64Utils.encodeUrlSafe(CryptoExtKt.hexToByteArray$default(wallet2.getPublicKey(), false, 1, null));
                        Intrinsics.checkNotNullExpressionValue(encodeUrlSafe2, "encodeUrlSafe(\n         …                        )");
                        Observable<Result<Boolean>> sendSessionSignature = tonFragmentRepository.sendSessionSignature(encodeUrlSafe, address2, str, encodeUrlSafe2);
                        schedulersProvider2 = TonFragmentInteractor.this.schedulersProvider;
                        Observable<Result<Boolean>> subscribeOn = sendSessionSignature.subscribeOn(schedulersProvider2.mo1011io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonFragmentRepository\n  …(schedulersProvider.io())");
                        return subscribeOn;
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                schedulersProvider = TonFragmentInteractor.this.schedulersProvider;
                Observable subscribeOn = flatMap2.subscribeOn(schedulersProvider.mo1011io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                    va…r.io())\n                }");
                return subscribeOn;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonFragmentRepository\n  …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final Observable<Result<String>> getRecipientByUsername(String str, int i) {
        Observable<Result<String>> subscribeOn = this.tonFragmentRepository.getRecipientByUsername(str, i).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "tonFragmentRepository\n  …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<PremiumBuyTransactionParams>> preparePremiumBuyTransaction(final String str) {
        Observable<byte[]> tonPublicKeyBytes = getTonPublicKeyBytes();
        final Function1<byte[], ObservableSource<? extends Result<? extends PremiumBuyTransactionParams>>> function1 = new Function1<byte[], ObservableSource<? extends Result<? extends PremiumBuyTransactionParams>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$preparePremiumBuyTransaction$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<PremiumBuyTransactionParams>> invoke(byte[] publicKeyBytes) {
                TonFragmentRepository tonFragmentRepository;
                Intrinsics.checkNotNullParameter(publicKeyBytes, "publicKeyBytes");
                tonFragmentRepository = TonFragmentInteractor.this.tonFragmentRepository;
                String str2 = str;
                String encodeUrlSafe = Base64Utils.encodeUrlSafe(publicKeyBytes);
                Intrinsics.checkNotNullExpressionValue(encodeUrlSafe, "encodeUrlSafe(publicKeyBytes)");
                return tonFragmentRepository.preparePremiumBuyTransaction(str2, encodeUrlSafe);
            }
        };
        Observable<Result<PremiumBuyTransactionParams>> subscribeOn = tonPublicKeyBytes.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource preparePremiumBuyTransaction$lambda$10;
                preparePremiumBuyTransaction$lambda$10 = TonFragmentInteractor.preparePremiumBuyTransaction$lambda$10(Function1.this, obj);
                return preparePremiumBuyTransaction$lambda$10;
            }
        }).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "private fun preparePremi…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource preparePremiumBuyTransaction$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final Observable<Result<ProductBuyTransactionParams>> prepareProductBuyTransaction(final String str, final String str2) {
        Observable<byte[]> tonPublicKeyBytes = getTonPublicKeyBytes();
        final Function1<byte[], ObservableSource<? extends Result<? extends ProductBuyTransactionParams>>> function1 = new Function1<byte[], ObservableSource<? extends Result<? extends ProductBuyTransactionParams>>>() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$prepareProductBuyTransaction$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<ProductBuyTransactionParams>> invoke(byte[] publicKeyBytes) {
                TonFragmentRepository tonFragmentRepository;
                Intrinsics.checkNotNullParameter(publicKeyBytes, "publicKeyBytes");
                tonFragmentRepository = TonFragmentInteractor.this.tonFragmentRepository;
                String str3 = str;
                String str4 = str2;
                String encodeUrlSafe = Base64Utils.encodeUrlSafe(publicKeyBytes);
                Intrinsics.checkNotNullExpressionValue(encodeUrlSafe, "encodeUrlSafe(publicKeyBytes)");
                return tonFragmentRepository.prepareProductBuyTransaction(str3, str4, encodeUrlSafe);
            }
        };
        Observable<Result<ProductBuyTransactionParams>> subscribeOn = tonPublicKeyBytes.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource prepareProductBuyTransaction$lambda$11;
                prepareProductBuyTransaction$lambda$11 = TonFragmentInteractor.prepareProductBuyTransaction$lambda$11(Function1.this, obj);
                return prepareProductBuyTransaction$lambda$11;
            }
        }).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "private fun prepareProdu…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource prepareProductBuyTransaction$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final Observable<byte[]> getTonPublicKeyBytes() {
        Observable<byte[]> fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] tonPublicKeyBytes$lambda$12;
                tonPublicKeyBytes$lambda$12 = TonFragmentInteractor.getTonPublicKeyBytes$lambda$12(TonFragmentInteractor.this);
                return tonPublicKeyBytes$lambda$12;
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromCallable, "fromCallable {\n         …ray().orEmpty()\n        }");
        return fromCallable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] getTonPublicKeyBytes$lambda$12(TonFragmentInteractor this$0) {
        String publicKey;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Wallet wallet2 = this$0.cryptoAccessManager.getWallet(BlockchainType.TON);
        byte[] bArr = null;
        if (wallet2 != null && (publicKey = wallet2.getPublicKey()) != null) {
            bArr = CryptoExtKt.hexToByteArray$default(publicKey, false, 1, null);
        }
        return CryptoExtKt.orEmpty(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSessionMessage(String str, String str2, String str3) {
        return "tonlogin/ownership/" + str + '/' + str2 + '/' + str3;
    }

    /* compiled from: TonFragmentInteractor.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
