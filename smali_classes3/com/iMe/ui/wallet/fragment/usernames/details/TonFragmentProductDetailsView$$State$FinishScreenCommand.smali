.class public Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$FinishScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TonFragmentProductDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State;)V
    .locals 1

    .line 237
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "finishScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;)V
    .locals 0

    .line 242
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$FinishScreenCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;)V

    return-void
.end method
