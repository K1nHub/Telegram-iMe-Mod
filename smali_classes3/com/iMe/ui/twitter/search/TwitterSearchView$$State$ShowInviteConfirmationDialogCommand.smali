.class public Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowInviteConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowInviteConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;

.field public final twitterUserId:J


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;Lcom/iMe/model/dialog/DialogModel;J)V
    .locals 1

    .line 344
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showInviteConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 346
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowInviteConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 347
    iput-wide p3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowInviteConfirmationDialogCommand;->twitterUserId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowInviteConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-wide v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowInviteConfirmationDialogCommand;->twitterUserId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/twitter/search/TwitterSearchView;->showInviteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 338
    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowInviteConfirmationDialogCommand;->apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V

    return-void
.end method
