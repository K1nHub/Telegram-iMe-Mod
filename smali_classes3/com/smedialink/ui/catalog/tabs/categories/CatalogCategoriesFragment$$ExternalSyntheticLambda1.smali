.class public final synthetic Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

.field public final synthetic f$1:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$r8$lambda$sg0D464hOK9Zt_td4U6tgxeUyCM(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
