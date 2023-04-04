.class public Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnUserSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnUserSelectedCommand"
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

.field public final twitterUserItem:Lcom/iMe/model/twitter/TwitterUserItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/search/TwitterSearchView$$State;Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V
    .locals 1

    .line 362
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onUserSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 364
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnUserSelectedCommand;->twitterUserItem:Lcom/iMe/model/twitter/TwitterUserItem;

    .line 365
    iput-object p3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnUserSelectedCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnUserSelectedCommand;->twitterUserItem:Lcom/iMe/model/twitter/TwitterUserItem;

    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnUserSelectedCommand;->address:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchView;->onUserSelected(Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 356
    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchView$$State$OnUserSelectedCommand;->apply(Lcom/iMe/ui/twitter/search/TwitterSearchView;)V

    return-void
.end method
