.class public final Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;
.super Lcom/smedialink/common/AppRxEvents;
.source "AppRxEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/common/AppRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateWalletScreen"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;

    invoke-direct {v0}, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;-><init>()V

    sput-object v0, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/smedialink/common/AppRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
