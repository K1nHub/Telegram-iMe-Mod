.class public Lcom/iMe/ui/profile/ProfileView$$State$ShowTwitterAccountActionsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTwitterAccountActionsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/profile/ProfileView$$State;)V
    .locals 1

    .line 390
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showTwitterAccountActionsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/profile/ProfileView;)V
    .locals 0

    .line 395
    invoke-interface {p1}, Lcom/iMe/ui/profile/ProfileView;->showTwitterAccountActionsDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 388
    check-cast p1, Lcom/iMe/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/profile/ProfileView$$State$ShowTwitterAccountActionsDialogCommand;->apply(Lcom/iMe/ui/profile/ProfileView;)V

    return-void
.end method