.class public final synthetic Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
