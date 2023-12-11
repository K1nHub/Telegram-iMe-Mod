.class public final Lcom/iMe/storage/data/manager/ton/TonControllerImpl;
.super Ljava/lang/Object;
.source "TonControllerImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/manager/ton/TonController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl\n+ 2 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 WalletTransfer.kt\norg/ton/contract/wallet/WalletTransferKt\n+ 6 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,219:1\n6#2,6:220\n123#3:226\n1#4:227\n35#5,2:228\n15#6:230\n15#6:242\n15#6:243\n8#6,2:244\n15#6:246\n314#7,11:231\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl\n*L\n55#1:220,6\n132#1:226\n178#1:228,2\n187#1:230\n67#1:242\n75#1:243\n118#1:244,2\n125#1:246\n191#1:231,11\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final json$delegate:Lkotlin/Lazy;

.field private liteClient:Lorg/ton/lite/client/LiteClient;

.field private privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final tonConfigRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

.field private walletContract:Lorg/ton/contract/wallet/WalletContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/contract/wallet/WalletContract<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7xIOpnbvidxbpaNacjQkfy0P0xI(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->isValidAddress$lambda$1(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AzA4pibO6KcYI6HOiYSIazA6HS8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->isValidAddress$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J1StujuC9SFrOxRsa4XIVjCtO3g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->signData$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_l9urNBmC0C9wsY7w5reVLShHQk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->isValidMnemonic$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ePdIGElSzWniKSoS_IRiuJ4ACnQ(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->signData$lambda$6(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$emkEzOeaqOQi2zXWh5BsK5CzuV8(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->isValidMnemonic$lambda$3(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jvkE_syHYvieNzE94yfQf9MS7bg(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->sendTransaction$lambda$5(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;)V
    .locals 2

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonConfigRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 44
    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 45
    iput-object p4, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->tonConfigRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

    .line 48
    sget-object p2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->json$delegate:Lkotlin/Lazy;

    .line 56
    :try_start_0
    new-instance p2, Ljava/io/File;

    .line 57
    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getFilesFixedDirectory()Ljava/io/File;

    move-result-object p3

    .line 58
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getPrivateKeySafe(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTonConfigRepository$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->tonConfigRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

    return-object p0
.end method

.method public static final synthetic access$initLiteClient(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initLiteClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initWallet(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initWallet(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendInternal(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->sendInternal(Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPrivateKey$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    return-void
.end method

.method private final fetchConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 192
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getTonConfigRepository$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

    move-result-object v1

    .line 193
    invoke-interface {v1}, Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;->getTonConfigJsonString()Lio/reactivex/Observable;

    move-result-object v1

    .line 194
    sget-object v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$1;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$1;

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Predicate$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Predicate$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;

    invoke-direct {v2, p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 208
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$3;

    invoke-direct {v2, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$3;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 211
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$4;

    invoke-direct {v2, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$4;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 209
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 214
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$1;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 323
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method private final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->json$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method private final getLightClientSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/client/LiteClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->liteClient:Lorg/ton/lite/client/LiteClient;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initLiteClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private final getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->privateKey:Lorg/ton/api/pk/PrivateKeyEd25519;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Private key is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getWalletSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/contract/wallet/WalletContract<",
            "Lorg/ton/cell/Cell;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->walletContract:Lorg/ton/contract/wallet/WalletContract;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initWallet(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private final initLiteClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/client/LiteClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;

    iget v1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 131
    iget v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/StringFormat;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initLiteClient$1;->label:I

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->fetchConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 131
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 123
    invoke-interface {v0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    const-class v2, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    const-string v3, "kotlinx.serialization.serializer.withModule"

    invoke-static {v3}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 132
    check-cast p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    .line 136
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    .line 134
    new-instance v1, Lorg/ton/lite/client/LiteClient;

    invoke-direct {v1, v0, p1}, Lorg/ton/lite/client/LiteClient;-><init>(Lkotlin/coroutines/CoroutineContext;Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;)V

    return-object v1
.end method

.method private final initWallet(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/contract/wallet/WalletContract<",
            "Lorg/ton/cell/Cell;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;

    iget v1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    iget-object v5, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v5

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    :try_start_2
    sget-object v2, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 152
    iput-object p0, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getLightClientSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    .line 149
    :goto_1
    :try_start_3
    check-cast p1, Lorg/ton/lite/client/LiteClient;

    .line 153
    sget-object v6, Lorg/ton/contract/SmartContract;->Companion:Lorg/ton/contract/SmartContract$Companion;

    .line 155
    sget-object v7, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 156
    invoke-direct {v5}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v8

    invoke-interface {v8}, Lorg/ton/api/pk/PrivateKeyEd25519;->publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v8

    .line 157
    sget v9, Lorg/ton/contract/wallet/WalletContract;->DEFAULT_WALLET_ID:I

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 155
    invoke-static/range {v7 .. v12}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createStateInit$default(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/api/pub/PublicKeyEd25519;IIILjava/lang/Object;)Lorg/ton/block/StateInit;

    move-result-object v7

    .line 153
    invoke-virtual {v6, v3, v7}, Lorg/ton/contract/SmartContract$Companion;->address(ILorg/ton/block/StateInit;)Lorg/ton/block/AddrStd;

    move-result-object v6

    .line 151
    iput-object v5, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    invoke-virtual {v2, p1, v6, v0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v5

    :goto_2
    :try_start_4
    check-cast p1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    move-object v0, p0

    .line 162
    :catch_2
    :goto_3
    new-instance p1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/api/pk/PrivateKeyEd25519;->publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;-><init>(ILorg/ton/api/pub/PublicKeyEd25519;)V

    .line 164
    :goto_4
    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->walletContract:Lorg/ton/contract/wallet/WalletContract;

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Wallet fetching error"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final isValidAddress$lambda$1(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lorg/ton/block/AddrStd;->Companion:Lorg/ton/block/AddrStd$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/block/AddrStd$Companion;->parse(Ljava/lang/String;)Lorg/ton/block/AddrStd;

    .line 67
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final isValidAddress$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private static final isValidMnemonic$lambda$3(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;
    .locals 2

    const-string v0, "$mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lorg/ton/mnemonic/Mnemonic;->isValid$default(Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final isValidMnemonic$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final sendInternal(Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;

    iget v3, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;

    invoke-direct {v2, v0, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 166
    iget v4, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->I$0:I

    iget-wide v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iget-object v6, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iget-object v10, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

    iget-object v11, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move-object v6, v1

    move-object/from16 v1, v16

    goto :goto_2

    :cond_3
    iget v4, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->I$0:I

    iget-wide v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iget-object v10, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

    iget-object v11, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v10

    move v10, v4

    move-object/from16 v4, v16

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    iput-object v0, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    move-object/from16 v1, p1

    iput-object v1, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p5

    iput-object v4, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    move-wide/from16 v8, p2

    iput-wide v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    move/from16 v10, p4

    iput v10, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->I$0:I

    iput v7, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    invoke-direct {v0, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getWalletSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_5

    return-object v3

    :cond_5
    move-object v12, v0

    move-object/from16 v16, v11

    move-object v11, v1

    move-object/from16 v1, v16

    .line 166
    :goto_1
    check-cast v1, Lorg/ton/contract/wallet/WalletContract;

    .line 173
    instance-of v13, v1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    if-eqz v13, :cond_8

    .line 174
    check-cast v1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    .line 175
    iput-object v12, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$3:Ljava/lang/Object;

    iput-wide v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iput v10, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->I$0:I

    iput v6, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    invoke-direct {v12, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getLightClientSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    return-object v3

    :cond_6
    move/from16 v16, v10

    move-object v10, v4

    move/from16 v4, v16

    :goto_2
    check-cast v6, Lorg/ton/lite/client/LiteClient;

    invoke-virtual {v6}, Lorg/ton/lite/client/LiteClient;->getLiteApi()Lorg/ton/lite/api/LiteApiClient;

    move-result-object v6

    .line 176
    invoke-direct {v12}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v12

    .line 177
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v7, [Lorg/ton/contract/wallet/WalletTransfer;

    const/4 v13, 0x0

    .line 36
    new-instance v14, Lorg/ton/contract/wallet/WalletTransferBuilder;

    invoke-direct {v14}, Lorg/ton/contract/wallet/WalletTransferBuilder;-><init>()V

    .line 179
    sget-object v15, Lorg/ton/block/AddrStd;->Companion:Lorg/ton/block/AddrStd$Companion;

    invoke-virtual {v15, v11}, Lorg/ton/block/AddrStd$Companion;->parseUserFriendly(Ljava/lang/String;)Lorg/ton/block/AddrStd;

    move-result-object v11

    invoke-virtual {v14, v11}, Lorg/ton/contract/wallet/WalletTransferBuilder;->setDestination(Lorg/ton/block/MsgAddressInt;)V

    .line 180
    sget-object v11, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {v11, v8, v9}, Lorg/ton/block/Coins$Companion;->ofNano(J)Lorg/ton/block/Coins;

    move-result-object v8

    invoke-virtual {v14, v8}, Lorg/ton/contract/wallet/WalletTransferBuilder;->setCoins(Lorg/ton/block/Coins;)V

    const/4 v8, 0x0

    if-eqz v10, :cond_7

    .line 181
    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;->getCell()Lorg/ton/cell/Cell;

    move-result-object v9

    goto :goto_3

    :cond_7
    move-object v9, v8

    :goto_3
    invoke-virtual {v14, v9}, Lorg/ton/contract/wallet/WalletTransferBuilder;->setBody(Lorg/ton/cell/Cell;)V

    .line 182
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    invoke-virtual {v14}, Lorg/ton/contract/wallet/WalletTransferBuilder;->build()Lorg/ton/contract/wallet/WalletTransfer;

    move-result-object v9

    aput-object v9, v7, v13

    .line 174
    iput-object v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    move-object/from16 p1, v1

    move-object/from16 p2, v6

    move-object/from16 p3, v12

    move-object/from16 p4, v4

    move-object/from16 p5, v7

    move-object/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;Ljava/lang/Integer;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    .line 15
    :cond_8
    :goto_4
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const-string v2, "test"

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    return-object v1
.end method

.method private static final sendTransaction$lambda$5(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    sget-object p0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final signData$lambda$6(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/ton/crypto/Decryptor;->sign([B)[B

    move-result-object p0

    .line 15
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final signData$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public createWallet()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/rx2/RxSingleKt;->rxSingle$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "override fun createWalle\u2026\n        }.toObservable()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public importWallet(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet$TON;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/rx2/RxSingleKt;->rxSingle$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun importWalle\u2026\n        }.toObservable()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$isValidAddress$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$isValidAddress$2;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026rror(false)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$isValidMnemonic$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$isValidMnemonic$2;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable { Mnemonic.\u2026urn { false.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendTransaction(Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string p6, "to"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance p6, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;

    const/4 v7, 0x0

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p6, p2, p1}, Lkotlinx/coroutines/rx2/RxSingleKt;->rxSingle$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;

    .line 117
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "override fun sendTransac\u2026          .toObservable()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public signData([B)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "[B>;>;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026).toError()\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
