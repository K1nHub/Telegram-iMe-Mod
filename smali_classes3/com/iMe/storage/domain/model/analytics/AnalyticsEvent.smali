.class public abstract Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$ActiveDesktopUser;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$CatalogEvent;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$ClickBuyPremiumButton;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$ClickGiftPremiumButton;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenArchiveScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenBuyTelegramPremiumScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenEmojiTab;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenGifTab;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenGiftTelegramPremiumScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenKiklikoTab;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStickerTab;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenStoryScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$PreviewClip;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SearchClip;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SearchGif;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SelectClipCategory;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SelectGifCategory;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendClip;,
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;
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
.method private constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;->name:Ljava/lang/String;

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

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;->properties:Ljava/util/HashMap;

    return-object v0
.end method
