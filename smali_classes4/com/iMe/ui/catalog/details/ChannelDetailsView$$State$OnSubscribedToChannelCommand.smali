.class public Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$OnSubscribedToChannelCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChannelDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSubscribedToChannelCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/details/ChannelDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final channelUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State;Landroid/net/Uri;)V
    .locals 1

    .line 259
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSubscribedToChannel"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 261
    iput-object p2, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$OnSubscribedToChannelCommand;->channelUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/details/ChannelDetailsView;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$OnSubscribedToChannelCommand;->channelUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/details/ChannelDetailsView;->onSubscribedToChannel(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 255
    check-cast p1, Lcom/iMe/ui/catalog/details/ChannelDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$OnSubscribedToChannelCommand;->apply(Lcom/iMe/ui/catalog/details/ChannelDetailsView;)V

    return-void
.end method
