.class Lorg/telegram/ui/Stories/PeerStoriesView$22;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 2315
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCopy()Z
    .locals 1

    .line 2319
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic didShare()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate$-CC;->$default$didShare(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    return-void
.end method
