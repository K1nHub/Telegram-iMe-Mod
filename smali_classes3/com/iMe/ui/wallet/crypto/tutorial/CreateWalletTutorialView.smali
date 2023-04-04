.class public interface abstract Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;
.super Ljava/lang/Object;
.source "CreateWalletTutorialView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openPasscodeScreen()V
.end method

.method public abstract openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;)V
.end method

.method public abstract showTutorialPages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
