.class public Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 560
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 562
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->title:Ljava/lang/String;

    .line 563
    iput-object p3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->description:Ljava/lang/String;

    .line 564
    iput-object p4, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->buttonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->buttonText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 552
    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$ShowErrorDialogCommand;->apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V

    return-void
.end method
