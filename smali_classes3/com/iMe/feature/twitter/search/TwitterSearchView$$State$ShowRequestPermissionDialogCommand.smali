.class public Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRequestPermissionDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback;

.field public final model:Lcom/iMe/model/dialog/DialogModel;

.field public final recipient:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 604
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showRequestPermissionDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 606
    iput-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->recipient:Ljava/lang/String;

    .line 607
    iput-object p3, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->model:Lcom/iMe/model/dialog/DialogModel;

    .line 608
    iput-object p4, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->recipient:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->model:Lcom/iMe/model/dialog/DialogModel;

    iget-object v2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 595
    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionDialogCommand;->apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V

    return-void
.end method
