.class Lorg/telegram/ui/Components/ChatActivityEnterView$66;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$endAlpha:F

.field final synthetic val$endX:F

.field final synthetic val$isVisible:Z

.field final synthetic val$startAlpha:F

.field final synthetic val$startX:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;ZFFFF)V
    .locals 0

    .line 9645
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$isVisible:Z

    iput p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$startAlpha:F

    iput p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$startX:F

    iput p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$endAlpha:F

    iput p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$endX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 9684
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 9685
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 9687
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9688
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$isVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9689
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$endAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9690
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$endX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 9691
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 9693
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 9694
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 9695
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 9696
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 9697
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 9670
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$isVisible:Z

    if-nez p1, :cond_1

    .line 9671
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9672
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9674
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 9675
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 9676
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 9677
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 9648
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 9649
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 9650
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 9653
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9654
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$startAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9655
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->val$startX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 9656
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 9658
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 9659
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$18200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 9660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 9661
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 9663
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9664
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$66;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method
