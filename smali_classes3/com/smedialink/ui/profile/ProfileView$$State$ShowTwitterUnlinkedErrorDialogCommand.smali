.class public Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTwitterUnlinkedErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/smedialink/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 1

    .line 415
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showTwitterUnlinkedErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 417
    iput-object p2, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/profile/ProfileView;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/profile/ProfileView;->showTwitterUnlinkedErrorDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 411
    check-cast p1, Lcom/smedialink/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;->apply(Lcom/smedialink/ui/profile/ProfileView;)V

    return-void
.end method
