.class public Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$SetupSubscribeButtonCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChannelDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupSubscribeButtonCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/details/ChannelDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final canSubscribe:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State;Z)V
    .locals 1

    .line 180
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupSubscribeButton"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 182
    iput-boolean p2, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$SetupSubscribeButtonCommand;->canSubscribe:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/details/ChannelDetailsView;)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$SetupSubscribeButtonCommand;->canSubscribe:Z

    invoke-interface {p1, v0}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;->setupSubscribeButton(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView$$State$SetupSubscribeButtonCommand;->apply(Lcom/smedialink/ui/catalog/details/ChannelDetailsView;)V

    return-void
.end method
