.class public Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$SetupCampaignInfoCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChannelDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupCampaignInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/details/ChannelDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final campaignItem:Lcom/iMe/model/catalog/CampaignItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State;Lcom/iMe/model/catalog/CampaignItem;)V
    .locals 1

    .line 183
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupCampaignInfo"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 185
    iput-object p2, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$SetupCampaignInfoCommand;->campaignItem:Lcom/iMe/model/catalog/CampaignItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/details/ChannelDetailsView;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$SetupCampaignInfoCommand;->campaignItem:Lcom/iMe/model/catalog/CampaignItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/details/ChannelDetailsView;->setupCampaignInfo(Lcom/iMe/model/catalog/CampaignItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 179
    check-cast p1, Lcom/iMe/ui/catalog/details/ChannelDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsView$$State$SetupCampaignInfoCommand;->apply(Lcom/iMe/ui/catalog/details/ChannelDetailsView;)V

    return-void
.end method
