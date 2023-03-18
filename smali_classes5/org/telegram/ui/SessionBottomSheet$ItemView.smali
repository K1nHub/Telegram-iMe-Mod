.class Lorg/telegram/ui/SessionBottomSheet$ItemView;
.super Landroid/widget/FrameLayout;
.source "SessionBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SessionBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemView"
.end annotation


# instance fields
.field descriptionText:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field needDivider:Z

.field switchView:Lorg/telegram/ui/Components/Switch;

.field valueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 391
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 388
    iput-boolean v2, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->needDivider:Z

    .line 392
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    .line 393
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 394
    iget-object v3, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->iconView:Landroid/widget/ImageView;

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 397
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x4

    const/4 v11, 0x4

    .line 398
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    .line 401
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 402
    iget-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 403
    iget-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    iget-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    const/16 v8, 0x40

    if-eqz p2, :cond_0

    const/16 v14, 0x40

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    const/high16 v9, 0x41500000    # 13.0f

    .line 407
    invoke-virtual {v5, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    iget-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 409
    iget-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    const-string v6, "windowBackgroundWhiteGrayText"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    iget-object v5, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/4 v13, 0x4

    if-eqz p2, :cond_1

    const/16 v14, 0x40

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    .line 411
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v5, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz p2, :cond_2

    .line 414
    new-instance v2, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    .line 415
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(I)V

    .line 416
    iget-object v1, v0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    const/16 v2, 0x25

    const/16 v3, 0x28

    const/16 v4, 0x15

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 423
    iget-boolean v0, p0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->needDivider:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    .line 424
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_1

    const-string v0, "android.widget.Switch"

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->valueText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/SessionBottomSheet$ItemView;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string v2, "NotificationsOn"

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v2, "NotificationsOff"

    :goto_0
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
