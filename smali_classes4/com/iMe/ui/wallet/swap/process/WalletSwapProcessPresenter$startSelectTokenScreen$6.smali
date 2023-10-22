.class final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen(Lcom/iMe/model/wallet/swap/SwapSide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
        "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $side:Lcom/iMe/model/wallet/swap/SwapSide;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 340
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    check-cast p2, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->invoke(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setOutputTokenRate$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    .line 353
    :cond_0
    iget-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-static {p2, v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$selectToken(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method
