package com.iMe.storage.data.manager.ton;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.extentions.StringExtKt;
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
import org.ton.api.p044pk.PrivateKeyEd25519;
import org.ton.block.AddrStd;
import org.ton.cell.Cell;
import org.ton.contract.wallet.WalletContract;
import org.ton.lite.client.LiteClient;
import org.ton.mnemonic.Mnemonic;
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
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda5
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidMnemonic$lambda$3(String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "$mnemonic");
        return Result.Companion.success(Boolean.valueOf(Mnemonic.isValid$default(StringExtKt.splitBySpace(mnemonic), null, null, 6, null)));
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<Boolean>> isValidMnemonic(final String mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result isValidMnemonic$lambda$3;
                isValidMnemonic$lambda$3 = TonControllerImpl.isValidMnemonic$lambda$3(mnemonic);
                return isValidMnemonic$lambda$3;
            }
        });
        final TonControllerImpl$isValidMnemonic$2 tonControllerImpl$isValidMnemonic$2 = new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$isValidMnemonic$2
            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(Boolean.FALSE);
            }
        };
        Observable<Result<Boolean>> onErrorReturn = fromCallable.onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result isValidMnemonic$lambda$4;
                isValidMnemonic$lambda$4 = TonControllerImpl.isValidMnemonic$lambda$4(Function1.this, obj);
                return isValidMnemonic$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable { Mnemonic.…urn { false.toSuccess() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result isValidMnemonic$lambda$4(Function1 tmp0, Object obj) {
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
    public Observable<Result<String>> sendTransaction(String to, long j, int i, TonTransactionPayload tonTransactionPayload, int i2) {
        Intrinsics.checkNotNullParameter(to, "to");
        Observable<Result<String>> observable = RxSingleKt.rxSingle$default(null, new TonControllerImpl$sendTransaction$1(this, to, j, i, tonTransactionPayload, null), 1, null).onErrorReturn(new Function() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result sendTransaction$lambda$5;
                sendTransaction$lambda$5 = TonControllerImpl.sendTransaction$lambda$5((Throwable) obj);
                return sendTransaction$lambda$5;
            }
        }).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "override fun sendTransac…          .toObservable()");
        return observable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result sendTransaction$lambda$5(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, it, 1, (DefaultConstructorMarker) null), null, 2, null);
    }

    @Override // com.iMe.storage.domain.manager.ton.TonController
    public Observable<Result<byte[]>> signData(final byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$$ExternalSyntheticLambda4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Result signData$lambda$6;
                signData$lambda$6 = TonControllerImpl.signData$lambda$6(TonControllerImpl.this, data);
                return signData$lambda$6;
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
                Result signData$lambda$7;
                signData$lambda$7 = TonControllerImpl.signData$lambda$7(Function1.this, obj);
                return signData$lambda$7;
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "fromCallable {\n         …).toError()\n            }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result signData$lambda$6(TonControllerImpl this$0, byte[] data) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(data, "$data");
        return Result.Companion.success(this$0.getPrivateKeySafe().sign(data));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result signData$lambda$7(Function1 tmp0, Object obj) {
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
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009a  */
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
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 == r5) goto L39
            if (r2 != r4) goto L31
            java.lang.Object r0 = r0.L$0
            com.iMe.storage.data.manager.ton.TonControllerImpl r0 = (com.iMe.storage.data.manager.ton.TonControllerImpl) r0
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Exception -> L88
            goto L84
        L31:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L39:
            java.lang.Object r2 = r0.L$1
            com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r2 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion) r2
            java.lang.Object r5 = r0.L$0
            com.iMe.storage.data.manager.ton.TonControllerImpl r5 = (com.iMe.storage.data.manager.ton.TonControllerImpl) r5
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Exception -> L45
            goto L5a
        L45:
            r0 = r5
            goto L88
        L47:
            kotlin.ResultKt.throwOnFailure(r14)
            com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r2 = com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion     // Catch: java.lang.Exception -> L87
            r0.L$0 = r13     // Catch: java.lang.Exception -> L87
            r0.L$1 = r2     // Catch: java.lang.Exception -> L87
            r0.label = r5     // Catch: java.lang.Exception -> L87
            java.lang.Object r14 = r13.getLightClientSafe(r0)     // Catch: java.lang.Exception -> L87
            if (r14 != r1) goto L59
            return r1
        L59:
            r5 = r13
        L5a:
            org.ton.lite.client.LiteClient r14 = (org.ton.lite.client.LiteClient) r14     // Catch: java.lang.Exception -> L45
            org.ton.contract.SmartContract$Companion r6 = org.ton.contract.SmartContract.Companion     // Catch: java.lang.Exception -> L45
            com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r7 = com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion     // Catch: java.lang.Exception -> L45
            org.ton.api.pk.PrivateKeyEd25519 r8 = r5.getPrivateKeySafe()     // Catch: java.lang.Exception -> L45
            org.ton.api.pub.PublicKeyEd25519 r8 = r8.publicKey()     // Catch: java.lang.Exception -> L45
            int r9 = org.ton.contract.wallet.WalletContract.DEFAULT_WALLET_ID     // Catch: java.lang.Exception -> L45
            r10 = 0
            r11 = 4
            r12 = 0
            org.ton.block.StateInit r7 = com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion.createStateInit$default(r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Exception -> L45
            org.ton.block.AddrStd r6 = r6.address(r3, r7)     // Catch: java.lang.Exception -> L45
            r0.L$0 = r5     // Catch: java.lang.Exception -> L45
            r7 = 0
            r0.L$1 = r7     // Catch: java.lang.Exception -> L45
            r0.label = r4     // Catch: java.lang.Exception -> L45
            java.lang.Object r14 = r2.loadContract(r14, r6, r0)     // Catch: java.lang.Exception -> L45
            if (r14 != r1) goto L83
            return r1
        L83:
            r0 = r5
        L84:
            com.iMe.storage.data.manager.ton.WalletV3R2Contract r14 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract) r14     // Catch: java.lang.Exception -> L88
            goto L95
        L87:
            r0 = r13
        L88:
            com.iMe.storage.data.manager.ton.WalletV3R2Contract r14 = new com.iMe.storage.data.manager.ton.WalletV3R2Contract
            org.ton.api.pk.PrivateKeyEd25519 r1 = r0.getPrivateKeySafe()
            org.ton.api.pub.PublicKeyEd25519 r1 = r1.publicKey()
            r14.<init>(r3, r1)
        L95:
            r0.walletContract = r14
            if (r14 == 0) goto L9a
            return r14
        L9a:
            java.lang.Throwable r14 = new java.lang.Throwable
            java.lang.String r0 = "Wallet fetching error"
            r14.<init>(r0)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.TonControllerImpl.initWallet(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0110 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object sendInternal(java.lang.String r18, long r19, int r21, com.iMe.storage.domain.model.crypto.send.TonTransactionPayload r22, kotlin.coroutines.Continuation<? super com.iMe.storage.domain.model.Result<java.lang.String>> r23) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.TonControllerImpl.sendInternal(java.lang.String, long, int, com.iMe.storage.domain.model.crypto.send.TonTransactionPayload, kotlin.coroutines.Continuation):java.lang.Object");
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
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    str = (String) ((Result.Success) result).getData();
                    cryptoPreferenceHelper2 = TonControllerImpl.this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper2.setTonConfigJsonString(str);
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
        }).subscribeOn(this.schedulersProvider.mo1014io());
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
