.class public Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCampaignDetailsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# instance fields
.field public final campaign:Lcom/iMe/model/catalog/CampaignItem;

.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State;Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 1

    .line 428
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openCampaignDetailsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 430
    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    .line 431
    iput-object p3, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 432
    iput-object p4, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;->openCampaignDetailsScreen(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 420
    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView$$State$OpenCampaignDetailsScreenCommand;->apply(Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
