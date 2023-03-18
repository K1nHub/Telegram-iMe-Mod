.class public final Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;->onUserClick(Lcom/smedialink/model/twitter/TwitterUserItem;)V
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
        "Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TwitterSearchPresenter.kt\ncom/smedialink/ui/twitter/search/TwitterSearchPresenter\n*L\n1#1,111:1\n101#2,12:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $twitterUserItem$inlined:Lcom/smedialink/model/twitter/TwitterUserItem;

.field final synthetic this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/twitter/TwitterUserItem;Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->$twitterUserItem$inlined:Lcom/smedialink/model/twitter/TwitterUserItem;

    iput-object p2, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->getTelegramUserId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->$twitterUserItem$inlined:Lcom/smedialink/model/twitter/TwitterUserItem;

    invoke-virtual {p1}, Lcom/smedialink/model/twitter/TwitterUserItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->$twitterUserItem$inlined:Lcom/smedialink/model/twitter/TwitterUserItem;

    invoke-virtual {v0}, Lcom/smedialink/model/twitter/TwitterUserItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;->access$getBlockchainType$p(Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;)Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;->loadAddressInfoById(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/twitter/search/TwitterSearchView;

    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/twitter/search/TwitterSearchView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
