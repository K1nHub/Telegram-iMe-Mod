.class public final Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen;
.super Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenWalletScreen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen$Companion;

.field public static final sourceAttach:Ljava/lang/String; = "attach"

.field public static final sourceMenu:Ljava/lang/String; = "menu"

.field public static final sourceProfileFab:Ljava/lang/String; = "profile_fab"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen;->Companion:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenWalletScreen$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    .line 88
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "open_wallet_screen"

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, v0, p1, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
