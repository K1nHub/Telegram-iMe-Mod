.class Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;
.super Landroid/widget/FrameLayout;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetReplyIconCell"
.end annotation


# instance fields
.field private imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private offText:Lorg/telegram/ui/Components/Text;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V
    .locals 7

    .line 599
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    .line 600
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 602
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 604
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 605
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 606
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->ChannelReplyIcon:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->UserReplyIcon:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x17

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 p2, 0x0

    const/16 v0, 0x18

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 593
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->updateImageBounds()V

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 639
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->offText:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_0

    .line 640
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->offText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/16 v1, 0x13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getColor()I
    .locals 3

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$800(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$800(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0

    .line 650
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1200(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_1

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$800(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v0

    return v0

    .line 658
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 677
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 671
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 664
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x32

    .line 665
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 663
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public update(Z)V
    .locals 4

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1100(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity;->access$1100(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 616
    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->offText:Lorg/telegram/ui/Components/Text;

    goto :goto_1

    .line 618
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->offText:Lorg/telegram/ui/Components/Text;

    if-nez p1, :cond_2

    .line 620
    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->ChannelReplyIconOff:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->UserReplyIconOff:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;I)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->offText:Lorg/telegram/ui/Components/Text;

    :cond_2
    :goto_1
    return-void
.end method

.method public updateImageBounds()V
    .locals 6

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 627
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x15

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 628
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 629
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v4, v2

    .line 630
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->imageDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    .line 626
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
