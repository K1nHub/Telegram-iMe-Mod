.class Lorg/telegram/ui/PasscodeActivity$3;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;

.field final synthetic val$fragmentContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    iput-object p3, p0, Lorg/telegram/ui/PasscodeActivity$3;->val$fragmentContentView:Landroid/view/View;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    const/16 p3, 0xe6

    const/4 p4, 0x0

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/16 p5, 0x14

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    if-lt p1, p5, :cond_1

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$300(Lorg/telegram/ui/PasscodeActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->val$fragmentContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p4, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->val$fragmentContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p4, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->val$fragmentContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p4, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->val$fragmentContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p4, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 511
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 512
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 517
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 518
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0xe6

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 522
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->val$fragmentContentView:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v3, p2}, Landroid/view/View;->measure(II)V

    .line 525
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method
