.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenForSwapCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final isNetworkSwitchVisible:Z

.field public final logo:I

.field public final networkSwitchType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V
    .locals 1

    .line 364
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenForSwap"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 366
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->title:Ljava/lang/String;

    .line 367
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->description:Ljava/lang/String;

    .line 368
    iput p4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->logo:I

    .line 369
    iput-boolean p5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->isNetworkSwitchVisible:Z

    .line 370
    iput-object p6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->networkSwitchType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 6

    .line 375
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->description:Ljava/lang/String;

    iget v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->logo:I

    iget-boolean v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->isNetworkSwitchVisible:Z

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->networkSwitchType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 351
    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;->apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
