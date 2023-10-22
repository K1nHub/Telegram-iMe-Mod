.class public Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "FragmentUsernamesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseSortingTypeDialogCommand"
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

.field public final selectedPosition:I

.field public final titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 294
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChooseSortingTypeDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 296
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 297
    iput-object p3, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->titles:Ljava/util/List;

    .line 298
    iput p4, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->titles:Ljava/util/List;

    iget v2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->selectedPosition:I

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showChooseSortingTypeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 285
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V

    return-void
.end method
