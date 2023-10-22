.class public final Lcom/iMe/storage/data/manager/ton/TonControllerImpl;
.super Ljava/lang/Object;
.source "TonControllerImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/manager/ton/TonController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl\n+ 2 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 WalletTransfer.kt\norg/ton/contract/wallet/WalletTransferKt\n+ 6 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,201:1\n6#2,6:202\n123#3:208\n1#4:209\n35#5,2:210\n15#6:212\n15#6:224\n8#6,2:225\n15#6:227\n314#7,11:213\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl\n*L\n54#1:202,6\n125#1:208\n164#1:210,2\n173#1:212\n66#1:224\n111#1:225,2\n118#1:227\n177#1:213,11\n*E\n"
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

.method public static synthetic $r8$lambda$GP17rYU8zIWi3Dfw_AKIDXutFWo(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->sendTransaction$lambda$3(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UqlkkB4szk3bioQOQqAAUed48S8(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->signData$lambda$4(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_bkOJwkPkVVaipLjG_4ICiV6pr8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->signData$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 43
    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 44
    iput-object p4, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->tonConfigRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

    .line 47
    sget-object p2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->json$delegate:Lkotlin/Lazy;

    .line 55
    :try_start_0
    new-instance p2, Ljava/io/File;

    .line 56
    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getFilesFixedDirectory()Ljava/io/File;

    move-result-object p3

    .line 57
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

    .line 55
    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
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

    .line 40
    iget-object p0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getPrivateKeySafe(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTonConfigRepository$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->tonConfigRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

    return-object p0
.end method

.method public static final synthetic access$initLiteClient(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initLiteClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initWallet(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->initWallet(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendInternal(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->sendInternal(Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPrivateKey$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 0

    .line 40
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

    .line 178
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getTonConfigRepository$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;->getTonConfigJsonString()Lio/reactivex/Observable;

    move-result-object v1

    .line 180
    sget-object v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$1;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$1;

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Predicate$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Predicate$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;

    invoke-direct {v2, p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 190
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 192
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$3;

    invoke-direct {v2, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$3;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 193
    new-instance v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$4;

    invoke-direct {v2, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$4;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 191
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 196
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

    .line 47
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

    .line 137
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

    .line 134
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

    .line 140
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

    .line 124
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

    .line 125
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

    .line 124
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

    .line 125
    check-cast p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    .line 129
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    .line 127
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

    .line 142
    iget v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    iget-object v4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    sget-object v2, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 144
    iput-object p0, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getLightClientSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 142
    :goto_1
    check-cast p1, Lorg/ton/lite/client/LiteClient;

    .line 145
    sget-object v5, Lorg/ton/contract/SmartContract;->Companion:Lorg/ton/contract/SmartContract$Companion;

    const/4 v6, 0x0

    .line 147
    sget-object v7, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 148
    invoke-direct {v4}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v8

    invoke-interface {v8}, Lorg/ton/api/pk/PrivateKeyEd25519;->publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v8

    .line 149
    sget v9, Lorg/ton/contract/wallet/WalletContract;->DEFAULT_WALLET_ID:I

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 147
    invoke-static/range {v7 .. v12}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->createStateInit$default(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lorg/ton/api/pub/PublicKeyEd25519;IIILjava/lang/Object;)Lorg/ton/block/StateInit;

    move-result-object v7

    .line 145
    invoke-virtual {v5, v6, v7}, Lorg/ton/contract/SmartContract$Companion;->address(ILorg/ton/block/StateInit;)Lorg/ton/block/AddrStd;

    move-result-object v5

    .line 143
    iput-object v4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$initWallet$1;->label:I

    invoke-virtual {v2, p1, v5, v0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v4

    .line 152
    :goto_2
    check-cast p1, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

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

    .line 65
    sget-object v0, Lorg/ton/block/AddrStd;->Companion:Lorg/ton/block/AddrStd$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/block/AddrStd$Companion;->parse(Ljava/lang/String;)Lorg/ton/block/AddrStd;

    .line 66
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

    .line 68
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final sendInternal(Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;

    iget v1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;

    invoke-direct {v0, p0, p5}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 154
    iget v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iget-object p3, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$3:Ljava/lang/Object;

    check-cast p3, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    iget-object p4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    check-cast p4, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

    iget-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide p2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iget-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;

    iget-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    iput-object p0, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iput v5, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getWalletSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 154
    :goto_1
    check-cast p5, Lorg/ton/contract/wallet/WalletContract;

    .line 160
    instance-of v6, p5, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    if-eqz v6, :cond_8

    .line 161
    check-cast p5, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;

    .line 162
    iput-object v2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$3:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->J$0:J

    iput v4, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    invoke-direct {v2, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getLightClientSafe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v2

    move-object v2, p1

    move-wide p1, p2

    move-object p3, p5

    move-object p5, v4

    move-object v4, v9

    :goto_2
    check-cast p5, Lorg/ton/lite/client/LiteClient;

    invoke-virtual {p5}, Lorg/ton/lite/client/LiteClient;->getLiteApi()Lorg/ton/lite/api/LiteApiClient;

    move-result-object p5

    .line 163
    invoke-direct {v4}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getPrivateKeySafe()Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object v4

    new-array v5, v5, [Lorg/ton/contract/wallet/WalletTransfer;

    const/4 v6, 0x0

    .line 36
    new-instance v7, Lorg/ton/contract/wallet/WalletTransferBuilder;

    invoke-direct {v7}, Lorg/ton/contract/wallet/WalletTransferBuilder;-><init>()V

    .line 165
    sget-object v8, Lorg/ton/block/AddrStd;->Companion:Lorg/ton/block/AddrStd$Companion;

    invoke-virtual {v8, v2}, Lorg/ton/block/AddrStd$Companion;->parseUserFriendly(Ljava/lang/String;)Lorg/ton/block/AddrStd;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/ton/contract/wallet/WalletTransferBuilder;->setDestination(Lorg/ton/block/MsgAddressInt;)V

    .line 166
    sget-object v2, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {v2, p1, p2}, Lorg/ton/block/Coins$Companion;->ofNano(J)Lorg/ton/block/Coins;

    move-result-object p1

    invoke-virtual {v7, p1}, Lorg/ton/contract/wallet/WalletTransferBuilder;->setCoins(Lorg/ton/block/Coins;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_7

    .line 167
    invoke-virtual {p4}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;->getCell()Lorg/ton/cell/Cell;

    move-result-object p2

    goto :goto_3

    :cond_7
    move-object p2, p1

    :goto_3
    invoke-virtual {v7, p2}, Lorg/ton/contract/wallet/WalletTransferBuilder;->setBody(Lorg/ton/cell/Cell;)V

    .line 168
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    invoke-virtual {v7}, Lorg/ton/contract/wallet/WalletTransferBuilder;->build()Lorg/ton/contract/wallet/WalletTransfer;

    move-result-object p2

    aput-object p2, v5, v6

    .line 161
    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    invoke-virtual {p3, p5, v4, v5, v0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 15
    :cond_8
    :goto_4
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const-string p2, "test"

    invoke-virtual {p1, p2}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method private static final sendTransaction$lambda$3(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
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

.method private static final signData$lambda$4(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
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

.method private static final signData$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
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

    .line 73
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/rx2/RxSingleKt;->rxSingle$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 85
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

    .line 88
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/rx2/RxSingleKt;->rxSingle$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    .line 99
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

    .line 64
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$isValidAddress$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$isValidAddress$2;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026rror(false)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendTransaction(Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string p5, "to"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance p5, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;

    const/4 v6, 0x0

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendTransaction$1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p5, p2, p1}, Lkotlinx/coroutines/rx2/RxSingleKt;->rxSingle$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;

    .line 110
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 113
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

    .line 117
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$signData$2;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026).toError()\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
