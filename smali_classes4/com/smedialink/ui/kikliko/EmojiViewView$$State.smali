.class public Lcom/smedialink/ui/kikliko/EmojiViewView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "EmojiViewView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/kikliko/EmojiViewView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;,
        Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/kikliko/EmojiViewView;",
        ">;",
        "Lcom/smedialink/ui/kikliko/EmojiViewView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 7

    .line 32
    new-instance v6, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;-><init>(Lcom/smedialink/ui/kikliko/EmojiViewView$$State;Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    .line 33
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v6}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 35
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/kikliko/EmojiViewView;

    .line 40
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/smedialink/ui/kikliko/EmojiViewView;->onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v6}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onKiklikoTagsLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;-><init>(Lcom/smedialink/ui/kikliko/EmojiViewView$$State;Ljava/util/List;)V

    .line 16
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 18
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/kikliko/EmojiViewView;

    .line 23
    invoke-interface {v2, p1}, Lcom/smedialink/ui/kikliko/EmojiViewView;->onKiklikoTagsLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
