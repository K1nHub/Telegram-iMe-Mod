.class Lorg/telegram/ui/DialogsActivity$10;
.super Lorg/telegram/ui/ActionBar/ActionBar;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 4496
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 4513
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4516
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBar;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onSearchChangedIgnoreTitles()Z
    .locals 1

    .line 4533
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSearchFieldVisibilityChanged(Z)V
    .locals 2

    .line 4538
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4539
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4541
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 3

    .line 4521
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 4522
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$13100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$13100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz p3, :cond_1

    .line 4523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p3

    .line 4524
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    .line 4526
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p3, p3, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p3, :cond_2

    .line 4527
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setTitleOverlayText(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 4500
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4501
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4503
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    return-void
.end method

.method protected shouldClipChild(Landroid/view/View;)Z
    .locals 1

    .line 4508
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldClipChild(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$10;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
