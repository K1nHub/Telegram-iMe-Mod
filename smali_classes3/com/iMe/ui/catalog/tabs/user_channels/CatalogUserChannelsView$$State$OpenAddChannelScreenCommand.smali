.class public Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State$OpenAddChannelScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogUserChannelsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenAddChannelScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State;)V
    .locals 1

    .line 309
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openAddChannelScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;)V
    .locals 0

    .line 314
    invoke-interface {p1}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;->openAddChannelScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 307
    check-cast p1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView$$State$OpenAddChannelScreenCommand;->apply(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;)V

    return-void
.end method
