.class public Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupHorizontalActionButtonsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final actionsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    .line 668
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupHorizontalActionButtons"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 670
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;->actionsItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;->actionsItems:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupHorizontalActionButtons(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 664
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;->apply(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method
