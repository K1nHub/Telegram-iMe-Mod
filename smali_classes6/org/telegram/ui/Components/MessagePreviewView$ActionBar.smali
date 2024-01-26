.class Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;
.super Landroid/widget/FrameLayout;
.source "MessagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBar"
.end annotation


# instance fields
.field private editorButton:Landroid/widget/ImageView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field private final title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public static synthetic $r8$lambda$JlVKYiHiQYgWscqYBMSetF0oabQ(Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 2410
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    .line 2411
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2412
    iput-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2414
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v8, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 2415
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1ae

    move-object v0, v7

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const-string v0, "fonts/rmedium.ttf"

    .line 2416
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2417
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/16 v0, 0x12

    .line 2418
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 2419
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v0, v8

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 2420
    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2421
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 2423
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v7, v8, v8, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v1, 0x3e99999a    # 0.3f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1ae

    move-object v0, v7

    move-object v6, v9

    .line 2424
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 2425
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {v7, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/16 p3, 0xe

    .line 2426
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v7, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 2427
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr p3, v8

    invoke-virtual {v7, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 2428
    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2429
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 2431
    iget-object p3, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagePreviewParams;->isFromShareAlert()Z

    move-result p3

    if-nez p3, :cond_0

    .line 2432
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    .line 2433
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2434
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2435
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2436
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2443
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    const/16 p2, 0x15

    const/16 p3, 0x30

    invoke-static {p3, p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;)V
    .locals 0

    .line 2373
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->updateEditorButton()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 2438
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2439
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 2441
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->didOpenEditorPressed()V

    return-void
.end method

.method private setBounds(Landroid/graphics/drawable/Drawable;F)V
    .locals 5

    .line 2474
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    float-to-int p2, p2

    const/16 v1, 0x20

    .line 2475
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, p2, v2

    .line 2476
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sub-int/2addr v3, v4

    .line 2477
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 2473
    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateEditorButton()V
    .locals 4

    .line 2383
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2386
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2387
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_1

    .line 2388
    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->getSelectedMessages(Ljava/util/ArrayList;Z)V

    .line 2390
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;Z)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2396
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2391
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2392
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2393
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2484
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const v2, 0x4196a3d7    # 18.83f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setBounds(Landroid/graphics/drawable/Drawable;F)V

    .line 2485
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x421e0000    # 39.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setBounds(Landroid/graphics/drawable/Drawable;F)V

    .line 2488
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x38

    .line 2463
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/16 p1, 0x12

    .line 2464
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->editorButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 p1, 0x5

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 2458
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_0

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_0

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2469
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
