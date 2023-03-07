.class public final Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onChannelClick(Lcom/smedialink/model/catalog/CampaignItem;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogCategoriesPresenter.kt\ncom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n*L\n1#1,111:1\n98#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $campaign$inlined:Lcom/smedialink/model/catalog/CampaignItem;

.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/smedialink/model/catalog/CampaignItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->$campaign$inlined:Lcom/smedialink/model/catalog/CampaignItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 112
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 113
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->$campaign$inlined:Lcom/smedialink/model/catalog/CampaignItem;

    .line 115
    iget-object v2, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->access$getChatType$p(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;)Lcom/smedialink/storage/domain/model/catalog/ChatType;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, p1, v2}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;->openCampaignDetailsScreen(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    return-void
.end method
