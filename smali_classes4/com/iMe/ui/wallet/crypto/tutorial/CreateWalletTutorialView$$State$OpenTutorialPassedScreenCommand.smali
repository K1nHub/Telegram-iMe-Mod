.class public Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletTutorialView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenTutorialPassedScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;)V
    .locals 1

    .line 167
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openTutorialPassedScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 169
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;->tutorialType:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;)V

    return-void
.end method
