.class public Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "FragmentUsernamesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 233
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 235
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 229
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowConfirmationDialogCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V

    return-void
.end method
