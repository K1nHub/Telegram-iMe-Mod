.class public Lcom/iMe/feature/twitter/TwitterView$$State$RenderItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/TwitterView;",
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
.method constructor <init>(Lcom/iMe/feature/twitter/TwitterView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 341
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 343
    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterView$$State$RenderItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/TwitterView;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterView$$State$RenderItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/feature/twitter/TwitterView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 337
    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/TwitterView$$State$RenderItemsCommand;->apply(Lcom/iMe/feature/twitter/TwitterView;)V

    return-void
.end method
