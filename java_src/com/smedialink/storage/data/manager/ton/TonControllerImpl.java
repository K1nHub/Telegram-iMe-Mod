package com.smedialink.storage.data.manager.ton;

import android.text.TextUtils;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.manager.ton.TonController;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.repository.crypto.ton.TonConfigRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import drinkless.org.ton.Client;
import drinkless.org.ton.TonApi;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.io.File;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import timber.log.Timber;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
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

    @Override // com.smedialink.storage.domain.manager.ton.TonController
    public Observable<Result<Boolean>> isValidWalletAddress(String str) {
        Observable map = sendRequest(new TonApi.UnpackAccountAddress(str)).subscribeOn(this.schedulersProvider.mo708io()).map(TonControllerImpl$$ExternalSyntheticLambda15.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "sendRequest(UnpackAccoun…s()\n                    }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isValidWalletAddress$lambda-0  reason: not valid java name */
    public static final Result m1320isValidWalletAddress$lambda0(Object result) {
        Intrinsics.checkNotNullParameter(result, "result");
        return Result.Companion.success(Boolean.valueOf(result instanceof TonApi.UnpackedAccountAddress));
    }

    @Override // com.smedialink.storage.domain.manager.ton.TonController
    public Observable<Result<Wallet>> createWallet(final String guid) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Observable flatMap = initTonLib().flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1310createWallet$lambda4;
                m1310createWallet$lambda4 = TonControllerImpl.m1310createWallet$lambda4(TonControllerImpl.this, guid, (Boolean) obj);
                return m1310createWallet$lambda4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "initTonLib().flatMap { i…          }\n            }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createWallet$lambda-4  reason: not valid java name */
    public static final ObservableSource m1310createWallet$lambda4(final TonControllerImpl this$0, final String guid, Boolean initResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(initResult, "initResult");
        if (!initResult.booleanValue()) {
            Observable just = Observable.just(getTonApiErrorResult$default(this$0, null, 1, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        return this$0.sendRequest(new TonApi.DeleteAllKeys()).subscribeOn(this$0.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1311createWallet$lambda4$lambda3;
                m1311createWallet$lambda4$lambda3 = TonControllerImpl.m1311createWallet$lambda4$lambda3(TonControllerImpl.this, guid, obj);
                return m1311createWallet$lambda4$lambda3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createWallet$lambda-4$lambda-3  reason: not valid java name */
    public static final ObservableSource m1311createWallet$lambda4$lambda3(final TonControllerImpl this$0, final String guid, Object it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.sendRequest(new TonApi.CreateNewKey(new byte[0], new byte[0], new byte[0])).subscribeOn(this$0.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1312createWallet$lambda4$lambda3$lambda2;
                m1312createWallet$lambda4$lambda3$lambda2 = TonControllerImpl.m1312createWallet$lambda4$lambda3$lambda2(TonControllerImpl.this, guid, obj);
                return m1312createWallet$lambda4$lambda3$lambda2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createWallet$lambda-4$lambda-3$lambda-2  reason: not valid java name */
    public static final ObservableSource m1312createWallet$lambda4$lambda3$lambda2(final TonControllerImpl this$0, final String guid, final Object keyResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(keyResult, "keyResult");
        if (!(keyResult instanceof TonApi.Key)) {
            Observable just = Observable.just(this$0.getTonApiErrorResult(keyResult));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        return this$0.sendRequest(new TonApi.ExportKey(new TonApi.InputKeyRegular((TonApi.Key) keyResult, new byte[0]))).subscribeOn(this$0.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1313createWallet$lambda4$lambda3$lambda2$lambda1;
                m1313createWallet$lambda4$lambda3$lambda2$lambda1 = TonControllerImpl.m1313createWallet$lambda4$lambda3$lambda2$lambda1(TonControllerImpl.this, keyResult, guid, obj);
                return m1313createWallet$lambda4$lambda3$lambda2$lambda1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createWallet$lambda-4$lambda-3$lambda-2$lambda-1  reason: not valid java name */
    public static final ObservableSource m1313createWallet$lambda4$lambda3$lambda2$lambda1(TonControllerImpl this$0, Object keyResult, String guid, Object exportedKeyResult) {
        List<String> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(keyResult, "$keyResult");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(exportedKeyResult, "exportedKeyResult");
        if (!(exportedKeyResult instanceof TonApi.ExportedKey)) {
            Observable just = Observable.just(this$0.getTonApiErrorResult(exportedKeyResult));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        String[] strArr = ((TonApi.ExportedKey) exportedKeyResult).wordList;
        Intrinsics.checkNotNullExpressionValue(strArr, "exportedKeyResult.wordList");
        list = ArraysKt___ArraysKt.toList(strArr);
        return this$0.processInputKey((TonApi.Key) keyResult, guid, new byte[0], list).subscribeOn(this$0.schedulersProvider.mo708io());
    }

    @Override // com.smedialink.storage.domain.manager.ton.TonController
    public Observable<Result<Wallet>> importWallet(final String guid, final List<String> words) {
        Intrinsics.checkNotNullParameter(guid, "guid");
        Intrinsics.checkNotNullParameter(words, "words");
        Observable flatMap = initTonLib().flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1315importWallet$lambda7;
                m1315importWallet$lambda7 = TonControllerImpl.m1315importWallet$lambda7(TonControllerImpl.this, words, guid, (Boolean) obj);
                return m1315importWallet$lambda7;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "initTonLib().flatMap { i…          }\n            }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: importWallet$lambda-7  reason: not valid java name */
    public static final ObservableSource m1315importWallet$lambda7(final TonControllerImpl this$0, final List words, final String guid, Boolean initResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(initResult, "initResult");
        if (!initResult.booleanValue()) {
            Observable just = Observable.just(getTonApiErrorResult$default(this$0, null, 1, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        return this$0.sendRequest(new TonApi.DeleteAllKeys()).subscribeOn(this$0.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1316importWallet$lambda7$lambda6;
                m1316importWallet$lambda7$lambda6 = TonControllerImpl.m1316importWallet$lambda7$lambda6(TonControllerImpl.this, words, guid, obj);
                return m1316importWallet$lambda7$lambda6;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: importWallet$lambda-7$lambda-6  reason: not valid java name */
    public static final ObservableSource m1316importWallet$lambda7$lambda6(final TonControllerImpl this$0, final List words, final String guid, Object it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(it, "it");
        Object[] array = words.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return this$0.sendRequest(new TonApi.ImportKey(new byte[0], new byte[0], new TonApi.ExportedKey((String[]) array))).subscribeOn(this$0.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1317importWallet$lambda7$lambda6$lambda5;
                m1317importWallet$lambda7$lambda6$lambda5 = TonControllerImpl.m1317importWallet$lambda7$lambda6$lambda5(TonControllerImpl.this, guid, words, obj);
                return m1317importWallet$lambda7$lambda6$lambda5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: importWallet$lambda-7$lambda-6$lambda-5  reason: not valid java name */
    public static final ObservableSource m1317importWallet$lambda7$lambda6$lambda5(TonControllerImpl this$0, String guid, List words, Object keyResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(keyResult, "keyResult");
        if (keyResult instanceof TonApi.Key) {
            return this$0.processInputKey((TonApi.Key) keyResult, guid, new byte[0], words).subscribeOn(this$0.schedulersProvider.mo708io());
        }
        Observable just = Observable.just(this$0.getTonApiErrorResult(keyResult));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.smedialink.storage.domain.manager.ton.TonController
    public Observable<Result<Boolean>> sendTransaction(String from, String to, long j, String str, boolean z, int i) {
        byte[] bytes;
        TonApi.MsgData msgDataText;
        TonApi.Key key;
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        String str2 = null;
        if (str == null) {
            bytes = null;
        } else {
            bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        }
        if (bytes == null) {
            bytes = new byte[0];
        }
        if (z || TextUtils.isEmpty(str)) {
            msgDataText = new TonApi.MsgDataText(bytes);
        } else {
            msgDataText = new TonApi.MsgDataDecryptedText(bytes);
        }
        TonApi.MsgData msgData = msgDataText;
        TonApi.InputKeyRegular inputKeyRegular = this.inputKey;
        if (inputKeyRegular != null && (key = inputKeyRegular.key) != null) {
            str2 = key.publicKey;
        }
        if (str2 == null) {
            str2 = "";
        }
        Observable flatMap = sendRequest(new TonApi.CreateQuery(this.inputKey, new TonApi.AccountAddress(from), 0, new TonApi.ActionMsg(new TonApi.MsgMessage[]{new TonApi.MsgMessage(new TonApi.AccountAddress(to), str2, j, msgData, i)}, true), new TonApi.WalletV3InitialAccountState(str2, this.walletId))).subscribeOn(this.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1324sendTransaction$lambda11;
                m1324sendTransaction$lambda11 = TonControllerImpl.m1324sendTransaction$lambda11(TonControllerImpl.this, obj);
                return m1324sendTransaction$lambda11;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "sendRequest(signRequest)…      }\n                }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendTransaction$lambda-11  reason: not valid java name */
    public static final ObservableSource m1324sendTransaction$lambda11(final TonControllerImpl this$0, final Object signResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(signResult, "signResult");
        if (!(signResult instanceof TonApi.QueryInfo)) {
            Observable just = Observable.just(this$0.getTonApiErrorResult(signResult));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        return this$0.sendRequest(new TonApi.QuerySend(((TonApi.QueryInfo) signResult).f412id)).subscribeOn(this$0.schedulersProvider.mo708io()).map(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result m1325sendTransaction$lambda11$lambda10;
                m1325sendTransaction$lambda11$lambda10 = TonControllerImpl.m1325sendTransaction$lambda11$lambda10(TonControllerImpl.this, signResult, obj);
                return m1325sendTransaction$lambda11$lambda10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendTransaction$lambda-11$lambda-10  reason: not valid java name */
    public static final Result m1325sendTransaction$lambda11$lambda10(TonControllerImpl this$0, Object signResult, Object sendResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(signResult, "$signResult");
        Intrinsics.checkNotNullParameter(sendResult, "sendResult");
        if (sendResult instanceof TonApi.C2218Ok) {
            return Result.Companion.success(Boolean.TRUE);
        }
        return this$0.getTonApiErrorResult(signResult);
    }

    private final Observable<Object> sendRequest(final TonApi.Function function) {
        Observable<Object> create = Observable.create(new ObservableOnSubscribe() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TonControllerImpl.m1322sendRequest$lambda13(TonControllerImpl.this, function, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …   }, null)\n            }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendRequest$lambda-13  reason: not valid java name */
    public static final void m1322sendRequest$lambda13(TonControllerImpl this$0, final TonApi.Function query, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.getClient().send(query, new Client.ResultHandler() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda0
            @Override // drinkless.org.ton.Client.ResultHandler
            public final void onResult(TonApi.Object object) {
                TonControllerImpl.m1323sendRequest$lambda13$lambda12(TonApi.Function.this, emitter, object);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendRequest$lambda-13$lambda-12  reason: not valid java name */
    public static final void m1323sendRequest$lambda13$lambda12(TonApi.Function query, ObservableEmitter emitter, TonApi.Object object) {
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (object instanceof TonApi.Error) {
            Timber.m5e("TonApi query " + query + " error " + ((Object) ((TonApi.Error) object).message), new Object[0]);
        }
        emitter.onNext(object);
        emitter.onComplete();
    }

    private final Observable<Boolean> initTonLib() {
        Observable<Boolean> onErrorReturn = this.tonConfigRepository.getTonConfigJsonString().subscribeOn(this.schedulersProvider.mo708io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1318initTonLib$lambda14;
                m1318initTonLib$lambda14 = TonControllerImpl.m1318initTonLib$lambda14(TonControllerImpl.this, (Result) obj);
                return m1318initTonLib$lambda14;
            }
        }).onErrorReturn(TonControllerImpl$$ExternalSyntheticLambda14.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "tonConfigRepository\n    … .onErrorReturn { false }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initTonLib$lambda-14  reason: not valid java name */
    public static final ObservableSource m1318initTonLib$lambda14(TonControllerImpl this$0, Result result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            return this$0.getInitTonLibObservable((String) ((Result.Success) result).getData());
        }
        if (result instanceof Result.Error) {
            String tonConfigJsonString = this$0.cryptoPreferenceHelper.getTonConfigJsonString();
            if (!(tonConfigJsonString.length() > 0)) {
                Observable just = Observable.just(Boolean.FALSE);
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
            return this$0.getInitTonLibObservable(tonConfigJsonString);
        }
        return Observable.empty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initTonLib$lambda-15  reason: not valid java name */
    public static final Boolean m1319initTonLib$lambda15(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.FALSE;
    }

    private final Observable<Boolean> getInitTonLibObservable(final String str) {
        if (this.isInitialized) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        File file = new File(this.telegramGateway.getFilesFixedDirectory(), Intrinsics.stringPlus(BlockchainType.TON.name(), Long.valueOf(this.telegramGateway.getSelectedAccountId())));
        file.mkdirs();
        Observable map = sendRequest(new TonApi.Init(new TonApi.Options(getConfig(str), new TonApi.KeyStoreTypeDirectory(file.getAbsolutePath())))).subscribeOn(this.schedulersProvider.mo708io()).map(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Boolean m1314getInitTonLibObservable$lambda17;
                m1314getInitTonLibObservable$lambda17 = TonControllerImpl.m1314getInitTonLibObservable$lambda17(TonControllerImpl.this, str, obj);
                return m1314getInitTonLibObservable$lambda17;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sendRequest(Init(options…      }\n                }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getInitTonLibObservable$lambda-17  reason: not valid java name */
    public static final Boolean m1314getInitTonLibObservable$lambda17(TonControllerImpl this$0, String configJsonString, Object result) {
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

    private final Observable<Result<Wallet>> processInputKey(TonApi.Key key, final String str, byte[] bArr, final List<String> list) {
        final TonApi.InputKeyRegular inputKeyRegular = new TonApi.InputKeyRegular(key, bArr);
        this.inputKey = inputKeyRegular;
        Observable map = sendRequest(new TonApi.GetAccountAddress(new TonApi.WalletV3InitialAccountState(key.publicKey, this.walletId), 2, 0)).subscribeOn(this.schedulersProvider.mo708io()).map(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result m1321processInputKey$lambda18;
                m1321processInputKey$lambda18 = TonControllerImpl.m1321processInputKey$lambda18(str, list, inputKeyRegular, this, obj);
                return m1321processInputKey$lambda18;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sendRequest(GetAccountAd…      }\n                }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processInputKey$lambda-18  reason: not valid java name */
    public static final Result m1321processInputKey$lambda18(String guid, List words, TonApi.InputKeyRegular newInputKey, TonControllerImpl this$0, Object addressResult) {
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(newInputKey, "$newInputKey");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(addressResult, "addressResult");
        if (addressResult instanceof TonApi.AccountAddress) {
            String joinBySpace = StringExtKt.joinBySpace(words);
            String str = ((TonApi.AccountAddress) addressResult).accountAddress;
            Intrinsics.checkNotNullExpressionValue(str, "addressResult.accountAddress");
            return Result.Companion.success(new Wallet.TON(guid, joinBySpace, str, newInputKey));
        }
        return this$0.getTonApiErrorResult(addressResult);
    }

    private final <T> Result.Error<T> getTonApiErrorResult(Object obj) {
        return new Result.Error<>(new ErrorModel(obj instanceof TonApi.Error ? ((TonApi.Error) obj).message : null, ApiErrorHandler.ErrorStatus.NOT_DEFINED, null, 4, null), null, 2, null);
    }

    static /* synthetic */ Result.Error getTonApiErrorResult$default(TonControllerImpl tonControllerImpl, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return tonControllerImpl.getTonApiErrorResult(obj);
    }
}
