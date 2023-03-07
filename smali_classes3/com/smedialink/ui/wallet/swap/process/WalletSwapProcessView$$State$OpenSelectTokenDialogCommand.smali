.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSelectTokenDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final onlyPositiveBalance:Z

.field public final selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

.field public final side:Lcom/smedialink/model/wallet/swap/SwapSide;

.field public final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/smedialink/model/wallet/select/SelectableType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/swap/SwapSide;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 554
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSelectTokenDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 556
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->side:Lcom/smedialink/model/wallet/swap/SwapSide;

    .line 557
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 558
    iput-object p4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->tokens:Ljava/util/List;

    .line 559
    iput-object p5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 560
    iput-object p6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 561
    iput-boolean p7, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->onlyPositiveBalance:Z

    .line 562
    iput-object p8, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 8

    .line 567
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->side:Lcom/smedialink/model/wallet/swap/SwapSide;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->tokens:Ljava/util/List;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    iget-boolean v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->onlyPositiveBalance:Z

    iget-object v7, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 536
    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;->apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
