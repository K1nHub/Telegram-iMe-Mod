.class public Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupTransactionsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 1

    .line 615
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupTransactionsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 617
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 611
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;->apply(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method