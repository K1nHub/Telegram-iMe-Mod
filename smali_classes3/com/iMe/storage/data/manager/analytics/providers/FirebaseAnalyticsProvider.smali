.class public final Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsProvider.kt"

# interfaces
.implements Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseAnalyticsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAnalyticsProvider.kt\ncom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,19:1\n56#2,6:20\n*S KotlinDebug\n*F\n+ 1 FirebaseAnalyticsProvider.kt\ncom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider\n*L\n12#1:20,6\n*E\n"
.end annotation


# instance fields
.field private final analytics$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider;->analytics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider;->analytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 10
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider;->getAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;->getProperties()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
