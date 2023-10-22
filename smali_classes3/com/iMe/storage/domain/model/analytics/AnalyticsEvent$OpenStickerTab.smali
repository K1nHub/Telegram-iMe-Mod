.class public final Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;
.super Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenStickerTab"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "open_sticker_tab"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 12
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
