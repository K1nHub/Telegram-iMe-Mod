.class final Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterSearchPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->access$setQuery$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->access$setPage$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;I)V

    .line 203
    iget-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    invoke-static {p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->access$getItems$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 204
    iget-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;

    invoke-static {p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->access$getSearchObservable(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;->invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
