.class public interface abstract Lcom/iMe/ui/kikliko/EmojiViewView;
.super Ljava/lang/Object;
.source "EmojiViewView.kt"

# interfaces
.implements Lmoxy/MvpView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;)V
.end method

.method public abstract onKiklikoTagsLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/TagResponse;",
            ">;)V"
        }
    .end annotation
.end method
