.class public final Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;
.super Ljava/lang/Object;
.source "AnalyticsManager.kt"


# static fields
.field private static final analytics:Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->INSTANCE:Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    sput-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->analytics:Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    return-void
.end method

.method public static final getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;
    .locals 1

    .line 5
    sget-object v0, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->analytics:Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    return-object v0
.end method
