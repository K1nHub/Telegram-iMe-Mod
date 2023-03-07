.class Lorg/telegram/ui/PhotoAlbumPickerActivity$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastNotifyWidth:I

.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9

    .line 241
    iget p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->lastNotifyWidth:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_0

    .line 242
    iput p4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->lastNotifyWidth:I

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 249
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p2

    :goto_0
    const/16 v1, 0x14

    .line 250
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt p2, v1, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 251
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_2
    if-ge v0, p1, :cond_c

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    goto/16 :goto_8

    .line 258
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 261
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 266
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    const/16 v6, 0x33

    :cond_4
    and-int/lit8 v7, v6, 0x7

    and-int/lit8 v6, v6, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_5

    .line 283
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_4

    :cond_5
    sub-int v7, p4, v4

    .line 279
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    goto :goto_3

    :cond_6
    sub-int v7, p4, v4

    .line 276
    div-int/lit8 v7, v7, 0x2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v7, v8

    :goto_4
    const/16 v8, 0x10

    if-eq v6, v8, :cond_9

    const/16 v8, 0x30

    if-eq v6, v8, :cond_8

    const/16 v8, 0x50

    if-eq v6, v8, :cond_7

    .line 297
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_7
    sub-int v6, p5, v1

    sub-int/2addr v6, p3

    sub-int/2addr v6, v5

    .line 294
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 288
    :cond_8
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_6

    :cond_9
    sub-int v6, p5, v1

    sub-int/2addr v6, p3

    sub-int/2addr v6, v5

    .line 291
    div-int/lit8 v6, v6, 0x2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_5
    sub-int v3, v6, v3

    .line 300
    :goto_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 301
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_7

    .line 304
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :goto_7
    sub-int/2addr v3, v6

    :cond_b
    add-int/2addr v4, v7

    add-int/2addr v5, v3

    .line 307
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 310
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 203
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 205
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v2

    :goto_0
    const/16 v4, 0x14

    .line 206
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-gt v2, v4, :cond_1

    .line 207
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_2

    .line 208
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result p2

    sub-int/2addr v1, p2

    .line 209
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 212
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->ignoreLayout:Z

    .line 213
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 214
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->ignoreLayout:Z

    .line 217
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_a

    .line 219
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 220
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3

    goto/16 :goto_5

    .line 223
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 224
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 231
    :cond_4
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 225
    :cond_5
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 226
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0xc8

    goto :goto_4

    :cond_6
    const/16 v6, 0x140

    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v8, v1, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 228
    :cond_7
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v6, v1, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    .line 234
    invoke-virtual/range {v6 .. v11}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
