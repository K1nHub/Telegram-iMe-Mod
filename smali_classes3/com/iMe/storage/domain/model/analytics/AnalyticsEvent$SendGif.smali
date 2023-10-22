.class public final Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;
.super Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendGif"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif$Companion;

.field public static final typeDefault:Ljava/lang/String; = "default"

.field public static final typeScheduled:Ljava/lang/String; = "scheduled"

.field public static final typeSilent:Ljava/lang/String; = "silent"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif;->Companion:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$SendGif$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sendType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "send_type"

    .line 117
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "send_gif"

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, v0, p1, v1}, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
