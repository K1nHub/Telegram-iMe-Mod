.class public final Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;
.super Ljava/lang/Object;
.source "MetadataInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetadataInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetadataInterceptor.kt\ncom/iMe/storage/data/network/interceptor/MetadataInterceptor\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,59:1\n56#2,6:60\n56#2,6:66\n56#2,6:72\n*S KotlinDebug\n*F\n+ 1 MetadataInterceptor.kt\ncom/iMe/storage/data/network/interceptor/MetadataInterceptor\n*L\n15#1:60,6\n16#1:66,6\n17#1:72,6\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;


# instance fields
.field private final binancePayManager$delegate:Lkotlin/Lazy;

.field private final sessionRepository$delegate:Lkotlin/Lazy;

.field private final telegramGateway$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

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
    new-instance v2, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->telegramGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$2;

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->sessionRepository$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$3;

    invoke-direct {v1, p0, v3, v3}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    return-object v0
.end method

.method private final getSessionRepository()Lcom/iMe/storage/domain/repository/wallet/SessionRepository;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->sessionRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    return-object v0
.end method

.method private final getTelegramGateway()Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->telegramGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object v0
.end method

.method private final isBinanceRequest(Lokhttp3/Request;)Z
    .locals 4

    .line 44
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
    .locals 7

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->getSessionRepository()Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/repository/wallet/SessionRepository;->getCurrentAccountToken(Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 25
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 26
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->getTelegramGateway()Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v4

    invoke-interface {v4}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-device-id"

    invoke-virtual {v3, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 27
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->getTelegramGateway()Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v4

    invoke-interface {v4}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accept-language"

    invoke-virtual {v3, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 28
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->getTelegramGateway()Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v4

    invoke-interface {v4}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-app-version"

    invoke-virtual {v3, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 29
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "RELEASE"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "x-device-operating-system-version"

    invoke-virtual {v3, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "x-device-operating-system"

    const-string v5, "ANDROID"

    .line 30
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    if-nez v5, :cond_3

    .line 33
    sget-object v5, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    const-string v6, "token"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Authorization"

    invoke-virtual {v3, v5, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 35
    :cond_3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->isBinanceRequest(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v4

    :cond_4
    if-eqz v1, :cond_5

    .line 36
    sget-object v0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authorization-binance"

    invoke-virtual {v3, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 39
    :cond_5
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 40
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
