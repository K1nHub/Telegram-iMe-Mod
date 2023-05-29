.class public Lcom/iMe/feature/profile/ProfileView$$State$ShowLinkConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLinkConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;

.field public final socialId:J


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Lcom/iMe/model/dialog/DialogModel;J)V
    .locals 1

    .line 441
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showLinkConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 443
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowLinkConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 444
    iput-wide p3, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowLinkConfirmationDialogCommand;->socialId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowLinkConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-wide v1, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowLinkConfirmationDialogCommand;->socialId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/feature/profile/ProfileView;->showLinkConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 435
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$ShowLinkConfirmationDialogCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
