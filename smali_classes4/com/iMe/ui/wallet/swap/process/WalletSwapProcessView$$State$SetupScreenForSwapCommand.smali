.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenForSwapCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final isCrossChain:Z

.field public final isNetworkSwitchVisible:Z

.field public final logo:I

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 1

    .line 697
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupScreenForSwap"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 699
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->title:Ljava/lang/String;

    .line 700
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->description:Ljava/lang/String;

    .line 701
    iput p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->logo:I

    .line 702
    iput-boolean p5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->isNetworkSwitchVisible:Z

    .line 703
    iput-boolean p6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->isCrossChain:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 6

    .line 708
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->description:Ljava/lang/String;

    iget v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->logo:I

    iget-boolean v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->isNetworkSwitchVisible:Z

    iget-boolean v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->isCrossChain:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 684
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
