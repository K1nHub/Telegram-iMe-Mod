.class public Lcom/iMe/feature/profile/ProfileView$$State$ShowResetConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResetConfirmationDialogCommand"
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

.field public final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    .line 423
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showResetConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 425
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowResetConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 426
    iput-object p3, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowResetConfirmationDialogCommand;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowResetConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowResetConfirmationDialogCommand;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-interface {p1, v0, v1}, Lcom/iMe/feature/profile/ProfileView;->showResetConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 417
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$ShowResetConfirmationDialogCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
