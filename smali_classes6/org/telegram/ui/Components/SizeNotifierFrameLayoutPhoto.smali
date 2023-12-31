.class public Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SizeNotifierFrameLayoutPhoto.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private keyboardHeight:I

.field private rect:Landroid/graphics/Rect;

.field private withoutWindow:Z


# direct methods
.method public static synthetic $r8$lambda$e2vRIPDnSpdzW_po7Xl0H9Ogx9E(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->lambda$notifyHeightChanged$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$notifyHeightChanged$0(Z)V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-eqz v0, :cond_0

    .line 77
    iget v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    return v0
.end method

.method public measureKeyboardHeight()I
    .locals 4

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 58
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->withoutWindow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    return v1

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    const/16 v0, 0xa

    .line 63
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2
.end method

.method public notifyHeightChanged()V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->measureKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    .line 74
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 45
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    .line 46
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setWithoutWindow(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->withoutWindow:Z

    return-void
.end method
