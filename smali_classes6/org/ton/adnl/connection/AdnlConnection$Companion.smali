.class public final Lorg/ton/adnl/connection/AdnlConnection$Companion;
.super Ljava/lang/Object;
.source "AdnlConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/adnl/connection/AdnlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/adnl/connection/AdnlConnection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAX_IDLE_TIME-UwyO8pc()J
    .locals 2

    .line 212
    invoke-static {}, Lorg/ton/adnl/connection/AdnlConnection;->access$getMAX_IDLE_TIME$cp()J

    move-result-wide v0

    return-wide v0
.end method
