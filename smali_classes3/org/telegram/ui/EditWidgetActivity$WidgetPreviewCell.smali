.class public Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;
.super Landroid/widget/FrameLayout;
.source "EditWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/EditWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetPreviewCell"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private bitmapRect:Landroid/graphics/RectF;

.field private cells:[Landroid/view/ViewGroup;

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private roundPaint:Landroid/graphics/Paint;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/EditWidgetActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/EditWidgetActivity;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 195
    iput-object v1, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    .line 196
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    .line 192
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    new-array v5, v3, [Landroid/view/ViewGroup;

    .line 193
    iput-object v5, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 198
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v6, 0x18

    .line 199
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v5, v7, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 201
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v7, -0x2

    const/16 v8, 0x11

    .line 203
    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v9, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .line 206
    sget v10, Lorg/telegram/messenger/R$string;->WidgetPreview:I

    const-string v11, "WidgetPreview"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x4

    .line 207
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 211
    sget v10, Lorg/telegram/messenger/R$drawable;->widget_bg:I

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v14, 0xa

    const/16 v16, 0xa

    const/16 v17, 0x0

    .line 212
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v6}, Lorg/telegram/ui/EditWidgetActivity;->access$402(Lorg/telegram/ui/EditWidgetActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 216
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v6

    const/4 v10, 0x0

    const/16 v11, 0xa0

    if-nez v6, :cond_1

    :goto_0
    if-ge v5, v3, :cond_0

    .line 218
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$layout;->shortcut_widget_item:I

    invoke-virtual {v6, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    .line 219
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v4, v4, v5

    const/4 v6, -0x1

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/EditWidgetActivity;->access$400(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0xda

    invoke-static {v4, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/EditWidgetActivity;->access$400(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->chats_widget_preview:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 223
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_1
    if-ge v5, v3, :cond_2

    .line 225
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$layout;->contacts_widget_item:I

    invoke-virtual {v6, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    .line 226
    iget-object v4, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v4, v4, v5

    invoke-static {v11, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 228
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/EditWidgetActivity;->access$400(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v11, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/EditWidgetActivity;->access$400(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->contacts_widget_preview:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->updateDialogs()V

    .line 233
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 712
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 714
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 715
    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 717
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v0, :cond_1

    .line 718
    invoke-interface {v0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 719
    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 644
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    .line 646
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    iput-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_0

    .line 649
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_1

    .line 650
    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 651
    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 653
    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 655
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$700(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getThemeAnimationValue()F

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_d

    if-nez v3, :cond_3

    .line 657
    iget-object v5, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-nez v5, :cond_4

    goto/16 :goto_7

    :cond_4
    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    .line 661
    iget-object v6, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v6}, Lorg/telegram/ui/EditWidgetActivity;->access$800(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    .line 662
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_5
    const/16 v6, 0xff

    .line 664
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 666
    :goto_3
    instance-of v6, v5, Landroid/graphics/drawable/ColorDrawable;

    if-nez v6, :cond_8

    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-nez v6, :cond_8

    instance-of v6, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v6, :cond_6

    goto/16 :goto_5

    .line 674
    :cond_6
    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_a

    .line 675
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 676
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v6, v7, :cond_7

    .line 677
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x40000000    # 2.0f

    .line 678
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v6

    .line 679
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 680
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v5, v1, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 682
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    .line 683
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    .line 684
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 685
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 686
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 687
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 688
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/2addr v9, v4

    sub-int/2addr v6, v7

    .line 689
    div-int/2addr v6, v4

    .line 690
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 691
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v8, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/2addr v8, v9

    add-int/2addr v7, v6

    .line 692
    invoke-virtual {v5, v9, v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 694
    :goto_4
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 667
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v1, v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 668
    instance-of v4, v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v4, :cond_9

    .line 669
    check-cast v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    .line 670
    invoke-virtual {v5, p1, p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->drawExactBoundsSize(Landroid/graphics/Canvas;Landroid/view/View;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    goto :goto_6

    .line 672
    :cond_9
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_6
    if-nez v3, :cond_c

    .line 697
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_c

    .line 698
    iget-object v4, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v4, :cond_b

    .line 699
    invoke-interface {v4}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    .line 700
    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 702
    :cond_b
    iput-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 703
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 706
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 639
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x108

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateDialogs()V
    .locals 25

    move-object/from16 v1, p0

    .line 237
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    const-string v3, "%d"

    const-string v4, "HiddenName"

    const-string v5, "RepliesTitle"

    const-string v7, "SavedMessages"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v15, 0x0

    if-nez v0, :cond_3d

    move v13, v15

    :goto_0
    if-ge v13, v12, :cond_3c

    .line 240
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v2, v0

    move-object/from16 v18, v3

    goto :goto_2

    .line 243
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    .line 244
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v12, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v12}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v18, v3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 247
    iget-object v2, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v2}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    .line 254
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v20, v4

    move-object v15, v7

    move-object/from16 v4, v18

    goto/16 :goto_20

    .line 257
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const-string v11, ""

    if-eqz v0, :cond_b

    .line 264
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 266
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 267
    sget v14, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v7, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 268
    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 269
    sget v14, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v5, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 270
    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 271
    sget v14, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v4, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 273
    :cond_7
    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v14, v15}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 275
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v15, :cond_8

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v15, :cond_8

    move-object/from16 v20, v4

    iget-wide v3, v15, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_9

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v3, :cond_9

    move-object v3, v15

    const/4 v6, 0x0

    move-object v15, v7

    goto :goto_6

    :cond_8
    move-object/from16 v20, v4

    :cond_9
    move-object v15, v7

    goto :goto_4

    :cond_a
    move-object/from16 v20, v4

    move-object v15, v7

    move-object v14, v11

    :goto_4
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v20, v4

    .line 280
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 282
    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 283
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v3, :cond_c

    move-object v15, v7

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_d

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v6, :cond_d

    move-object v6, v0

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    move-object v15, v7

    :cond_d
    move-object v6, v0

    goto :goto_5

    :cond_e
    move-object v15, v7

    move-object v6, v0

    move-object v14, v11

    :goto_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 288
    :goto_6
    iget-object v7, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v7, v7, v13

    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_text:I

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_f

    .line 293
    :try_start_0
    iget-object v4, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x30

    .line 297
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 298
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v4, 0x0

    .line 299
    invoke-virtual {v14, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 300
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v3, :cond_13

    if-eqz v0, :cond_12

    .line 304
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 305
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/16 v12, 0xc

    .line 306
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_8

    .line 307
    :cond_10
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v12, 0x1

    .line 308
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :cond_11
    :goto_8
    const/4 v9, 0x0

    goto :goto_9

    .line 311
    :cond_12
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 313
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v9, v10}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x65

    .line 314
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_8

    .line 318
    :goto_9
    invoke-virtual {v3, v9, v9, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    .line 321
    :cond_13
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v3, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 322
    iget-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_14

    .line 323
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    .line 324
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    :cond_14
    int-to-float v7, v7

    .line 326
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    .line 327
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 328
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 329
    iget-object v7, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 330
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v8, v8, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 331
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v7, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 332
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 334
    :goto_b
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_avatar:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    .line 337
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 340
    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    move-object v3, v0

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_38

    .line 345
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    const-wide/16 v22, 0x0

    cmp-long v0, v9, v22

    if-lez v0, :cond_16

    .line 347
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v4, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 349
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v4, 0x0

    .line 353
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$color;->widget_text:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 354
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v9, :cond_19

    .line 355
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v4, :cond_18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v0, :cond_17

    goto :goto_f

    .line 359
    :cond_17
    iget-object v11, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 361
    :cond_18
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    goto/16 :goto_1d

    :cond_19
    const-string v9, "\ud83c\udfa4 "

    const/16 v10, 0xe

    const-string v14, "\ud83d\udcf9 "

    move-object/from16 v24, v9

    if-eqz v6, :cond_2c

    .line 364
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v22, 0x0

    cmp-long v8, v8, v22

    if-lez v8, :cond_2c

    if-nez v0, :cond_2c

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 365
    :cond_1a
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 366
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v4, "FromYou"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    move-object v4, v0

    goto :goto_11

    :cond_1b
    if-eqz v4, :cond_1c

    .line 368
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1c
    const-string v0, "DELETED"

    goto :goto_10

    :goto_11
    const-string v0, "%2$s: \u2068%1$s\u2069"

    .line 374
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v8, 0x20

    const/16 v9, 0xa

    const/16 v12, 0x96

    if-eqz v6, :cond_22

    .line 375
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v12, :cond_1d

    const/4 v10, 0x0

    .line 377
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 380
    :cond_1d
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_1e

    move-object v10, v14

    :goto_12
    const/4 v11, 0x2

    goto :goto_13

    .line 382
    :cond_1e
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-eqz v10, :cond_1f

    move-object/from16 v10, v24

    goto :goto_12

    .line 384
    :cond_1f
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v10, "\ud83c\udfa7 "

    goto :goto_12

    .line 386
    :cond_20
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v10

    if-eqz v10, :cond_21

    const-string v10, "\ud83d\uddbc "

    goto :goto_12

    :cond_21
    const-string v10, "\ud83d\udcce "

    goto :goto_12

    :goto_13
    new-array v12, v11, [Ljava/lang/Object;

    .line 391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v12, v8

    const/4 v6, 0x1

    aput-object v4, v12, v6

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_18

    .line 392
    :cond_22
    iget-object v14, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v14, :cond_29

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v14

    if-nez v14, :cond_29

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 395
    iget-object v11, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const/16 v14, 0x12

    if-eqz v12, :cond_24

    .line 396
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 397
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v14, :cond_23

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    .line 398
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v10, v14

    const-string v11, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_14

    :cond_23
    const/4 v6, 0x1

    const/4 v14, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    .line 400
    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v6, v10, v14

    const-string v6, "\ud83d\udcca %s"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_14
    const/4 v12, 0x1

    const/16 v19, 0x0

    goto :goto_15

    .line 402
    :cond_24
    instance-of v6, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_26

    .line 403
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_25

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    .line 404
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v11, v10, v19

    const-string v11, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move v12, v6

    goto :goto_15

    :cond_25
    const/4 v6, 0x1

    const/16 v19, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    .line 406
    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v6, v10, v19

    const-string v6, "\ud83c\udfae %s"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    goto :goto_15

    :cond_26
    const/16 v19, 0x0

    .line 408
    iget v6, v3, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v6, v10, :cond_28

    .line 409
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_27

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/Object;

    .line 410
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v19

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string v11, "\ud83c\udfa7 \u2068%s - %s\u2069"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    :cond_27
    const/4 v6, 0x2

    const/4 v12, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    .line 412
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v19

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v12

    const-string v6, "\ud83c\udfa7 %s - %s"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    :cond_28
    const/4 v12, 0x1

    .line 415
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 417
    :goto_15
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v6, v9, v19

    aput-object v4, v9, v12

    .line 418
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 420
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    .line 422
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_16
    move-object v11, v8

    goto :goto_19

    .line 424
    :cond_29
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v10, :cond_2b

    .line 426
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v12, :cond_2a

    const/4 v11, 0x0

    .line 427
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_17

    :cond_2a
    const/4 v11, 0x0

    .line 429
    :goto_17
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v11

    const/4 v6, 0x1

    aput-object v4, v10, v6

    .line 430
    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_18

    .line 432
    :cond_2b
    invoke-static {v11}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_18
    move-object v11, v0

    .line 435
    :goto_19
    :try_start_2
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    const/16 v6, 0x21

    const/4 v8, 0x0

    invoke-virtual {v11, v0, v8, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    .line 437
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 441
    :cond_2c
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_2d

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v4, :cond_2d

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_2d

    .line 442
    sget v0, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v4, "AttachPhotoExpired"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1d

    .line 443
    :cond_2d
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_2e

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v4, :cond_2e

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_2e

    .line 444
    sget v0, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    const-string v4, "AttachVideoExpired"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1d

    .line 445
    :cond_2e
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_33

    .line 447
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object v9, v14

    goto :goto_1a

    .line 449
    :cond_2f
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v9, v24

    goto :goto_1a

    .line 451
    :cond_30
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v9, "\ud83c\udfa7 "

    goto :goto_1a

    .line 453
    :cond_31
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v9, "\ud83d\uddbc "

    goto :goto_1a

    :cond_32
    const-string v9, "\ud83d\udcce "

    .line 458
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1d

    .line 460
    :cond_33
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v4, :cond_34

    .line 461
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcca "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    move-object v11, v0

    goto :goto_1c

    .line 463
    :cond_34
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_35

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83c\udfae "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 465
    :cond_35
    iget v0, v3, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v0, v10, :cond_36

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 466
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v0, v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v0, v6

    const-string v4, "\ud83c\udfa7 %s - %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 468
    :cond_36
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 469
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v0, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    goto :goto_1b

    .line 471
    :goto_1c
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_37

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 478
    :cond_37
    :goto_1d
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1f

    .line 482
    :cond_38
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    if-eqz v0, :cond_39

    .line 483
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 485
    :cond_39
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :goto_1e
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :goto_1f
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v0, :cond_3b

    .line 490
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v4, v18

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v8, v9, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 493
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->widget_counter_muted:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_20

    .line 495
    :cond_3a
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->widget_counter:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_20

    :cond_3b
    move-object/from16 v4, v18

    .line 498
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v13

    sget v2, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    add-int/lit8 v13, v13, 0x1

    move-object v3, v4

    move-object v7, v15

    move-object/from16 v4, v20

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 501
    :cond_3c
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget v2, Lorg/telegram/messenger/R$id;->shortcut_widget_item_divider:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3a

    :cond_3d
    move-object/from16 v20, v4

    move-object v15, v7

    const/4 v6, 0x1

    move-object v4, v3

    .line 503
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-ne v0, v6, :cond_5d

    const/4 v2, 0x0

    :goto_21
    const/4 v6, 0x2

    if-ge v2, v6, :cond_5d

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v6, :cond_5c

    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v7

    .line 508
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v6}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 509
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3f

    .line 510
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 511
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v6, :cond_40

    .line 513
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 514
    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_23

    .line 520
    :cond_3e
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v6}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3f

    .line 521
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v8, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v8}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v6, :cond_40

    .line 523
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 524
    iget-object v8, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v8}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_23

    :cond_3f
    const/4 v6, 0x0

    :cond_40
    :goto_23
    if-nez v6, :cond_44

    .line 531
    iget-object v6, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v6, v6, v2

    if-nez v7, :cond_41

    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item1:I

    goto :goto_24

    :cond_41
    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item2:I

    :goto_24
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_42

    const/4 v6, 0x2

    if-ne v0, v6, :cond_43

    .line 533
    :cond_42
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_43
    move-object v10, v15

    move-object/from16 v11, v20

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v17, 0xc

    const-wide/16 v20, 0x0

    goto/16 :goto_39

    .line 537
    :cond_44
    iget-object v8, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v8, v8, v2

    if-nez v7, :cond_45

    sget v9, Lorg/telegram/messenger/R$id;->contacts_widget_item1:I

    goto :goto_25

    :cond_45
    sget v9, Lorg/telegram/messenger/R$id;->contacts_widget_item2:I

    :goto_25
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x2

    if-eqz v0, :cond_46

    if-ne v0, v8, :cond_47

    .line 539
    :cond_46
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 547
    :cond_47
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 548
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 550
    sget v9, Lorg/telegram/messenger/R$string;->SavedMessages:I

    move-object v10, v15

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_26
    move-object/from16 v11, v20

    goto :goto_27

    :cond_48
    move-object v10, v15

    .line 551
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 552
    sget v9, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_26

    .line 553
    :cond_49
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 554
    sget v9, Lorg/telegram/messenger/R$string;->HiddenName:I

    move-object/from16 v11, v20

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_27

    :cond_4a
    move-object/from16 v11, v20

    .line 556
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    .line 558
    :goto_27
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-nez v13, :cond_4b

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-nez v13, :cond_4b

    if-eqz v0, :cond_4b

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v13, :cond_4b

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_4b

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v20, 0x0

    cmp-long v14, v14, v20

    if-eqz v14, :cond_4b

    iget v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v14, :cond_4b

    move-object v14, v9

    const/4 v9, 0x0

    goto :goto_28

    :cond_4b
    move-object v14, v9

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_28
    const-wide/16 v20, 0x0

    goto :goto_2a

    :cond_4c
    move-object v10, v15

    move-object/from16 v11, v20

    .line 562
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v13, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 563
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 564
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v13, :cond_4d

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_4d

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v20, 0x0

    cmp-long v14, v14, v20

    if-eqz v14, :cond_4e

    iget v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v14, :cond_4e

    move-object v14, v9

    goto :goto_29

    :cond_4d
    const-wide/16 v20, 0x0

    :cond_4e
    move-object v14, v9

    const/4 v13, 0x0

    :goto_29
    move-object v9, v0

    const/4 v0, 0x0

    .line 568
    :goto_2a
    iget-object v15, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v15, v15, v2

    if-nez v7, :cond_4f

    sget v16, Lorg/telegram/messenger/R$id;->contacts_widget_item_text1:I

    goto :goto_2b

    :cond_4f
    sget v16, Lorg/telegram/messenger/R$id;->contacts_widget_item_text2:I

    :goto_2b
    move/from16 v3, v16

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v13, :cond_50

    .line 572
    :try_start_3
    iget-object v3, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v3, v13, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2c

    :cond_50
    const/4 v3, 0x0

    :goto_2c
    const/16 v13, 0x30

    .line 576
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    .line 577
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/4 v8, 0x0

    .line 578
    invoke-virtual {v15, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 579
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v3, :cond_55

    if-eqz v0, :cond_54

    .line 583
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 584
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v9, :cond_51

    const/16 v9, 0xc

    .line 585
    :try_start_4
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2d

    :cond_51
    const/16 v9, 0xc

    .line 586
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v12, 0x1

    .line 587
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_52
    :goto_2d
    move/from16 v17, v9

    :cond_53
    :goto_2e
    const/4 v9, 0x0

    goto :goto_2f

    :catchall_1
    move-exception v0

    move/from16 v17, v9

    goto/16 :goto_32

    :cond_54
    const/16 v17, 0xc

    .line 590
    :try_start_5
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 592
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v12, v13}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x65

    .line 593
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2e

    .line 597
    :goto_2f
    invoke-virtual {v3, v9, v9, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 598
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_30

    :cond_55
    const/16 v17, 0xc

    .line 600
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v3, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    int-to-float v9, v14

    .line 601
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    .line 602
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 603
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 604
    iget-object v9, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 605
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    int-to-float v12, v12

    const/4 v13, 0x0

    :try_start_6
    invoke-virtual {v0, v13, v13, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 606
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v12, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v9, v3, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 607
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v9, 0x0

    .line 609
    :goto_30
    :try_start_7
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 610
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-nez v7, :cond_56

    sget v3, Lorg/telegram/messenger/R$id;->contacts_widget_item_avatar1:I

    goto :goto_31

    :cond_56
    sget v3, Lorg/telegram/messenger/R$id;->contacts_widget_item_avatar2:I

    :goto_31
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_34

    :catchall_2
    move-exception v0

    goto :goto_33

    :catchall_3
    move-exception v0

    const/4 v9, 0x0

    goto :goto_33

    :catchall_4
    move-exception v0

    :goto_32
    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_33

    :catchall_5
    move-exception v0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v17, 0xc

    .line 612
    :goto_33
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 615
    :goto_34
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v0, :cond_5a

    const/16 v3, 0x63

    if-le v0, v3, :cond_57

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    .line 618
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v0, v8

    const-string v3, "%d+"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_57
    const/4 v6, 0x1

    const/4 v8, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    .line 620
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_35
    iget-object v3, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v3, v3, v2

    if-nez v7, :cond_58

    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge1:I

    goto :goto_36

    :cond_58
    sget v8, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge2:I

    :goto_36
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-nez v7, :cond_59

    sget v3, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg1:I

    goto :goto_37

    :cond_59
    sget v3, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg2:I

    :goto_37
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_5a
    const/4 v6, 0x1

    .line 625
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-nez v7, :cond_5b

    sget v3, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg1:I

    goto :goto_38

    :cond_5b
    sget v3, Lorg/telegram/messenger/R$id;->contacts_widget_item_badge_bg2:I

    :goto_38
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_39
    add-int/lit8 v7, v7, 0x1

    move-object v15, v10

    move-object/from16 v20, v11

    const/4 v6, 0x2

    goto/16 :goto_22

    :cond_5c
    move-object v10, v15

    move-object/from16 v11, v20

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v17, 0xc

    const-wide/16 v20, 0x0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v11

    goto/16 :goto_21

    .line 630
    :cond_5d
    :goto_3a
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->cells:[Landroid/view/ViewGroup;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5e

    .line 631
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$400(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3b

    .line 633
    :cond_5e
    iget-object v0, v1, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$400(Lorg/telegram/ui/EditWidgetActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3b
    return-void
.end method
