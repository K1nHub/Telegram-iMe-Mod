.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSwapFeeScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 1

    .line 525
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSwapFeeScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 527
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;->args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;->args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 521
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
