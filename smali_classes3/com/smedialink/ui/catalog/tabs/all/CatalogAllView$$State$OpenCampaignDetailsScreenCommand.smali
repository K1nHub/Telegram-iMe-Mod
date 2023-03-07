.class public Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCampaignDetailsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# instance fields
.field public final campaign:Lcom/smedialink/model/catalog/CampaignItem;

.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V
    .locals 1

    .line 410
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openCampaignDetailsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 412
    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->campaign:Lcom/smedialink/model/catalog/CampaignItem;

    .line 413
    iput-object p3, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 414
    iput-object p4, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->campaign:Lcom/smedialink/model/catalog/CampaignItem;

    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->openCampaignDetailsScreen(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 402
    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
