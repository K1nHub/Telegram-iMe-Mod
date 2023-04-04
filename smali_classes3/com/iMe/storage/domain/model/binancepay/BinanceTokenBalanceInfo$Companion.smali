.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;
.super Ljava/lang/Object;
.source "BinanceTokenBalanceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEmptyBalanceFor(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 12

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 39
    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;->createEmptyBalance()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v6

    .line 40
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;->createEmptyBalance()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v7

    .line 41
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;->createEmptyBalance()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v8

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v5, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p1

    .line 34
    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZ)V

    return-object v0
.end method
