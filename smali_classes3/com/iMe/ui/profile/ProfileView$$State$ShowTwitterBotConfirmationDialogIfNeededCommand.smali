.class public Lcom/iMe/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTwitterBotConfirmationDialogIfNeededCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/profile/ProfileView$$State;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 403
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showTwitterBotConfirmationDialogIfNeeded"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 405
    iput-object p2, p0, Lcom/iMe/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/profile/ProfileView;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/profile/ProfileView;->showTwitterBotConfirmationDialogIfNeeded(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 399
    check-cast p1, Lcom/iMe/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;->apply(Lcom/iMe/ui/profile/ProfileView;)V

    return-void
.end method