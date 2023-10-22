.class final Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupLoadMore$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogAllFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupLoadMore(Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupLoadMore$1$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 205
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupLoadMore$1$1;->invoke(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(J)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupLoadMore$1$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;

    invoke-static {v0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->access$getPresenter(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->onChannelLoadMore(J)V

    return-void
.end method
