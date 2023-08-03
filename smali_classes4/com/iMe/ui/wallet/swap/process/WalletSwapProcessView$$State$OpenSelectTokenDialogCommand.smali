.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSelectTokenDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final networkId:Ljava/lang/String;

.field public final onlyPositiveBalance:Z

.field public final selectTokensScreenType:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;

.field public final selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 576
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openSelectTokenDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 578
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 579
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->selectTokensScreenType:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;

    .line 580
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->networkId:Ljava/lang/String;

    .line 581
    iput-boolean p5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->onlyPositiveBalance:Z

    .line 582
    iput-object p6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 6

    .line 587
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->selectTokensScreenType:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->networkId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->onlyPositiveBalance:Z

    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 562
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
