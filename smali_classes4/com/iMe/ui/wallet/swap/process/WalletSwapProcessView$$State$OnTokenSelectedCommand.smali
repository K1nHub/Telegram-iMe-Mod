.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTokenSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final side:Lcom/iMe/model/wallet/swap/SwapSide;

.field public final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field public final tokenDecimal:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V
    .locals 1

    .line 559
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "onTokenSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 561
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->side:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 562
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 563
    iput p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->tokenDecimal:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->side:Lcom/iMe/model/wallet/swap/SwapSide;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->tokenDecimal:I

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 551
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
