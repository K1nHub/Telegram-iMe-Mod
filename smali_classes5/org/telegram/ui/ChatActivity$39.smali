.class Lorg/telegram/ui/ChatActivity$39;
.super Lorg/telegram/ui/Components/ChatActivityEnterTopView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 8702
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterTopView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 8705
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8706
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 8707
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 8709
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 8710
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8711
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8712
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 8714
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8715
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8717
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    .line 8718
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8719
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$26900(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8720
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$27000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 8732
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 8734
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 8735
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 8737
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8738
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_1
    return-void
.end method
