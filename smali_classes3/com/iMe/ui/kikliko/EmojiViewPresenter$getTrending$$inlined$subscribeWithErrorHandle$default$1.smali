.class public final Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/kikliko/EmojiViewPresenter;->getTrending(Ljava/lang/String;)V
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
        "Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 EmojiViewPresenter.kt\ncom/iMe/ui/kikliko/EmojiViewPresenter\n*L\n1#1,111:1\n69#2,5:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $page$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/kikliko/EmojiViewPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/kikliko/EmojiViewPresenter;

    iput-object p2, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;->$page$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/kikliko/EmojiViewView;

    iget-object v1, p0, Lcom/iMe/ui/kikliko/EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1;->$page$inlined:Ljava/lang/String;

    const/4 v2, 0x0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    const-string v3, ""

    invoke-interface {v0, v3, v1, v2, p1}, Lcom/iMe/ui/kikliko/EmojiViewView;->onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;)V

    :cond_0
    return-void
.end method
