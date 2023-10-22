.class Lorg/telegram/ui/ChatActivity$64;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createPinnedMessageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$I1KE50Wo5ej6duNoBoEzG59evbI(Lorg/telegram/ui/ChatActivity$64;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$64;->lambda$new$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 10616
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 10622
    new-instance p1, Lorg/telegram/ui/ChatActivity$64$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$64$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$64;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)Z
    .locals 1

    .line 10623
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 10627
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$31300(Lorg/telegram/ui/ChatActivity;Z)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 10667
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/PinnedLineView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 10668
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10669
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 10672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31200(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v1

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31200(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 10678
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 10679
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$31100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/PinnedLineView;

    move-result-object p4

    if-ne p2, p4, :cond_3

    .line 10680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 10673
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10674
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x26

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 10675
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 10676
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return p3
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 10654
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 10655
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$30900(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    move p2, p1

    .line 10656
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31000(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 10657
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31000(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 10658
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31000(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10661
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$30902(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 10636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
