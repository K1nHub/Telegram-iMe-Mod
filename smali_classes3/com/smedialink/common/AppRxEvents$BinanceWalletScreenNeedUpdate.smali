.class public final Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;
.super Lcom/smedialink/common/AppRxEvents;
.source "AppRxEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/common/AppRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinanceWalletScreenNeedUpdate"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;

    invoke-direct {v0}, Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;-><init>()V

    sput-object v0, Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;->INSTANCE:Lcom/smedialink/common/AppRxEvents$BinanceWalletScreenNeedUpdate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/smedialink/common/AppRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
