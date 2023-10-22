package com.iMe.storage.data.manager.ton;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TonTransactionPayload;
import com.iMe.storage.domain.repository.crypto.ton.TonConfigRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.io.File;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.rx2.RxSingleKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import org.ton.api.p043pk.PrivateKeyEd25519;
import org.ton.block.AddrStd;
import org.ton.cell.Cell;
import org.ton.contract.wallet.WalletContract;
import org.ton.lite.client.LiteClient;
import timber.log.Timber;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
public final class TonControllerImpl implements TonController {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final Lazy json$delegate;
    private LiteClient liteClient;
    private PrivateKeyEd25519 privateKey;
    private final SchedulersProvider schedulersProvider;
    private final TonConfigRepository tonConfigRepository;
    private WalletContract<Cell> walletContract;

    public TonControllerImpl(TelegramGateway telegramGateway, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, TonConfigRepository tonConfigRepository) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(tonConfigRepository, "tonConfigRepository");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.tonConfigRepository = tonConfigRepository;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Json>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$json$2
            @Override // kotlin.jvm.functions.Function0
            public final Json invoke() {
                return JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$json$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
                        invoke2(jsonBuilder);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(JsonBuilder Json) {
                        Intrinsics.checkNotNullParameter(Json, "$this$Json");
                        Json.setIgnoreUnknownKeys(true);
                    }
                }, 1, null);
            }
        });
        this.json$delegate = lazy;
        try {
            File filesFixedDirectory = telegramGateway.getFilesFixedDirectory();
            new File(filesFixedDirectory, BlockchainType.TON.name() + telegramGateway.getSelectedAccountId()).delete();
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    private final Json getJson() {
        return (Json) this.json$delegate.getValue();
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Boolean>> isValidAddress(final String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result isValidAddress$lambda$1;
                isValidAddress$lambda$1 = TonControllerImpl.isValidAddress$lambda$1(address);
                return isValidAddress$lambda$1;
            }
        });
        final TonControllerImpl$isValidAddress$2 tonControllerImpl$isValidAddress$2 = new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$isValidAddress$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, it, 1, (DefaultConstructorMarker) null), null, 2, null);
            }
        };
        Observable<Result<Boolean>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidAddress$lambda$2;
                isValidAddress$lambda$2 = TonControllerImpl.isValidAddress$lambda$2(Function1.this, obj);
                return isValidAddress$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …rror(false)\n            }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidAddress$lambda$1(String address) {
        Intrinsics.checkNotNullParameter(address, "$address");
        AddrStd.Companion.parse(address);
        return Result.Companion.success(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidAddress$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Wallet>> createWallet() {
        Observable<Result<Wallet>> observable = RxSingleKt.rxSingle$default(null, new TonControllerImpl$createWallet$1(this, null), 1, null).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "override fun createWalle…\n        }.toObservable()");
        return observable;
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Wallet.TON>> importWallet(List<String> mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable<Result<Wallet.TON>> observable = RxSingleKt.rxSingle$default(null, new TonControllerImpl$importWallet$1(this, mnemonic, null), 1, null).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "override fun importWalle…\n        }.toObservable()");
        return observable;
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<String>> sendTransaction(String to, long j, TonTransactionPayload tonTransactionPayload, int i) {
        Intrinsics.checkNotNullParameter(to, "to");
        Observable<Result<String>> observable = RxSingleKt.rxSingle$default(null, new TonControllerImpl$sendTransaction$1(this, to, j, tonTransactionPayload, null), 1, null).onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result sendTransaction$lambda$3;
                sendTransaction$lambda$3 = TonControllerImpl.sendTransaction$lambda$3((Throwable) obj);
                return sendTransaction$lambda$3;
            }
        }).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "override fun sendTransac…          .toObservable()");
        return observable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result sendTransaction$lambda$3(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, it, 1, (DefaultConstructorMarker) null), null, 2, null);
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<byte[]>> signData(final byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result signData$lambda$4;
                signData$lambda$4 = TonControllerImpl.signData$lambda$4(TonControllerImpl.this, data);
                return signData$lambda$4;
            }
        });
        final TonControllerImpl$signData$2 tonControllerImpl$signData$2 = new Function1<Throwable, Result<? extends byte[]>>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$signData$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<byte[]> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, it, 1, (DefaultConstructorMarker) null), null, 2, null);
            }
        };
        Observable<Result<byte[]>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result signData$lambda$5;
                signData$lambda$5 = TonControllerImpl.signData$lambda$5(Function1.this, obj);
                return signData$lambda$5;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …).toError()\n            }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result signData$lambda$4(TonControllerImpl this$0, byte[] data) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(data, "$data");
        return Result.Companion.success(this$0.getPrivateKeySafe().sign(data));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result signData$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initLiteClient(kotlin.coroutines.Continuation<? super org.ton.lite.client.LiteClient> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.iMe.storage.data.manager.ton.TonControllerImpl$initLiteClient$1
            if (r0 == 0) goto L13
            r0 = r6
            com.iMe.storage.data.manager.ton.TonControllerImpl$initLiteClient$1 r0 = (com.iMe.storage.data.manager.ton.TonControllerImpl$initLiteClient$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.iMe.storage.data.manager.ton.TonControllerImpl$initLiteClient$1 r0 = new com.iMe.storage.data.manager.ton.TonControllerImpl$initLiteClient$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.L$0
            kotlinx.serialization.StringFormat r0 = (kotlinx.serialization.StringFormat) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.serialization.json.Json r6 = r5.getJson()
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r0 = r5.fetchConfig(r0)
            if (r0 != r1) goto L47
            return r1
        L47:
            r4 = r0
            r0 = r6
            r6 = r4
        L4a:
            java.lang.String r6 = (java.lang.String) r6
            kotlinx.serialization.modules.SerializersModule r1 = r0.getSerializersModule()
            java.lang.Class<org.ton.api.liteclient.config.LiteClientConfigGlobal> r2 = org.ton.api.liteclient.config.LiteClientConfigGlobal.class
            kotlin.reflect.KType r2 = kotlin.jvm.internal.Reflection.typeOf(r2)
            java.lang.String r3 = "kotlinx.serialization.serializer.withModule"
            kotlin.jvm.internal.MagicApiIntrinsics.voidMagicApiCall(r3)
            kotlinx.serialization.KSerializer r1 = kotlinx.serialization.SerializersKt.serializer(r1, r2)
            java.lang.Object r6 = r0.decodeFromString(r1, r6)
            org.ton.api.liteclient.config.LiteClientConfigGlobal r6 = (org.ton.api.liteclient.config.LiteClientConfigGlobal) r6
            kotlinx.coroutines.CoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getDefault()
            org.ton.lite.client.LiteClient r1 = new org.ton.lite.client.LiteClient
            r1.<init>(r0, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.TonControllerImpl.initLiteClient(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PrivateKeyEd25519 getPrivateKeySafe() {
        PrivateKeyEd25519 privateKeyEd25519 = this.privateKey;
        if (privateKeyEd25519 != null) {
            return privateKeyEd25519;
        }
        throw new Throwable("Private key is null");
    }

    private final Object getLightClientSafe(Continuation<? super LiteClient> continuation) {
        LiteClient liteClient = this.liteClient;
        return liteClient == null ? initLiteClient(continuation) : liteClient;
    }

    private final Object getWalletSafe(Continuation<? super WalletContract<Cell>> continuation) {
        WalletContract<Cell> walletContract = this.walletContract;
        return walletContract == null ? initWallet(continuation) : walletContract;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initWallet(kotlin.coroutines.Continuation<? super org.ton.contract.wallet.WalletContract<org.ton.cell.Cell>> r14) {
        /*
            r13 = this;
            boolean r0 = r14 instanceof com.iMe.storage.data.manager.ton.TonControllerImpl$initWallet$1
            if (r0 == 0) goto L13
            r0 = r14
            com.iMe.storage.data.manager.ton.TonControllerImpl$initWallet$1 r0 = (com.iMe.storage.data.manager.ton.TonControllerImpl$initWallet$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.iMe.storage.data.manager.ton.TonControllerImpl$initWallet$1 r0 = new com.iMe.storage.data.manager.ton.TonControllerImpl$initWallet$1
            r0.<init>(r13, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r0 = r0.L$0
            com.iMe.storage.data.manager.ton.TonControllerImpl r0 = (com.iMe.storage.data.manager.ton.TonControllerImpl) r0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L82
        L30:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L38:
            java.lang.Object r2 = r0.L$1
            com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r2 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion) r2
            java.lang.Object r4 = r0.L$0
            com.iMe.storage.data.manager.ton.TonControllerImpl r4 = (com.iMe.storage.data.manager.ton.TonControllerImpl) r4
            kotlin.ResultKt.throwOnFailure(r14)
            goto L57
        L44:
            kotlin.ResultKt.throwOnFailure(r14)
            com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r2 = com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion
            r0.L$0 = r13
            r0.L$1 = r2
            r0.label = r4
            java.lang.Object r14 = r13.getLightClientSafe(r0)
            if (r14 != r1) goto L56
            return r1
        L56:
            r4 = r13
        L57:
            org.ton.lite.client.LiteClient r14 = (org.ton.lite.client.LiteClient) r14
            org.ton.contract.SmartContract$Companion r5 = org.ton.contract.SmartContract.Companion
            r6 = 0
            com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r7 = com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion
            org.ton.api.pk.PrivateKeyEd25519 r8 = r4.getPrivateKeySafe()
            org.ton.api.pub.PublicKeyEd25519 r8 = r8.publicKey()
            int r9 = org.ton.contract.wallet.WalletContract.DEFAULT_WALLET_ID
            r10 = 0
            r11 = 4
            r12 = 0
            org.ton.block.StateInit r7 = com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion.createStateInit$default(r7, r8, r9, r10, r11, r12)
            org.ton.block.AddrStd r5 = r5.address(r6, r7)
            r0.L$0 = r4
            r6 = 0
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r14 = r2.loadContract(r14, r5, r0)
            if (r14 != r1) goto L81
            return r1
        L81:
            r0 = r4
        L82:
            com.iMe.storage.data.manager.ton.WalletV3R2Contract r14 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract) r14
            r0.walletContract = r14
            if (r14 == 0) goto L89
            return r14
        L89:
            java.lang.Throwable r14 = new java.lang.Throwable
            java.lang.String r0 = "Wallet fetching error"
            r14.<init>(r0)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.TonControllerImpl.initWallet(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00df A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object sendInternal(java.lang.String r11, long r12, com.iMe.storage.domain.model.crypto.send.TonTransactionPayload r14, kotlin.coroutines.Continuation<? super com.iMe.storage.domain.model.Result<java.lang.String>> r15) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.TonControllerImpl.sendInternal(java.lang.String, long, com.iMe.storage.domain.model.crypto.send.TonTransactionPayload, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final Object fetchConfig(Continuation<? super String> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        Observable<Result<String>> tonConfigJsonString = this.tonConfigRepository.getTonConfigJsonString();
        final TonControllerImpl$fetchConfig$2$disposable$1 tonControllerImpl$fetchConfig$2$disposable$1 = new Function1<Result<? extends String>, Boolean>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$fetchConfig$2$disposable$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Boolean invoke2(Result<String> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf((it instanceof Result.Error) || (it instanceof Result.Success));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Result<? extends String> result) {
                return invoke2((Result<String>) result);
            }
        };
        Observable<Result<String>> filter = tonConfigJsonString.filter(new Predicate(tonControllerImpl$fetchConfig$2$disposable$1) { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$sam$io_reactivex_functions_Predicate$0
            private final /* synthetic */ Function1 function;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                Intrinsics.checkNotNullParameter(tonControllerImpl$fetchConfig$2$disposable$1, "function");
                this.function = tonControllerImpl$fetchConfig$2$disposable$1;
            }

            @Override // io.reactivex.functions.Predicate
            public final /* synthetic */ boolean test(Object obj) {
                return ((Boolean) this.function.invoke(obj)).booleanValue();
            }
        });
        final Function1<Result<? extends String>, String> function1 = new Function1<Result<? extends String>, String>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$fetchConfig$2$disposable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ String invoke(Result<? extends String> result) {
                return invoke2((Result<String>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final String invoke2(Result<String> result) {
                String str;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                boolean isBlank;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    str = (String) ((Result.Success) result).getData();
                } else if (result instanceof Result.Error) {
                    cryptoPreferenceHelper = TonControllerImpl.this.cryptoPreferenceHelper;
                    str = cryptoPreferenceHelper.getTonConfigJsonString();
                } else {
                    str = "";
                }
                isBlank = StringsKt__StringsJVMKt.isBlank(str);
                if (isBlank) {
                    throw new Throwable("TON global configuration fetching error");
                }
                return str;
            }
        };
        Observable subscribeOn = filter.map(new Function(function1) { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$sam$io_reactivex_functions_Function$0
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
        }).subscribeOn(this.schedulersProvider.mo1010io());
        final TonControllerImpl$fetchConfig$2$disposable$3 tonControllerImpl$fetchConfig$2$disposable$3 = new TonControllerImpl$fetchConfig$2$disposable$3(cancellableContinuationImpl);
        Consumer consumer = new Consumer(tonControllerImpl$fetchConfig$2$disposable$3) { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$sam$io_reactivex_functions_Consumer$0
            private final /* synthetic */ Function1 function;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                Intrinsics.checkNotNullParameter(tonControllerImpl$fetchConfig$2$disposable$3, "function");
                this.function = tonControllerImpl$fetchConfig$2$disposable$3;
            }

            @Override // io.reactivex.functions.Consumer
            public final /* synthetic */ void accept(Object obj) {
                this.function.invoke(obj);
            }
        };
        final TonControllerImpl$fetchConfig$2$disposable$4 tonControllerImpl$fetchConfig$2$disposable$4 = new TonControllerImpl$fetchConfig$2$disposable$4(cancellableContinuationImpl);
        final Disposable subscribe = subscribeOn.subscribe(consumer, new Consumer(tonControllerImpl$fetchConfig$2$disposable$4) { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$sam$io_reactivex_functions_Consumer$0
            private final /* synthetic */ Function1 function;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                Intrinsics.checkNotNullParameter(tonControllerImpl$fetchConfig$2$disposable$4, "function");
                this.function = tonControllerImpl$fetchConfig$2$disposable$4;
            }

            @Override // io.reactivex.functions.Consumer
            public final /* synthetic */ void accept(Object obj) {
                this.function.invoke(obj);
            }
        });
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$fetchConfig$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Disposable.this.dispose();
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
