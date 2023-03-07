.class final Lcom/smedialink/ui/catalog/tabs/CatalogFragment$initPageTabs$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/CatalogFragment;->initPageTabs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/CatalogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/CatalogFragment$initPageTabs$3;->this$0:Lcom/smedialink/ui/catalog/tabs/CatalogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/CatalogFragment$initPageTabs$3;->this$0:Lcom/smedialink/ui/catalog/tabs/CatalogFragment;

    invoke-static {v0}, Lcom/smedialink/ui/catalog/tabs/CatalogFragment;->access$getNavigationRouter(Lcom/smedialink/ui/catalog/tabs/CatalogFragment;)Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;

    sget v1, Lorg/telegram/messenger/R$id;->catalog_user_channels:I

    invoke-virtual {v0, v1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->getViewByFragmentId(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/smedialink/ui/catalog/tabs/CatalogFragment$initPageTabs$3;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
