.class public final synthetic Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
