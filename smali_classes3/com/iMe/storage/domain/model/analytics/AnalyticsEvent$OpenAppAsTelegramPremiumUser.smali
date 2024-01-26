.class public final Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;
.super Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenAppAsTelegramPremiumUser"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "open_app_as_telegram_premium_user"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 101
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
