.class public Lorg/telegram/ui/Cells/DrawerActionCell;
.super Landroid/widget/FrameLayout;
.source "DrawerActionCell.java"


# instance fields
.field private currentId:I

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isRectIconType:Z

.field private rect:Landroid/graphics/RectF;

.field private final rectIconBackgroundPaint:Landroid/graphics/Paint;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rectIconBackgroundPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 71
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    .line 74
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x33

    const/16 v3, 0x13

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v3, 0x48

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 196
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, "  d"

    .line 197
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    new-instance p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(F)V

    .line 199
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    .line 200
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 87
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    const/high16 v1, 0x41380000    # 11.5f

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rectIconBackgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    const/16 v4, 0x1e

    .line 91
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 92
    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v3, v0, v4

    sub-float v6, v2, v4

    add-float/2addr v0, v4

    add-float/2addr v2, v4

    invoke-virtual {v5, v3, v6, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v1

    mul-float/2addr v2, v1

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rectIconBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 99
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    const-string v2, "VALIDATE_PHONE_NUMBER"

    .line 100
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VALIDATE_PASSWORD"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x41480000    # 12.5f

    .line 101
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/16 v2, 0x9

    .line 102
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    const/16 v4, 0x19

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x40b00000    # 5.5f

    .line 105
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 106
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

    .line 107
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v1

    mul-float/2addr v2, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 111
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 112
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

    .line 113
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 120
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

.method public setBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 4

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 172
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    long-to-int v2, v0

    iput v2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    const-wide/32 v2, 0x765bf322

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->drawer_wallet_bot:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Cells/DrawerActionCell;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getSideAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    const-string v2, "24_24"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(II)V

    .line 189
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 191
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public setTextAndIcon(ILjava/lang/String;IZ)V
    .locals 2

    .line 131
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->isRectIconType:Z

    .line 132
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 134
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    .line 136
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p4, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p4, :cond_1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuItemIcon:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public updateTextAndIcon(Ljava/lang/String;I)V
    .locals 1

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
