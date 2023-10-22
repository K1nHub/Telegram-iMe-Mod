.class public final Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsManager.kt\ncom/iMe/storage/data/manager/analytics/AnalyticsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1855#2,2:23\n*S KotlinDebug\n*F\n+ 1 AnalyticsManager.kt\ncom/iMe/storage/data/manager/analytics/AnalyticsManager\n*L\n18#1:23,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

.field private static final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->INSTANCE:Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->providers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerProvider(Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->providers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->providers:Ljava/util/List;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;

    .line 18
    invoke-interface {v1, p0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
