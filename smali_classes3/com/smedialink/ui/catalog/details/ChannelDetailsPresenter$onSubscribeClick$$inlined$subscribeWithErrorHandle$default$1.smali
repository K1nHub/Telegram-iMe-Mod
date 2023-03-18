.class public final Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;->onSubscribeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ChannelDetailsPresenter.kt\ncom/smedialink/ui/catalog/details/ChannelDetailsPresenter\n*L\n1#1,111:1\n38#2,7:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://t.me/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;->access$getCampaign$p(Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;)Lcom/smedialink/model/catalog/CampaignItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parse(Constants.Telegram\u2026INT + campaign.shortname)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-interface {v0, v1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;->onSubscribedToChannel(Landroid/net/Uri;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsView;->setupSubscribeButton(Z)V

    return-void
.end method
