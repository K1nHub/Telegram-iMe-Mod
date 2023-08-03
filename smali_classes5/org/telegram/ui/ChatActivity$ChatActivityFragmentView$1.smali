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

    .line 15214
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 7

    .line 15292
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 15293
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 15297
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

    .line 15301
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$36400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    return v2

    .line 15304
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

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36500(Lorg/telegram/ui/ChatActivity;)Z

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

    .line 15307
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

    .line 15245
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

    .line 15248
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$18502(Lorg/telegram/ui/ChatActivity;F)F

    .line 15249
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15250
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->access$35800(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;F)V

    goto/16 :goto_0

    .line 15252
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 15253
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 15254
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    div-float v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 15256
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 15257
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    .line 15258
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15259
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->onPanTranslationUpdate(F)V

    .line 15261
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15262
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$36000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    .line 15264
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 15265
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)V

    .line 15266
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 15268
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 15269
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)V

    .line 15270
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5

    .line 15271
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionUpdate(FFZ)V

    .line 15273
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_6

    .line 15274
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionUpdate(F)V

    .line 15276
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_7

    .line 15277
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 15278
    instance-of p3, p2, Lorg/telegram/ui/DialogsActivity;

    if-eqz p3, :cond_7

    .line 15279
    check-cast p2, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setPanTranslationOffset(F)V

    .line 15282
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_8

    .line 15283
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAudioVideoButtonContainer()Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    .line 15285
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$30900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 15286
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$30900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FragmentContextView;->onPanTranslationUpdate(F)V

    :cond_9
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 3

    .line 15232
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 15233
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionEnd()V

    .line 15235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_1

    .line 15236
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionEnd()V

    .line 15238
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 15239
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

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

    .line 15218
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 15219
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 15220
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onAdjustPanTransitionStart(ZI)V

    .line 15222
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 15223
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onPanTransitionStart()V

    .line 15225
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$35600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15226
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$35600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    :cond_2
    return-void
.end method

.method protected startOffset()I
    .locals 2

    .line 15315
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/16 v1, 0x14

    .line 15316
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15317
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
