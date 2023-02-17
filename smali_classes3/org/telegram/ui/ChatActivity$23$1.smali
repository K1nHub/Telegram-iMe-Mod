.class Lorg/telegram/ui/ChatActivity$23$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity$23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$23;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$23;Landroid/view/View;)V
    .locals 0

    .line 5251
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 7

    .line 5322
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 5323
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 5327
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isAllowPinnedPlayer()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPinnedPlayerVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5331
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    return v2

    .line 5334
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    if-ne v1, v3, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isTransitionAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->openAnimationEnded:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 5337
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTrendingStickersAlert()Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTrendingStickersAlert()Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 2

    .line 5282
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5285
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$13002(Lorg/telegram/ui/ChatActivity;F)F

    .line 5286
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5287
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity$23;->access$13300(Lorg/telegram/ui/ChatActivity$23;F)V

    goto :goto_0

    .line 5289
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 5290
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5291
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5292
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    .line 5293
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->onPanTranslationUpdate(F)V

    .line 5294
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5295
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    .line 5297
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 5298
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    .line 5299
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 5301
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5302
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;)V

    .line 5303
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    .line 5304
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionUpdate(FFZ)V

    .line 5306
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_4

    .line 5307
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionUpdate(F)V

    .line 5309
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_5

    .line 5310
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 5311
    instance-of p3, p2, Lorg/telegram/ui/DialogsActivity;

    if-eqz p3, :cond_5

    .line 5312
    check-cast p2, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setPanTranslationOffset(F)V

    .line 5315
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 5316
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAudioVideoButtonContainer()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_6
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 3

    .line 5269
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 5270
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionEnd()V

    .line 5272
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_1

    .line 5273
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionEnd()V

    .line 5275
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5276
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAudioVideoButtonContainer()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_2
    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 2

    .line 5255
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5256
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 5257
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionStart(ZI)V

    .line 5259
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 5260
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionStart()V

    .line 5262
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5263
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    :cond_2
    return-void
.end method

.method protected startOffset()I
    .locals 2

    .line 5345
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/16 v1, 0x14

    .line 5346
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5347
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$23$1;->this$1:Lorg/telegram/ui/ChatActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$23;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
