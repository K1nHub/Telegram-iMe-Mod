.class public Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnRecipientSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final contactSelected:Z

.field public final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 553
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onRecipientSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 555
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    .line 556
    iput-object p3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    .line 557
    iput-boolean p4, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->contactSelected:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->contactSelected:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 545
    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnRecipientSelectedCommand;->apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V

    return-void
.end method
