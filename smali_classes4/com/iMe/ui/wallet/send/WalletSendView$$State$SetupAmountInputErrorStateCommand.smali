.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAmountInputErrorStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupAmountInputErrorStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final clickableText:Ljava/lang/String;

.field public final isError:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;ZLjava/lang/String;)V
    .locals 1

    .line 849
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupAmountInputErrorState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 851
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAmountInputErrorStateCommand;->isError:Z

    .line 852
    iput-object p3, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAmountInputErrorStateCommand;->clickableText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 2

    .line 857
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAmountInputErrorStateCommand;->isError:Z

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAmountInputErrorStateCommand;->clickableText:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAmountInputErrorState(ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 843
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAmountInputErrorStateCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
