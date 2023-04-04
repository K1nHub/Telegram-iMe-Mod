.class public Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State$ShowItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogUserChannelsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;",
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
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 262
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 264
    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State$ShowItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State$ShowItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;->showItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State$ShowItemsCommand;->apply(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;)V

    return-void
.end method
