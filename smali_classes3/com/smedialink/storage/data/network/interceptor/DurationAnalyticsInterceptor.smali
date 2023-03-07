.class public final Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor;
.super Ljava/lang/Object;
.source "DurationAnalyticsInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDurationAnalyticsInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationAnalyticsInterceptor.kt\ncom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,32:1\n56#2,6:33\n*S KotlinDebug\n*F\n+ 1 DurationAnalyticsInterceptor.kt\ncom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor\n*L\n13#1:33,6\n*E\n"
.end annotation


# instance fields
.field private final analytics$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor;->analytics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor;->analytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 11
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 17
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 18
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 20
    invoke-direct {p0}, Lcom/smedialink/storage/data/network/interceptor/DurationAnalyticsInterceptor;->getAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "duration"

    .line 21
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "REQUEST_DURATION"

    .line 20
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method
