.class public final Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
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
    iget-object v1, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$onSubscribeClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;->access$getCampaign$p(Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;)Lcom/smedialink/model/catalog/CampaignItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://t.me/"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

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
