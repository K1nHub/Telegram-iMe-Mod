.class Lorg/telegram/ui/Stories/PeerStoriesView$26;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->deleteStory()V
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

    .line 2685
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2688
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->cancelOrDelete()V

    .line 2689
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2690
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p2, :cond_0

    .line 2691
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    return-void

    .line 2694
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget v0, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 2695
    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6902(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    goto :goto_0

    .line 2696
    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    if-gez p1, :cond_2

    .line 2697
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6902(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    .line 2699
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void
.end method
