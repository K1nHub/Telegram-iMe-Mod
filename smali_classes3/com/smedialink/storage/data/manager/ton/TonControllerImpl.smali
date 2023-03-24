.class public final Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;
.super Ljava/lang/Object;
.source "TonControllerImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/manager/ton/TonController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/smedialink/storage/data/manager/ton/TonControllerImpl\n+ 2 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,249:1\n18#2:250\n18#2:254\n1#3:251\n9#4:252\n9#4:253\n9#4:255\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/smedialink/storage/data/manager/ton/TonControllerImpl\n*L\n184#1:250\n142#1:254\n45#1:252\n137#1:253\n234#1:255\n*E\n"
.end annotation


# instance fields
.field private final client$delegate:Lkotlin/Lazy;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

.field private isInitialized:Z

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private final tonConfigRepository:Lcom/smedialink/storage/domain/repository/crypto/ton/TonConfigRepository;

.field private walletId:J


# direct methods
.method public static synthetic $r8$lambda$-emp2uQJF98dbHoF1bGf88MTPZ0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->initTonLib$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3fnO0Ujf0gj1OBvkvjzO98LlpVY(Ljava/lang/String;Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->processInputKey$lambda$12(Ljava/lang/String;Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4-gdUG6yRiYrjJ05W1IcJ-kSSjo(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->isValidWalletAddress$lambda$0(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AaJPBerhYc61RCGy7paDmf9S-Cg(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getInitTonLibObservable$lambda$11(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J9wYgaUp_2ag_MN4HiZy2yw0Tmo(Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;Ldrinkless/org/ton/TonApi$Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest$lambda$7$lambda$6(Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;Ldrinkless/org/ton/TonApi$Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LL5cqVTxWz1rxkgfvhbhxedRu0A(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->importWallet$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PNpqxaJUhtrGvFFB7R1oanwVoo8(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest$lambda$7(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2DFImN41WlJ2WfYiYQCnLdAxJA(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendTransaction$lambda$5(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YbQxSvR9Z8M6wXmP8iDGA82VKts(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->initTonLib$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vn9kEgZHOzZr7UMg6yADlm-EjXg(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendTransaction$lambda$5$lambda$4(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wxIPsCDakuM-LvMynbKd5iOugnk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->createWallet$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/storage/domain/repository/crypto/ton/TonConfigRepository;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonConfigRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 28
    iput-object p2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p3, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 30
    iput-object p4, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->tonConfigRepository:Lcom/smedialink/storage/domain/repository/crypto/ton/TonConfigRepository;

    .line 34
    sget-object p1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$client$2;->INSTANCE:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$client$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->client$delegate:Lkotlin/Lazy;

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->walletId:J

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getInitTonLibObservable(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getInitTonLibObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTonApiErrorResult(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getTonApiErrorResult(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processInputKey(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Key;Ljava/lang/String;[BLjava/util/List;)Lio/reactivex/Observable;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->processInputKey(Ldrinkless/org/ton/TonApi$Key;Ljava/lang/String;[BLjava/util/List;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendRequest(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final createWallet$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final getClient()Ldrinkless/org/ton/Client;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->client$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-client>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ldrinkless/org/ton/Client;

    return-object v0
.end method

.method private final getConfig(Ljava/lang/String;)Ldrinkless/org/ton/TonApi$Config;
    .locals 3

    .line 209
    new-instance v0, Ldrinkless/org/ton/TonApi$Config;

    const-string v1, "mainnet"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Ldrinkless/org/ton/TonApi$Config;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private final getInitTonLibObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 183
    iget-boolean v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 186
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 187
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getFilesFixedDirectory()Ljava/io/File;

    move-result-object v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 190
    new-instance v1, Ldrinkless/org/ton/TonApi$Options;

    .line 191
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getConfig(Ljava/lang/String;)Ldrinkless/org/ton/TonApi$Config;

    move-result-object v2

    .line 192
    new-instance v3, Ldrinkless/org/ton/TonApi$KeyStoreTypeDirectory;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ldrinkless/org/ton/TonApi$KeyStoreTypeDirectory;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-direct {v1, v2, v3}, Ldrinkless/org/ton/TonApi$Options;-><init>(Ldrinkless/org/ton/TonApi$Config;Ldrinkless/org/ton/TonApi$KeyStoreType;)V

    .line 194
    new-instance v0, Ldrinkless/org/ton/TonApi$Init;

    invoke-direct {v0, v1}, Ldrinkless/org/ton/TonApi$Init;-><init>(Ldrinkless/org/ton/TonApi$Options;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "sendRequest(Init(options\u2026      }\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getInitTonLibObservable$lambda$11(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$configJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    instance-of v0, p2, Ldrinkless/org/ton/TonApi$OptionsInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 199
    iput-boolean v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->isInitialized:Z

    .line 200
    check-cast p2, Ldrinkless/org/ton/TonApi$OptionsInfo;

    iget-object p2, p2, Ldrinkless/org/ton/TonApi$OptionsInfo;->configInfo:Ldrinkless/org/ton/TonApi$OptionsConfigInfo;

    iget-wide v2, p2, Ldrinkless/org/ton/TonApi$OptionsConfigInfo;->defaultWalletId:J

    iput-wide v2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->walletId:J

    .line 201
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setTonConfigJsonString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final getTonApiErrorResult(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/smedialink/storage/domain/model/Result$Error<",
            "TT;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/smedialink/storage/domain/model/Result$Error;

    .line 241
    new-instance v7, Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    .line 242
    instance-of v1, p1, Ldrinkless/org/ton/TonApi$Error;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Ldrinkless/org/ton/TonApi$Error;

    iget-object p1, p1, Ldrinkless/org/ton/TonApi$Error;->message:Ljava/lang/String;

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v8

    .line 243
    :goto_0
    sget-object v3, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NOT_DEFINED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    .line 241
    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x2

    .line 240
    invoke-direct {v0, v7, v8, p1, v8}, Lcom/smedialink/storage/domain/model/Result$Error;-><init>(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method static synthetic getTonApiErrorResult$default(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getTonApiErrorResult(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;

    move-result-object p0

    return-object p0
.end method

.method private static final importWallet$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final initTonLib()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->tonConfigRepository:Lcom/smedialink/storage/domain/repository/crypto/ton/TonConfigRepository;

    .line 164
    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/crypto/ton/TonConfigRepository;->getTonConfigJsonString()Lio/reactivex/Observable;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)V

    new-instance v2, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$2;->INSTANCE:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$2;

    new-instance v2, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun initTonLib()\u2026 .onErrorReturn { false }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final initTonLib$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final initTonLib$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final isValidWalletAddress$lambda$0(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of p0, p0, Ldrinkless/org/ton/TonApi$UnpackedAccountAddress;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 9
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private final processInputKey(Ldrinkless/org/ton/TonApi$Key;Ljava/lang/String;[BLjava/util/List;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldrinkless/org/ton/TonApi$Key;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 222
    new-instance v0, Ldrinkless/org/ton/TonApi$InputKeyRegular;

    invoke-direct {v0, p1, p3}, Ldrinkless/org/ton/TonApi$InputKeyRegular;-><init>(Ldrinkless/org/ton/TonApi$Key;[B)V

    .line 223
    iput-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    .line 224
    new-instance p3, Ldrinkless/org/ton/TonApi$WalletV3InitialAccountState;

    iget-object p1, p1, Ldrinkless/org/ton/TonApi$Key;->publicKey:Ljava/lang/String;

    iget-wide v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->walletId:J

    invoke-direct {p3, p1, v1, v2}, Ldrinkless/org/ton/TonApi$WalletV3InitialAccountState;-><init>(Ljava/lang/String;J)V

    .line 225
    new-instance p1, Ldrinkless/org/ton/TonApi$GetAccountAddress;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p3, v1, v2}, Ldrinkless/org/ton/TonApi$GetAccountAddress;-><init>(Ldrinkless/org/ton/TonApi$InitialAccountState;II)V

    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 226
    iget-object p3, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p3}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 227
    new-instance p3, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2, p4, v0, p0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "sendRequest(GetAccountAd\u2026      }\n                }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final processInputKey$lambda$12(Ljava/lang/String;Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "$guid"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newInputKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    instance-of v0, p4, Ldrinkless/org/ton/TonApi$AccountAddress;

    if-eqz v0, :cond_0

    new-instance p3, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    .line 231
    invoke-static {p1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 232
    check-cast p4, Ldrinkless/org/ton/TonApi$AccountAddress;

    iget-object p4, p4, Ldrinkless/org/ton/TonApi$AccountAddress;->accountAddress:Ljava/lang/String;

    const-string v0, "addressResult.accountAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p3, p0, p1, p4, p2}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;)V

    .line 9
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p0, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p3, p4}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getTonApiErrorResult(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldrinkless/org/ton/TonApi$Function;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026   }, null)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final sendRequest$lambda$7(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getClient()Ldrinkless/org/ton/Client;

    move-result-object p0

    new-instance v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;-><init>(Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ldrinkless/org/ton/Client;->send(Ldrinkless/org/ton/TonApi$Function;Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V

    return-void
.end method

.method private static final sendRequest$lambda$7$lambda$6(Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;Ldrinkless/org/ton/TonApi$Object;)V
    .locals 2

    const-string v0, "$query"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    instance-of v0, p2, Ldrinkless/org/ton/TonApi$Error;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TonApi query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " error "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, p2

    check-cast p0, Ldrinkless/org/ton/TonApi$Error;

    iget-object p0, p0, Ldrinkless/org/ton/TonApi$Error;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_0
    invoke-interface {p1, p2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 158
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final sendTransaction$lambda$5(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    instance-of v0, p1, Ldrinkless/org/ton/TonApi$QueryInfo;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ldrinkless/org/ton/TonApi$QuerySend;

    move-object v1, p1

    check-cast v1, Ldrinkless/org/ton/TonApi$QueryInfo;

    iget-wide v1, v1, Ldrinkless/org/ton/TonApi$QueryInfo;->id:J

    invoke-direct {v0, v1, v2}, Ldrinkless/org/ton/TonApi$QuerySend;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getTonApiErrorResult(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "just(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private static final sendTransaction$lambda$5$lambda$4(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$signResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    instance-of p2, p2, Ldrinkless/org/ton/TonApi$Ok;

    if-eqz p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->getTonApiErrorResult(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public createWallet(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->initTonLib()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$createWallet$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$createWallet$1;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;

    invoke-direct {p1, v1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun createWalle\u2026          }\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public importWallet(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "words"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->initTonLib()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda7;

    invoke-direct {p1, v1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "override fun importWalle\u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isValidWalletAddress(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Ldrinkless/org/ton/TonApi$UnpackAccountAddress;

    invoke-direct {v0, p1}, Ldrinkless/org/ton/TonApi$UnpackAccountAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda10;->INSTANCE:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda10;

    .line 44
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "sendRequest(UnpackAccoun\u2026s()\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendTransaction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)Lio/reactivex/Observable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "ZI)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const-string v4, "from"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "to"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 119
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_1

    :cond_0
    new-array v5, v4, [B

    :cond_1
    if-nez p6, :cond_3

    .line 120
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 121
    :cond_2
    new-instance v3, Ldrinkless/org/ton/TonApi$MsgDataDecryptedText;

    invoke-direct {v3, v5}, Ldrinkless/org/ton/TonApi$MsgDataDecryptedText;-><init>([B)V

    goto :goto_1

    .line 120
    :cond_3
    :goto_0
    new-instance v3, Ldrinkless/org/ton/TonApi$MsgDataText;

    invoke-direct {v3, v5}, Ldrinkless/org/ton/TonApi$MsgDataText;-><init>([B)V

    :goto_1
    move-object v11, v3

    .line 122
    iget-object v3, v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    if-eqz v3, :cond_4

    iget-object v3, v3, Ldrinkless/org/ton/TonApi$InputKeyRegular;->key:Ldrinkless/org/ton/TonApi$Key;

    if-eqz v3, :cond_4

    iget-object v3, v3, Ldrinkless/org/ton/TonApi$Key;->publicKey:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    const-string v3, ""

    .line 123
    :cond_5
    new-instance v5, Ldrinkless/org/ton/TonApi$ActionMsg;

    const/4 v13, 0x1

    new-array v14, v13, [Ldrinkless/org/ton/TonApi$MsgMessage;

    new-instance v15, Ldrinkless/org/ton/TonApi$MsgMessage;

    new-instance v7, Ldrinkless/org/ton/TonApi$AccountAddress;

    invoke-direct {v7, v2}, Ldrinkless/org/ton/TonApi$AccountAddress;-><init>(Ljava/lang/String;)V

    move-object v6, v15

    move-object v8, v3

    move-wide/from16 v9, p3

    move/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Ldrinkless/org/ton/TonApi$MsgMessage;-><init>(Ldrinkless/org/ton/TonApi$AccountAddress;Ljava/lang/String;JLdrinkless/org/ton/TonApi$MsgData;I)V

    aput-object v15, v14, v4

    invoke-direct {v5, v14, v13}, Ldrinkless/org/ton/TonApi$ActionMsg;-><init>([Ldrinkless/org/ton/TonApi$MsgMessage;Z)V

    .line 124
    new-instance v2, Ldrinkless/org/ton/TonApi$CreateQuery;

    .line 125
    iget-object v4, v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    new-instance v6, Ldrinkless/org/ton/TonApi$AccountAddress;

    invoke-direct {v6, v1}, Ldrinkless/org/ton/TonApi$AccountAddress;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 126
    new-instance v7, Ldrinkless/org/ton/TonApi$WalletV3InitialAccountState;

    iget-wide v8, v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->walletId:J

    invoke-direct {v7, v3, v8, v9}, Ldrinkless/org/ton/TonApi$WalletV3InitialAccountState;-><init>(Ljava/lang/String;J)V

    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v6

    move/from16 p4, v1

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    .line 124
    invoke-direct/range {p1 .. p6}, Ldrinkless/org/ton/TonApi$CreateQuery;-><init>(Ldrinkless/org/ton/TonApi$InputKey;Ldrinkless/org/ton/TonApi$AccountAddress;ILdrinkless/org/ton/TonApi$Action;Ldrinkless/org/ton/TonApi$InitialAccountState;)V

    .line 128
    invoke-direct {v0, v2}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->sendRequest(Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 129
    iget-object v2, v0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "sendRequest(signRequest)\u2026      }\n                }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
