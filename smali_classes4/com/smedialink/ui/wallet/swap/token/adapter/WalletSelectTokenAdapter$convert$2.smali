.class final Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/select/SelectableTokenItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/ui/custom/CoinTickerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/smedialink/model/wallet/select/SelectableTokenItem;


# direct methods
.method constructor <init>(Lcom/smedialink/model/wallet/select/SelectableTokenItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2;->$item:Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/smedialink/ui/custom/CoinTickerView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2;->invoke(Lcom/smedialink/ui/custom/CoinTickerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/ui/custom/CoinTickerView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2;->$item:Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;->getToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/custom/CoinTickerView;->setTicker(Ljava/lang/String;)V

    return-void
.end method
