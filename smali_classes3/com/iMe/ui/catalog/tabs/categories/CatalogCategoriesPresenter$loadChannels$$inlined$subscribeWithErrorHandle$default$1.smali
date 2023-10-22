.class public final Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadChannels(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogCategoriesPresenter.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n*L\n1#1,132:1\n88#2:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isLoadMore$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iget-boolean v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    invoke-static {v0, p1, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->access$processChannelsResult(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/iMe/storage/domain/model/Result;Z)V

    return-void
.end method
