.class Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;Landroid/view/View;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 16279
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 7

    .line 16361
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 16362
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$35900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 16366
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isAllowPinnedPlayer()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPinnedPlayerVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 16370
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    return v2

    .line 16373
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->openAnimationEnded:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 16376
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTrendingStickersAlert()Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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
    .locals 3

    .line 16310
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16313
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$18102(Lorg/telegram/ui/ChatActivity;F)F

    .line 16314
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChatActivity;->access$35302(Lorg/telegram/ui/ChatActivity;F)F

    .line 16315
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16316
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->access$35400(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;F)V

    goto/16 :goto_0

    .line 16318
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 16319
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_2

    .line 16320
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 16322
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 16323
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    div-float v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 16325
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$26500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 16326
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    .line 16327
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16328
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->onPanTranslationUpdate(F)V

    .line 16330
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16331
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    .line 16333
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 16334
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    .line 16335
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 16337
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 16338
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)V

    .line 16339
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_6

    .line 16340
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionUpdate(FFZ)V

    .line 16342
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_7

    .line 16343
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionUpdate(F)V

    .line 16345
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_8

    .line 16346
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 16347
    instance-of p3, p2, Lorg/telegram/ui/DialogsActivity;

    if-eqz p3, :cond_8

    .line 16348
    check-cast p2, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setPanTranslationOffset(F)V

    .line 16351
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    .line 16352
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAudioVideoButtonContainer()Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    .line 16354
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$30800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 16355
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$30800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FragmentContextView;->onPanTranslationUpdate(F)V

    :cond_a
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 3

    .line 16297
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 16298
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionEnd()V

    .line 16300
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_1

    .line 16301
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionEnd()V

    .line 16303
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 16304
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 16283
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 16284
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 16285
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionStart(ZI)V

    .line 16287
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 16288
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionStart()V

    .line 16290
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16291
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    :cond_2
    return-void
.end method

.method protected startOffset()I
    .locals 2

    .line 16384
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/16 v1, 0x14

    .line 16385
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16386
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
