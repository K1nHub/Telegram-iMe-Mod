.class public final Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;
.super Ljava/lang/Object;
.source "MetadataInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetadataInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetadataInterceptor.kt\ncom/smedialink/storage/data/network/interceptor/MetadataInterceptor\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,67:1\n56#2,6:68\n56#2,6:74\n56#2,6:80\n*S KotlinDebug\n*F\n+ 1 MetadataInterceptor.kt\ncom/smedialink/storage/data/network/interceptor/MetadataInterceptor\n*L\n16#1:68,6\n17#1:74,6\n18#1:80,6\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;


# instance fields
.field private final binancePayManager$delegate:Lkotlin/Lazy;

.field private final telegramGateway$delegate:Lkotlin/Lazy;

.field private final walletSessionRepository$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->telegramGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$2;

    invoke-direct {v2, p0, v3, v3}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->walletSessionRepository$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$3;

    invoke-direct {v1, p0, v3, v3}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getBinancePayManager()Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    return-object v0
.end method

.method private final getTelegramGateway()Lcom/smedialink/storage/domain/gateway/TelegramGateway;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->telegramGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-object v0
.end method

.method private final getWalletSessionRepository()Lcom/smedialink/storage/domain/repository/wallet/WalletSessionRepository;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->walletSessionRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/repository/wallet/WalletSessionRepository;

    return-object v0
.end method

.method private final isBinanceRequest(Lokhttp3/Request;)Z
    .locals 4

    .line 49
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/binance/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 13
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->getWalletSessionRepository()Lcom/smedialink/storage/domain/repository/wallet/WalletSessionRepository;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/repository/wallet/WalletSessionRepository;->getCurrentAccountToken(Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 28
    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->getTelegramGateway()Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v3

    invoke-interface {v3}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-device-id"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 29
    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->getTelegramGateway()Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v3

    invoke-interface {v3}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getCurrentLocaleInformation()Lcom/smedialink/storage/domain/model/telegram/TelegramLocaleInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/telegram/TelegramLocaleInformation;->getSupportedLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "accept-language"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 30
    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->getTelegramGateway()Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v3

    invoke-interface {v3}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-app-version"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 31
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "RELEASE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "x-device-operating-system-version"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "x-device-operating-system"

    const-string v4, "ANDROID"

    .line 32
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    .line 35
    sget-object v4, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;

    const-string v5, "token"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Authorization"

    invoke-virtual {v2, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 37
    :cond_2
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->isBinanceRequest(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->getBinancePayManager()Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_6

    .line 38
    sget-object v0, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;

    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->getBinancePayManager()Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authorization-binance"

    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 41
    :cond_6
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 42
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
