.class Lorg/telegram/ui/Components/ShareAlert$18;
.super Lorg/telegram/ui/Components/EditTextEmoji;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private messageEditTextAnimator:Landroid/animation/ValueAnimator;

.field private messageEditTextPredrawHeigth:I

.field private messageEditTextPredrawScrollY:I

.field private shouldAnimateEditTextWithBounds:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$34C0FvsBqz1Lw2h7ItEFRvKEvA8(Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$18;->lambda$dispatchDraw$0(Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TtpTLdRNSeuJMfMW7dSwk-PtGXU(Lorg/telegram/ui/Components/ShareAlert$18;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$18;->lambda$showPopup$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJv0nTPkA0V8L4MIvulo26X13ao(Lorg/telegram/ui/Components/ShareAlert$18;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$18;->lambda$hidePopup$2(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 1554
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private static synthetic lambda$dispatchDraw$0(Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1568
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    return-void
.end method

.method private synthetic lambda$hidePopup$2(I)V
    .locals 1

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$9202(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    return-void
.end method

.method private synthetic lambda$showPopup$1(I)V
    .locals 1

    .line 1603
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$9302(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1563
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$5700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    .line 1565
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->messageEditTextPredrawHeigth:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$18;->messageEditTextPredrawScrollY:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1566
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1567
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1568
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$18$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ShareAlert$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1569
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1572
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 1573
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1574
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1575
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1576
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$18;->shouldAnimateEditTextWithBounds:Z

    .line 1578
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hidePopup(Z)V
    .locals 3

    .line 1610
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 1611
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1612
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$9002(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 1613
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$9100(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v0

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$18$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$18$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert$18;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    :cond_0
    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 1

    .line 1583
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1584
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->shouldAnimateEditTextWithBounds:Z

    .line 1585
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->messageEditTextPredrawHeigth:I

    .line 1586
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->messageEditTextPredrawScrollY:I

    .line 1587
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 1589
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1590
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    const/4 p1, 0x0

    .line 1591
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->shouldAnimateEditTextWithBounds:Z

    .line 1593
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$8700(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$8502(Lorg/telegram/ui/Components/ShareAlert;F)F

    .line 1594
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected showPopup(I)V
    .locals 3

    .line 1599
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 1600
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1601
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$8802(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 1602
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$18;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$8900(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v0

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$18$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$18$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$18;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    :cond_0
    return-void
.end method
