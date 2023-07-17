.class public final Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;
.super Lcom/iMe/common/AppRxEvents;
.source "AppRxEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/common/AppRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinanceOpenAuthScreen"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;

    invoke-direct {v0}, Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;-><init>()V

    sput-object v0, Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;->INSTANCE:Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/iMe/common/AppRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
