.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveBalancesState(ZLjava/util/List;)[Lcom/chad/library/adapter/base/entity/node/BaseNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 WalletHomeBinancePayPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter\n*L\n1#1,320:1\n224#2:321\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 224
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getFiatValuation()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    check-cast p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getFiatValuation()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
