.class public final Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->onChannelClick(Lcom/smedialink/model/catalog/CampaignItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$Chat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogAllPresenter.kt\ncom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter\n*L\n1#1,111:1\n102#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $campaign$inlined:Lcom/smedialink/model/catalog/CampaignItem;

.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;Lcom/smedialink/model/catalog/CampaignItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->$campaign$inlined:Lcom/smedialink/model/catalog/CampaignItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 112
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    .line 113
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->$campaign$inlined:Lcom/smedialink/model/catalog/CampaignItem;

    .line 115
    iget-object v2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->access$getChatType$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Lcom/smedialink/storage/domain/model/catalog/ChatType;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, p1, v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->openCampaignDetailsScreen(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    return-void
.end method
