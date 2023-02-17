.class public Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EmojiViewView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/kikliko/EmojiViewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnKiklikoSearchResultsLoadedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/kikliko/EmojiViewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final byTag:Z

.field public final page:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final response:Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/kikliko/EmojiViewView$$State;Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 1

    .line 72
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onKiklikoSearchResultsLoaded"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    iput-object p2, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->q:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->page:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->byTag:Z

    .line 77
    iput-object p5, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->response:Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/kikliko/EmojiViewView;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->page:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->byTag:Z

    iget-object v3, p0, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->response:Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/smedialink/ui/kikliko/EmojiViewView;->onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/smedialink/ui/kikliko/EmojiViewView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/kikliko/EmojiViewView$$State$OnKiklikoSearchResultsLoadedCommand;->apply(Lcom/smedialink/ui/kikliko/EmojiViewView;)V

    return-void
.end method
