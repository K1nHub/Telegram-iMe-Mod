.class public Lorg/telegram/ui/Cells/DrawerActionCell;
.super Landroid/widget/FrameLayout;
.source "DrawerActionCell.java"


# instance fields
.field private currentId:I

.field private imageView:Landroid/widget/ImageView;

.field private isRectIconType:Z

.field private rect:Landroid/graphics/RectF;

.field private final rectIconBackgroundPaint:Landroid/graphics/Paint;

.field private textView:Landroid/widget/TextView;

.field private wasRTL:Z

.field private wasRectIconType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rectIconBackgroundPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    .line 59
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 61
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    .line 62
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DrawerActionCell;->toggleRTL(Z)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 86
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    const/high16 v1, 0x41380000    # 11.5f

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rectIconBackgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 89
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    const/16 v4, 0x1e

    .line 90
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 91
    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v3, v0, v4

    sub-float v6, v2, v4

    add-float/2addr v0, v4

    add-float/2addr v2, v4

    invoke-virtual {v5, v3, v6, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v1

    mul-float/2addr v2, v1

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rectIconBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 98
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    const-string v2, "VALIDATE_PHONE_NUMBER"

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VALIDATE_PASSWORD"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/high16 v0, 0x41480000    # 12.5f

    .line 100
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/16 v2, 0x9

    .line 101
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 102
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v4, 0x19

    if-eqz v3, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_0
    const/high16 v4, 0x40b00000    # 5.5f

    .line 104
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 105
    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v0

    add-int/2addr v3, v2

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/16 v3, 0x17

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v4, v5, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v1

    mul-float/2addr v2, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 110
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 111
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setTextAndIcon(ILjava/lang/String;IZ)V
    .locals 1

    .line 129
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DrawerActionCell;->toggleRTL(Z)V

    .line 131
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    .line 133
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p4, :cond_0

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    goto :goto_0

    :cond_0
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    :goto_0
    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 137
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public toggleRTL(Z)V
    .locals 11

    .line 74
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->wasRTL:Z

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->wasRectIconType:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_7

    .line 75
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->wasRTL:Z

    .line 76
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->wasRectIconType:Z

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x18

    const/16 v1, 0x18

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-eqz v2, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_0
    or-int/lit8 v3, v3, 0x30

    const/4 v4, 0x0

    const/16 v5, 0x13

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    const/16 v9, 0xc

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    const/4 v10, 0x0

    move v2, v3

    move v3, v6

    move v4, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v7, v8

    :goto_3
    or-int/lit8 v3, v7, 0x30

    const/16 v4, 0x10

    const/16 v5, 0x48

    if-eqz v2, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v5

    :goto_4
    const/4 v7, 0x0

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v5, v4

    :goto_5
    const/4 v8, 0x0

    move v2, v3

    move v3, v6

    move v4, v7

    move v6, v8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public updateTextAndIcon(Ljava/lang/String;I)V
    .locals 1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 146
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
