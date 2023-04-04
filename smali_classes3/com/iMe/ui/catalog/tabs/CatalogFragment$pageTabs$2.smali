.class final Lcom/iMe/ui/catalog/tabs/CatalogFragment$pageTabs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/CatalogFragment;-><init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/model/catalog/CatalogNavigationTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment$pageTabs$2;->this$0:Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$pageTabs$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CatalogNavigationTab;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment$pageTabs$2;->this$0:Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    invoke-static {v0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->access$initPageTabs(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
