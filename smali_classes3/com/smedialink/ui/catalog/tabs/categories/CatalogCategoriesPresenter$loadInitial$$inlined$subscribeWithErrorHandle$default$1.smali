.class public final Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadInitial(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogCategoriesPresenter.kt\ncom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n*L\n1#1,111:1\n126#2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 126
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->access$processChannelsResult(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/smedialink/storage/domain/model/Result;Z)V

    return-void
.end method
