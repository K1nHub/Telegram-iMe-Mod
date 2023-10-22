.class public abstract Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;
.super Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CatalogEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$OpenCatalogScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$PreviewCatalogItem;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$SubscribeCatalogItem;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent$UnsubscribeCatalogItem;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    iput-object p1, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;->name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 59
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 57
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;->properties:Ljava/util/HashMap;

    return-object v0
.end method
