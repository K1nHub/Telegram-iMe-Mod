.class public final Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;
.super Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenEmojiTab"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "open_emoji_tab"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
