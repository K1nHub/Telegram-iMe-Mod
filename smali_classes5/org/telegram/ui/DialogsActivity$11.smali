.class Lorg/telegram/ui/DialogsActivity$11;
.super Lorg/telegram/ui/Components/FilterTabsView;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$OVcsvoXOf2aryeg5r5MkGTtz7m4(Lorg/telegram/ui/DialogsActivity$11;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$11;->lambda$onDefaultTabMoved$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/Components/FilterTabsView$TabMode;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 4608
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/FilterTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/FilterTabsView$TabMode;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    return-void
.end method

.method private synthetic lambda$onDefaultTabMoved$0()V
    .locals 5

    .line 4659
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 4660
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->setIsEditing(Z)V

    .line 4661
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method


# virtual methods
.method protected onDefaultTabMoved()V
    .locals 8

    .line 4654
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 4656
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4658
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$raw;->filter_reorder:I

    sget v4, Lorg/telegram/messenger/R$string;->LimitReachedReorderFolder:I

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "LimitReachedReorderFolder"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->PremiumMore:I

    const-string v6, "PremiumMore"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1388

    new-instance v7, Lorg/telegram/ui/DialogsActivity$11$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/ui/DialogsActivity$11$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$11;)V

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    .line 4662
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 4658
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$10302(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4626
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4627
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$3302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4645
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/FilterTabsView;->onLayout(ZIIII)V

    .line 4646
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4647
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4648
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 4633
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 4634
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4635
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)V

    .line 4636
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)V

    .line 4637
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25200(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4638
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 4616
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4617
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method
