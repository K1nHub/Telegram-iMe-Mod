.class public Lcom/iMe/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EmojiViewView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/kikliko/EmojiViewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnKiklikoTagsLoadedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/kikliko/EmojiViewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/TagResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/kikliko/EmojiViewView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/TagResponse;",
            ">;)V"
        }
    .end annotation

    .line 50
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onKiklikoTagsLoaded"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    iput-object p2, p0, Lcom/iMe/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/kikliko/EmojiViewView;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;->tags:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/kikliko/EmojiViewView;->onKiklikoTagsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/iMe/ui/kikliko/EmojiViewView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/kikliko/EmojiViewView$$State$OnKiklikoTagsLoadedCommand;->apply(Lcom/iMe/ui/kikliko/EmojiViewView;)V

    return-void
.end method
