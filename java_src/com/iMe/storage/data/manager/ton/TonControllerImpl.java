package com.iMe.storage.data.manager.ton;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.ton.TonConfigRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import drinkless.org.ton.Client;
import drinkless.org.ton.TonApi;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes4.dex */
public final class TonControllerImpl implements TonController {
    private final Lazy client$delegate;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private TonApi.InputKeyRegular inputKey;
    private boolean isInitialized;
    private final SchedulersProvider schedulersProvider;
    private final TelegramGateway telegramGateway;
    private final TonConfigRepository tonConfigRepository;
    private long walletId;

    public TonControllerImpl(CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, TelegramGateway telegramGateway, TonConfigRepository tonConfigRepository) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(tonConfigRepository, "tonConfigRepository");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.telegramGateway = telegramGateway;
        this.tonConfigRepository = tonConfigRepository;
        lazy = LazyKt__LazyJVMKt.lazy(TonControllerImpl$client$2.INSTANCE);
        this.client$delegate = lazy;
        this.walletId = -1L;
    }

    private final Client getClient() {
        Object value = this.client$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-client>(...)");
        return (Client) value;
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Boolean>> isValidWalletAddress(String str) {
        Observable map = sendRequest(new TonApi.UnpackAccountAddress(str)).subscribeOn(this.schedulersProvider.mo717io()).map(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidWalletAddress$lambda$0;
                isValidWalletAddress$lambda$0 = TonControllerImpl.isValidWalletAddress$lambda$0(obj);
                return isValidWalletAddress$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sendRequest(UnpackAccoun…toSuccess()\n            }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidWalletAddress$lambda$0(Object result) {
        Intrinsics.checkNotNullParameter(result, "result");
        return Result.Companion.success(Boolean.valueOf(result instanceof TonApi.UnpackedAccountAddress));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource createWallet$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Wallet>> createWallet() {
        Observable<Boolean> initTonLib = initTonLib();
        final TonControllerImpl$createWallet$1 tonControllerImpl$createWallet$1 = new TonControllerImpl$createWallet$1(this);
        Observable flatMap = initTonLib.flatMap(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource createWallet$lambda$1;
                createWallet$lambda$1 = TonControllerImpl.createWallet$lambda$1(Function1.this, obj);
                return createWallet$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "override fun createWalle…)\n            }\n        }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource importWallet$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Wallet.TON>> importWallet(List<String> words) {
        Intrinsics.checkNotNullParameter(words, "words");
        Observable<Boolean> initTonLib = initTonLib();
        final TonControllerImpl$importWallet$1 tonControllerImpl$importWallet$1 = new TonControllerImpl$importWallet$1(this, words);
        Observable flatMap = initTonLib.flatMap(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource importWallet$lambda$2;
                importWallet$lambda$2 = TonControllerImpl.importWallet$lambda$2(Function1.this, obj);
                return importWallet$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "override fun importWalle…)\n            }\n        }");
        return flatMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r5 == null) goto L21;
     */
    @Override // com.iMe.storage.domain.manager.ton.TonController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.reactivex.Observable<com.iMe.storage.domain.model.Result<java.lang.Boolean>> sendTransaction(java.lang.String r17, java.lang.String r18, long r19, java.lang.String r21, boolean r22, int r23) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r21
            java.lang.String r4 = "from"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r4)
            java.lang.String r4 = "to"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)
            r4 = 0
            if (r3 == 0) goto L22
            java.nio.charset.Charset r5 = kotlin.text.Charsets.UTF_8
            byte[] r5 = r3.getBytes(r5)
            java.lang.String r6 = "this as java.lang.String).getBytes(charset)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            if (r5 != 0) goto L24
        L22:
            byte[] r5 = new byte[r4]
        L24:
            if (r22 != 0) goto L33
            boolean r3 = android.text.TextUtils.isEmpty(r21)
            if (r3 == 0) goto L2d
            goto L33
        L2d:
            drinkless.org.ton.TonApi$MsgDataDecryptedText r3 = new drinkless.org.ton.TonApi$MsgDataDecryptedText
            r3.<init>(r5)
            goto L38
        L33:
            drinkless.org.ton.TonApi$MsgDataText r3 = new drinkless.org.ton.TonApi$MsgDataText
            r3.<init>(r5)
        L38:
            r11 = r3
            drinkless.org.ton.TonApi$InputKeyRegular r3 = r0.inputKey
            if (r3 == 0) goto L44
            drinkless.org.ton.TonApi$Key r3 = r3.key
            if (r3 == 0) goto L44
            java.lang.String r3 = r3.publicKey
            goto L45
        L44:
            r3 = 0
        L45:
            if (r3 != 0) goto L49
            java.lang.String r3 = ""
        L49:
            drinkless.org.ton.TonApi$ActionMsg r5 = new drinkless.org.ton.TonApi$ActionMsg
            r13 = 1
            drinkless.org.ton.TonApi$MsgMessage[] r14 = new drinkless.org.ton.TonApi.MsgMessage[r13]
            drinkless.org.ton.TonApi$MsgMessage r15 = new drinkless.org.ton.TonApi$MsgMessage
            drinkless.org.ton.TonApi$AccountAddress r7 = new drinkless.org.ton.TonApi$AccountAddress
            r7.<init>(r2)
            r6 = r15
            r8 = r3
            r9 = r19
            r12 = r23
            r6.<init>(r7, r8, r9, r11, r12)
            r14[r4] = r15
            r5.<init>(r14, r13)
            drinkless.org.ton.TonApi$CreateQuery r2 = new drinkless.org.ton.TonApi$CreateQuery
            drinkless.org.ton.TonApi$InputKeyRegular r4 = r0.inputKey
            drinkless.org.ton.TonApi$AccountAddress r6 = new drinkless.org.ton.TonApi$AccountAddress
            r6.<init>(r1)
            r1 = 0
            drinkless.org.ton.TonApi$WalletV3InitialAccountState r7 = new drinkless.org.ton.TonApi$WalletV3InitialAccountState
            long r8 = r0.walletId
            r7.<init>(r3, r8)
            r17 = r2
            r18 = r4
            r19 = r6
            r20 = r1
            r21 = r5
            r22 = r7
            r17.<init>(r18, r19, r20, r21, r22)
            io.reactivex.Observable r1 = r0.sendRequest(r2)
            com.iMe.storage.domain.utils.rx.SchedulersProvider r2 = r0.schedulersProvider
            io.reactivex.Scheduler r2 = r2.mo717io()
            io.reactivex.Observable r1 = r1.subscribeOn(r2)
            com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda2 r2 = new com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda2
            r2.<init>()
            io.reactivex.Observable r1 = r1.flatMap(r2)
            java.lang.String r2 = "sendRequest(signRequest)…          }\n            }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.TonControllerImpl.sendTransaction(java.lang.String, java.lang.String, long, java.lang.String, boolean, int):io.reactivex.Observable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource sendTransaction$lambda$5(final TonControllerImpl this$0, final Object signResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(signResult, "signResult");
        if (!(signResult instanceof TonApi.QueryInfo)) {
            Observable just = Observable.just(this$0.getTonApiErrorResult(signResult));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        return this$0.sendRequest(new TonApi.QuerySend(((TonApi.QueryInfo) signResult).f507id)).subscribeOn(this$0.schedulersProvider.mo717io()).map(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result sendTransaction$lambda$5$lambda$4;
                sendTransaction$lambda$5$lambda$4 = TonControllerImpl.sendTransaction$lambda$5$lambda$4(TonControllerImpl.this, signResult, obj);
                return sendTransaction$lambda$5$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result sendTransaction$lambda$5$lambda$4(TonControllerImpl this$0, Object signResult, Object sendResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(signResult, "$signResult");
        Intrinsics.checkNotNullParameter(sendResult, "sendResult");
        if (sendResult instanceof TonApi.C2639Ok) {
            return Result.Companion.success(Boolean.TRUE);
        }
        return this$0.getTonApiErrorResult(signResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Object> sendRequest(final TonApi.Function function) {
        Observable<Object> create = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TonControllerImpl.sendRequest$lambda$7(TonControllerImpl.this, function, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …       }, null)\n        }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendRequest$lambda$7(TonControllerImpl this$0, final TonApi.Function query, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.getClient().send(query, new Client.ResultHandler() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda0
            @Override // drinkless.org.ton.Client.ResultHandler
            public final void onResult(TonApi.Object object) {
                TonControllerImpl.sendRequest$lambda$7$lambda$6(TonApi.Function.this, emitter, object);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendRequest$lambda$7$lambda$6(TonApi.Function query, ObservableEmitter emitter, TonApi.Object object) {
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (object instanceof TonApi.Error) {
            Timber.m7e("TonApi query " + query + " error " + ((TonApi.Error) object).message, new Object[0]);
        }
        emitter.onNext(object);
        emitter.onComplete();
    }

    private final Observable<Boolean> initTonLib() {
        Observable<Result<String>> subscribeOn = this.tonConfigRepository.getTonConfigJsonString().subscribeOn(this.schedulersProvider.mo717io());
        final Function1<Result<? extends String>, ObservableSource<? extends Boolean>> function1 = new Function1<Result<? extends String>, ObservableSource<? extends Boolean>>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$initTonLib$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Boolean> invoke(Result<? extends String> result) {
                return invoke2((Result<String>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Boolean> invoke2(Result<String> result) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Observable initTonLibObservable;
                Observable initTonLibObservable2;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    initTonLibObservable2 = TonControllerImpl.this.getInitTonLibObservable((String) ((Result.Success) result).getData());
                    return initTonLibObservable2;
                } else if (result instanceof Result.Error) {
                    cryptoPreferenceHelper = TonControllerImpl.this.cryptoPreferenceHelper;
                    String tonConfigJsonString = cryptoPreferenceHelper.getTonConfigJsonString();
                    if (!(tonConfigJsonString.length() > 0)) {
                        Observable just = Observable.just(Boolean.FALSE);
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    }
                    initTonLibObservable = TonControllerImpl.this.getInitTonLibObservable(tonConfigJsonString);
                    return initTonLibObservable;
                } else {
                    return Observable.empty();
                }
            }
        };
        Observable<R> flatMap = subscribeOn.flatMap(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource initTonLib$lambda$8;
                initTonLib$lambda$8 = TonControllerImpl.initTonLib$lambda$8(Function1.this, obj);
                return initTonLib$lambda$8;
            }
        });
        final TonControllerImpl$initTonLib$2 tonControllerImpl$initTonLib$2 = new Function1<Throwable, Boolean>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$initTonLib$2
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.FALSE;
            }
        };
        Observable<Boolean> onErrorReturn = flatMap.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean initTonLib$lambda$9;
                initTonLib$lambda$9 = TonControllerImpl.initTonLib$lambda$9(Function1.this, obj);
                return initTonLib$lambda$9;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "private fun initTonLib()… .onErrorReturn { false }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource initTonLib$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean initTonLib$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Boolean) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Boolean> getInitTonLibObservable(final String str) {
        if (this.isInitialized) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        File filesFixedDirectory = this.telegramGateway.getFilesFixedDirectory();
        File file = new File(filesFixedDirectory, BlockchainType.TON.name() + this.telegramGateway.getSelectedAccountId());
        file.mkdirs();
        Observable map = sendRequest(new TonApi.Init(new TonApi.Options(getConfig(str), new TonApi.KeyStoreTypeDirectory(file.getAbsolutePath())))).subscribeOn(this.schedulersProvider.mo717io()).map(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean initTonLibObservable$lambda$11;
                initTonLibObservable$lambda$11 = TonControllerImpl.getInitTonLibObservable$lambda$11(TonControllerImpl.this, str, obj);
                return initTonLibObservable$lambda$11;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sendRequest(Init(options…          }\n            }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean getInitTonLibObservable$lambda$11(TonControllerImpl this$0, String configJsonString, Object result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(configJsonString, "$configJsonString");
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z = true;
        if (result instanceof TonApi.OptionsInfo) {
            this$0.isInitialized = true;
            this$0.walletId = ((TonApi.OptionsInfo) result).configInfo.defaultWalletId;
            this$0.cryptoPreferenceHelper.setTonConfigJsonString(configJsonString);
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    private final TonApi.Config getConfig(String str) {
        return new TonApi.Config(str, "mainnet", false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Wallet.TON>> processInputKey(TonApi.Key key, final List<String> list) {
        final TonApi.InputKeyRegular inputKeyRegular = new TonApi.InputKeyRegular(key, new byte[0]);
        this.inputKey = inputKeyRegular;
        Observable map = sendRequest(new TonApi.GetAccountAddress(new TonApi.WalletV3InitialAccountState(key.publicKey, this.walletId), 2, 0)).subscribeOn(this.schedulersProvider.mo717io()).map(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result processInputKey$lambda$12;
                processInputKey$lambda$12 = TonControllerImpl.processInputKey$lambda$12(list, inputKeyRegular, this, obj);
                return processInputKey$lambda$12;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sendRequest(GetAccountAd…          }\n            }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result processInputKey$lambda$12(List words, TonApi.InputKeyRegular newInputKey, TonControllerImpl this$0, Object addressResult) {
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(newInputKey, "$newInputKey");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(addressResult, "addressResult");
        if (addressResult instanceof TonApi.AccountAddress) {
            String joinBySpace = StringExtKt.joinBySpace(words);
            String str = ((TonApi.AccountAddress) addressResult).accountAddress;
            Intrinsics.checkNotNullExpressionValue(str, "addressResult.accountAddress");
            return Result.Companion.success(new Wallet.TON("", joinBySpace, str, newInputKey));
        }
        return this$0.getTonApiErrorResult(addressResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Result.Error<T> getTonApiErrorResult(Object obj) {
        return new Result.Error<>(new ErrorModel(obj instanceof TonApi.Error ? ((TonApi.Error) obj).message : null, ApiErrorHandler.ErrorStatus.NOT_DEFINED, null, 4, null), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Result.Error getTonApiErrorResult$default(TonControllerImpl tonControllerImpl, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return tonControllerImpl.getTonApiErrorResult(obj);
    }
}
