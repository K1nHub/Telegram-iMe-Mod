.class public Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$RenderItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/search/TwitterSearchView;",
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
.method constructor <init>(Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 414
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 416
    iput-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$RenderItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$RenderItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 410
    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$RenderItemsCommand;->apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V

    return-void
.end method
