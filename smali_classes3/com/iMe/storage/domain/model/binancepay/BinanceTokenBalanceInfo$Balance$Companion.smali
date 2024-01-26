.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;
.super Ljava/lang/Object;
.source "BinanceTokenBalanceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEmptyBalance()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 16

    .line 28
    new-instance v15, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;-><init>(DDDDDDD)V

    return-object v15
.end method
