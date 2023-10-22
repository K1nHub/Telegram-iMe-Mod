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
    value = "SMAP\nApiErrorInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiErrorInterceptor.kt\ncom/iMe/storage/data/network/interceptor/ApiErrorInterceptor\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 4 GsonExt.kt\ncom/iMe/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,176:1\n56#2,6:177\n56#2,6:183\n56#2,6:189\n56#2,6:195\n6#3,2:201\n8#3,4:205\n25#4,2:203\n*S KotlinDebug\n*F\n+ 1 ApiErrorInterceptor.kt\ncom/iMe/storage/data/network/interceptor/ApiErrorInterceptor\n*L\n29#1:177,6\n30#1:183,6\n31#1:189,6\n32#1:195,6\n39#1:201,2\n39#1:205,4\n39#1:203,2\n*E\n"
.end annotation


# instance fields
.field private final authManager$delegate:Lkotlin/Lazy;

.field private final binanceInternalRepository$delegate:Lkotlin/Lazy;

.field private final binancePayManager$delegate:Lkotlin/Lazy;

.field private final gson:Lcom/google/gson/Gson;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final sessionInteractor$delegate:Lkotlin/Lazy;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->gson:Lcom/google/gson/Gson;

    .line 25
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 26
    iput-object p3, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

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

    .line 29
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->authManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$2;

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->binanceInternalRepository$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$3;

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->binancePayManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$4;

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->sessionInteractor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final forceWalletLogout()V
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->logout()V

    .line 173
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method private final getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-object v0
.end method

.method private final getBinanceInternalRepository()Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;
    .locals 1

    .line 30
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

.method private final getSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->sessionInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;

    return-object v0
.end method

.method private final processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1

    .line 158
    invoke-virtual {p3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p3

    .line 159
    sget-object v0, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    invoke-virtual {v0, p4}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 156
    invoke-interface {p2, p1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private final repeatBinanceRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 100
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "authorization-binance"

    if-eqz p1, :cond_3

    .line 101
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinanceInternalRepository()Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;

    move-result-object p1

    .line 103
    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->REFRESH_TOKEN:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    .line 104
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    .line 102
    :cond_1
    invoke-interface {p1, v0, v3}, Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;->getAuthTokens(Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 108
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 108
    :goto_0
    invoke-direct {p0, v2, p2, p3, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    goto :goto_1

    .line 116
    :cond_3
    invoke-direct {p0, v2, p2, p3, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    :cond_4
    :goto_1
    return-object p4
.end method

.method private final repeatRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 3

    .line 131
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 133
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "Authorization"

    if-eqz p1, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->refreshToken()Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 138
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 138
    :goto_0
    invoke-direct {p0, v2, p2, p3, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    goto :goto_1

    .line 146
    :cond_2
    invoke-direct {p0, v2, p2, p3, v0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->processNewRequest(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p4

    :cond_3
    :goto_1
    return-object p4
.end method

.method private final requestForceAppUpdate()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 165
    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->setAppVersionRequiredUpdate(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->logout()V

    .line 167
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
    .locals 7

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 36
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 39
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

    .line 41
    :goto_0
    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isError()Z

    move-result v6

    if-ne v6, v4, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_7

    .line 42
    sget-object v6, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;->Companion:Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->forceWalletLogout()V

    goto :goto_3

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

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
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

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->forceWalletLogout()V

    goto :goto_3

    .line 56
    :pswitch_2
    monitor-enter p0

    .line 57
    :try_start_2
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 58
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->logout()V

    .line 59
    iget-object p1, p0, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 61
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 49
    :pswitch_3
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->getBinancePayManager()Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    .line 50
    :cond_6
    monitor-enter p0

    .line 51
    :try_start_3
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->repeatBinanceRequestWithNewToken(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    monitor-exit p0

    goto :goto_3

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    .line 44
    :pswitch_4
    invoke-direct {p0}, Lcom/iMe/storage/data/network/interceptor/ApiErrorInterceptor;->requestForceAppUpdate()V

    :cond_7
    :goto_3
    return-object v1

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
