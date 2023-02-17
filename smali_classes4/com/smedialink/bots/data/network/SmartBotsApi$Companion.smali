.class public final Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;
.super Ljava/lang/Object;
.source "SmartBotsApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/bots/data/network/SmartBotsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;

.field private static INSTANCE:Lcom/smedialink/bots/data/network/SmartBotsApi;

.field private static final client:Lokhttp3/OkHttpClient;

.field private static final interceptor:Lokhttp3/logging/HttpLoggingInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;

    invoke-direct {v0}, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;-><init>()V

    sput-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->$$INSTANCE:Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;

    .line 32
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 33
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 32
    sput-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->interceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    .line 40
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/smedialink/bots/data/network/SmartBotsApi;
    .locals 2

    .line 43
    sget-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->INSTANCE:Lcom/smedialink/bots/data/network/SmartBotsApi;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://us-central1-ime-messenger.cloudfunctions.net/"

    .line 45
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 47
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 48
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/smedialink/bots/data/network/SmartBotsApi;

    .line 50
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/bots/data/network/SmartBotsApi;

    .line 44
    sput-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->INSTANCE:Lcom/smedialink/bots/data/network/SmartBotsApi;

    .line 53
    :cond_0
    sget-object v0, Lcom/smedialink/bots/data/network/SmartBotsApi$Companion;->INSTANCE:Lcom/smedialink/bots/data/network/SmartBotsApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
