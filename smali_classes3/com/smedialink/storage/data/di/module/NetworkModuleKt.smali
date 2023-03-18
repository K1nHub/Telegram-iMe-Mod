.class public final Lcom/smedialink/storage/data/di/module/NetworkModuleKt;
.super Ljava/lang/Object;
.source "NetworkModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkModule.kt\ncom/smedialink/storage/data/di/module/NetworkModuleKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,176:1\n13579#2,2:177\n*S KotlinDebug\n*F\n+ 1 NetworkModule.kt\ncom/smedialink/storage/data/di/module/NetworkModuleKt\n*L\n134#1:177,2\n*E\n"
.end annotation


# static fields
.field private static final DEFAULT_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final DURATION_ANALYTIC_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static final ERROR_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static final GOOGLE_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final KIKLIKO_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final LOGGING_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static final METADATA_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

.field private static final SERVER_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final SERVER_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final TON_CONFIG_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

.field private static final networkModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "LOGGING_INTERCEPTOR"

    .line 37
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->LOGGING_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "METADATA_INTERCEPTOR"

    .line 38
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->METADATA_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "DURATION_ANALYTIC_INTERCEPTOR"

    .line 39
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->DURATION_ANALYTIC_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "ERROR_INTERCEPTOR"

    .line 40
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->ERROR_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "DEFAULT_CLIENT"

    .line 42
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->DEFAULT_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "MAIN_CLIENT"

    .line 43
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->SERVER_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "TON_CONFIG_CLIENT"

    .line 44
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->TON_CONFIG_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "GOOGLE_RETROFIT"

    .line 46
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->GOOGLE_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "KIKLIKO_RETROFIT"

    .line 47
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->KIKLIKO_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "SERVER_RETROFIT"

    .line 48
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->SERVER_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    .line 50
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt$networkModule$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/NetworkModuleKt$networkModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->networkModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final synthetic access$createCache(Lorg/koin/core/scope/Scope;)Lokhttp3/Cache;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->createCache(Lorg/koin/core/scope/Scope;)Lokhttp3/Cache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createGson()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->createGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createLoggingInterceptor()Lcom/ihsanbal/logging/LoggingInterceptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->createLoggingInterceptor()Lcom/ihsanbal/logging/LoggingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method private static final createCache(Lorg/koin/core/scope/Scope;)Lokhttp3/Cache;
    .locals 3

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lorg/koin/android/ext/koin/ModuleExtKt;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "httpcache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    new-instance p0, Lokhttp3/Cache;

    const/high16 v1, 0xc800000

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    return-object p0
.end method

.method private static final createGson()Lcom/google/gson/Gson;
    .locals 2

    .line 161
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 162
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "GsonBuilder()\n          \u2026                .create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final createLoggingInterceptor()Lcom/ihsanbal/logging/LoggingInterceptor;
    .locals 2

    .line 168
    new-instance v0, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;

    invoke-direct {v0}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;-><init>()V

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;->loggable(Z)Lcom/ihsanbal/logging/LoggingInterceptor$Builder;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/ihsanbal/logging/Level;->BASIC:Lcom/ihsanbal/logging/Level;

    invoke-virtual {v0, v1}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;->setLevel(Lcom/ihsanbal/logging/Level;)Lcom/ihsanbal/logging/LoggingInterceptor$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 171
    invoke-virtual {v0, v1}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;->log(I)Lcom/ihsanbal/logging/LoggingInterceptor$Builder;

    move-result-object v0

    const-string v1, "Request"

    .line 172
    invoke-virtual {v0, v1}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;->request(Ljava/lang/String;)Lcom/ihsanbal/logging/LoggingInterceptor$Builder;

    move-result-object v0

    const-string v1, "Response"

    .line 173
    invoke-virtual {v0, v1}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;->response(Ljava/lang/String;)Lcom/ihsanbal/logging/LoggingInterceptor$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/ihsanbal/logging/LoggingInterceptor$Builder;->build()Lcom/ihsanbal/logging/LoggingInterceptor;

    move-result-object v0

    const-string v1, "Builder()\n              \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final varargs createOkHttpClient(Lokhttp3/Cache;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;
    .locals 3

    const-string v0, "cache"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 130
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 13579
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 135
    invoke-virtual {p0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/smedialink/storage/data/manager/FlipperManager;->isFlipperEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    new-instance p1, Lcom/facebook/flipper/plugins/network/FlipperOkhttpInterceptor;

    sget-object v0, Lcom/smedialink/storage/data/manager/FlipperManager;->INSTANCE:Lcom/smedialink/storage/data/manager/FlipperManager;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/FlipperManager;->getNetworkFlipperPlugin()Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/flipper/plugins/network/FlipperOkhttpInterceptor;-><init>(Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;)V

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 141
    :cond_1
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final createRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/google/gson/Gson;)Lretrofit2/Retrofit;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 122
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 124
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 125
    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-string p1, "Builder()\n              \u2026\n                .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createTonConfigOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 144
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 145
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static final getDEFAULT_CLIENT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 42
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->DEFAULT_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getDURATION_ANALYTIC_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 39
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->DURATION_ANALYTIC_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getERROR_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 40
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->ERROR_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getGOOGLE_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 46
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->GOOGLE_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getKIKLIKO_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 47
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->KIKLIKO_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getLOGGING_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 37
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->LOGGING_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getMETADATA_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 38
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->METADATA_INTERCEPTOR:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getNetworkModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 50
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->networkModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getSERVER_CLIENT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 43
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->SERVER_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getSERVER_RETROFIT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 48
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->SERVER_RETROFIT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getTON_CONFIG_CLIENT()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 44
    sget-object v0, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->TON_CONFIG_CLIENT:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method
