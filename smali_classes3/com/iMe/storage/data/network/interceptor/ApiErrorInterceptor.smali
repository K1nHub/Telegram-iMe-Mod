.class public final Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;
.super Ljava/lang/Object;
.source "ApiErrorInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiErrorInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiErrorInterceptor.kt\ncom/iMe/storage/data/network/interceptor/ApiErrorInterceptor\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 4 GsonExt.kt\ncom/iMe/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,157:1\n56#2,6:158\n56#2,6:164\n56#2,6:170\n56#2,6:176\n6#3,2:182\n8#3,4:186\n25#4,2:184\n*S KotlinDebug\n*F\n+ 1 ApiErrorInterceptor.kt\ncom/iMe/storage/data/network/interceptor/ApiErrorInterceptor\n*L\n30#1:158,6\n31#1:164,6\n32#1:170,6\n33#1:176,6\n42#1:182,2\n42#1:186,4\n42#1:184,2\n*E\n"
.end annotation


# instance fields
.field private final authManager$delegate:Lkotlin/Lazy;

.field private final binanceInternalRepository$delegate:Lkotlin/Lazy;

.field private final binancePayManager$delegate:Lkotlin/Lazy;

.field private final gson:Lcom/google/gson/Gson;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final walletSessionInteractor$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->gson:Lcom/google/gson/Gson;

    .line 25
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 26
    iput-object p3, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->authManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$2;

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$3;

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->binanceInternalRepository$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$4;

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->walletSessionInteractor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final forceWalletLogout()V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->logout()V

    .line 152
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method private final getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-object v0
.end method

.method private final getBinanceInternalRepository()Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->binanceInternalRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;

    return-object v0
.end method

.method private final getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    return-object v0
.end method

.method private final getWalletSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->walletSessionInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    return-object v0
.end method

.method private final processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1

    .line 137
    invoke-virtual {p3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p3

    .line 138
    sget-object v0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    invoke-virtual {v0, p4}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 135
    invoke-interface {p2, p1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private final repeatBinanceRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4

    .line 100
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 102
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "authorization-binance"

    if-eqz p1, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinanceInternalRepository()Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;

    move-result-object p1

    .line 104
    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->REFRESH_TOKEN:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-interface {p1, v0, v3}, Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;->getAuthTokens(Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 107
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-direct {p0, v2, p2, p3, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    goto :goto_1

    .line 110
    :cond_3
    invoke-direct {p0, v2, p2, p3, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    :cond_4
    :goto_1
    return-object p4
.end method

.method private final repeatRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 122
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "Authorization"

    if-eqz p1, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getWalletSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->refreshToken()Lio/reactivex/Observable;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 127
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-direct {p0, v2, p2, p3, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    goto :goto_1

    .line 130
    :cond_2
    invoke-direct {p0, v2, p2, p3, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    :cond_3
    :goto_1
    return-object p4
.end method

.method private final requestForceAppUpdate()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 144
    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->setAppVersionRequiredUpdate(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->logout()V

    .line 146
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AppUpdateRequired;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AppUpdateRequired;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 23
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/HttpClientExtKt;->getClonedBodyString(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v4, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$intercept$lambda$0$$inlined$fromJsonTokenType$1;

    invoke-direct {v4}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$intercept$lambda$0$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-static {v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 44
    check-cast v2, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isError()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_7

    .line 45
    sget-object v3, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;->Companion:Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 82
    :pswitch_0
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->forceWalletLogout()V

    goto :goto_2

    .line 69
    :pswitch_1
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v4, v5

    :cond_2
    if-eqz v4, :cond_4

    .line 72
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    .line 73
    :cond_3
    monitor-enter p0

    .line 74
    :try_start_1
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->repeatRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->forceWalletLogout()V

    goto :goto_2

    .line 57
    :pswitch_2
    monitor-enter p0

    .line 58
    :try_start_2
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->logout()V

    .line 60
    iget-object p1, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 62
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 51
    :pswitch_3
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    .line 52
    :cond_6
    monitor-enter p0

    .line 53
    :try_start_3
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->repeatBinanceRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 52
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    .line 47
    :pswitch_4
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->requestForceAppUpdate()V

    :cond_7
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
