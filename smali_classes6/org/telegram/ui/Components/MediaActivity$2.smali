.class Lorg/telegram/ui/Components/MediaActivity$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MediaActivity;

.field final synthetic val$avatarContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iput-object p3, p0, Lorg/telegram/ui/Components/MediaActivity$2;->val$avatarContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isInFastScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkPinchToZoom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 318
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawList(Landroid/graphics/Canvas;Z)V
    .locals 0

    .line 323
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object p2, p2, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->drawListForBlur(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 284
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/MediaActivity;->access$100(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->val$avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/MediaActivity;->access$200(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 288
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_2
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ge v3, v0, :cond_5

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/MediaActivity;->access$300(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 293
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    div-int/2addr v0, v1

    const/16 v2, 0x16

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_2

    const/4 v2, 0x4

    goto :goto_3

    :cond_2
    const/4 v2, 0x5

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 294
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/MediaActivity;->access$300(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 295
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 298
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/MediaActivity;->access$400(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    .line 299
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    div-int/2addr v0, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    div-int/2addr v2, v1

    const/16 v4, 0x13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/MediaActivity;->access$400(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 305
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$2;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    const/16 v3, 0x2a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 307
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
