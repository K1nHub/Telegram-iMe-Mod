.class public Lcom/iMe/ui/twitter/TwitterView$$State$OnLoadMoreItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/twitter/TwitterView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/TwitterView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 361
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 363
    iput-object p2, p0, Lcom/iMe/ui/twitter/TwitterView$$State$OnLoadMoreItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/TwitterView;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/iMe/ui/twitter/TwitterView$$State$OnLoadMoreItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 357
    check-cast p1, Lcom/iMe/ui/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/TwitterView$$State$OnLoadMoreItemsCommand;->apply(Lcom/iMe/ui/twitter/TwitterView;)V

    return-void
.end method
