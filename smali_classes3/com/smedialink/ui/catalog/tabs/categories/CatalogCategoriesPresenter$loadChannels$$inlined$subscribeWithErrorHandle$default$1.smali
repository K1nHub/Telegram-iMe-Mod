.class public final Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadChannels(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogCategoriesPresenter.kt\ncom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n*L\n1#1,111:1\n88#2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isLoadMore$inlined:Z

.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 88
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iget-boolean v1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    invoke-static {v0, p1, v1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->access$processChannelsResult(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/smedialink/storage/domain/model/Result;Z)V

    return-void
.end method
