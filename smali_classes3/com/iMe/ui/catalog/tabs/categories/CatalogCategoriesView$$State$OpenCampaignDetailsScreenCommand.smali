.class public Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogCategoriesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCampaignDetailsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final campaign:Lcom/iMe/model/catalog/CampaignItem;

.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 1

    .line 283
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openCampaignDetailsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 285
    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    .line 286
    iput-object p3, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 287
    iput-object p4, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->campaign:Lcom/iMe/model/catalog/CampaignItem;

    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->openCampaignDetailsScreen(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 275
    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;->apply(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;)V

    return-void
.end method
