.class final Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BinanceTokenBalanceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/CoinTickerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/iMe/ui/custom/CoinTickerView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider$convert$2;->invoke(Lcom/iMe/ui/custom/CoinTickerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/CoinTickerView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/CoinTickerView;->setTicker(Ljava/lang/String;)V

    return-void
.end method
