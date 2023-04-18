.class Lorg/telegram/ui/Components/ChatActivityEnterView$55;
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

    .line 8532
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$isVisible:Z

    iput p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$startAlpha:F

    iput p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$startX:F

    iput p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$endAlpha:F

    iput p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$endX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 8567
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 8568
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 8570
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8571
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$isVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8572
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$endAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8573
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$endX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 8574
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 8576
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 8577
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 8578
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8555
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$isVisible:Z

    if-nez p1, :cond_1

    .line 8556
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8557
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8559
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 8560
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 8535
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 8536
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 8537
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 8540
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8541
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$startAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8542
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->val$startX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 8543
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 8545
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 8546
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 8548
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8549
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$55;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method
