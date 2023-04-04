.class public Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenPasscodeScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletTutorialView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenPasscodeScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;)V
    .locals 1

    .line 147
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openPasscodeScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;)V
    .locals 0

    .line 152
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->openPasscodeScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 145
    check-cast p1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenPasscodeScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;)V

    return-void
.end method
