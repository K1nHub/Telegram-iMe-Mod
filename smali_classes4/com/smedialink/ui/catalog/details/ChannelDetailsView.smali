.class public interface abstract Lcom/smedialink/ui/catalog/details/ChannelDetailsView;
.super Ljava/lang/Object;
.source "ChannelDetailsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onSubscribedToChannel(Landroid/net/Uri;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract setupCampaignInfo(Lcom/smedialink/model/catalog/CampaignItem;)V
.end method

.method public abstract setupSubscribeButton(Z)V
.end method

.method public abstract showChannelQr(J)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showShareDialog(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
