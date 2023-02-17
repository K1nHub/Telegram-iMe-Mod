.class public final Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->searchByTag(Ljava/lang/String;Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 EmojiViewPresenter.kt\ncom/smedialink/ui/kikliko/EmojiViewPresenter\n*L\n1#1,111:1\n54#2,4:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $page$inlined:Ljava/lang/String;

.field final synthetic $tag$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/kikliko/EmojiViewPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;->$tag$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;->$page$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/kikliko/EmojiViewView;

    iget-object v1, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;->$tag$inlined:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1;->$page$inlined:Ljava/lang/String;

    const/4 v3, 0x1

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/smedialink/ui/kikliko/EmojiViewView;->onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    :cond_0
    return-void
.end method
