.class public Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletTutorialView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTutorialPagesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView;",
        ">;"
    }
.end annotation


# instance fields
.field public final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/tutorial/TutorialPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/tutorial/TutorialPage;",
            ">;)V"
        }
    .end annotation

    .line 134
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showTutorialPages"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 136
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;->pages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;->pages:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->showTutorialPages(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 130
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;->apply(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialView;)V

    return-void
.end method
