.class Lorg/telegram/ui/Stories/PeerStoriesView$4$1;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$4;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public clipWithGradient(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public getBottomOffset(I)I
    .locals 0

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$4;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getTopOffset(I)I
    .locals 0

    const/16 p1, 0x3a

    .line 689
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBottomOffsetChange(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onBottomOffsetChange(Lorg/telegram/ui/Components/Bulletin$Delegate;F)V

    return-void
.end method

.method public onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 705
    iget p1, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$4;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 706
    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setBulletinIsVisible(Z)V

    :cond_0
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 698
    iget p1, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$4;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 699
    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setBulletinIsVisible(Z)V

    :cond_0
    return-void
.end method
