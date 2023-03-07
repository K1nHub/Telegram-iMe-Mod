.class final Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogCategoriesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    invoke-static {v0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->access$getPresenter(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadAll$default(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZILjava/lang/Object;)V

    return-void
.end method
