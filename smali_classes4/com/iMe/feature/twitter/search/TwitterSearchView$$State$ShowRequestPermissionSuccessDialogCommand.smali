.class public Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRequestPermissionSuccessDialogCommand"
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

.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 645
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showRequestPermissionSuccessDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 647
    iput-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->title:Ljava/lang/String;

    .line 648
    iput-object p3, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->message:Ljava/lang/String;

    .line 649
    iput-object p4, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 636
    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand;->apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V

    return-void
.end method
