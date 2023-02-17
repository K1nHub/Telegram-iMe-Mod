.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 1

    .line 426
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 428
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 422
    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;->apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
