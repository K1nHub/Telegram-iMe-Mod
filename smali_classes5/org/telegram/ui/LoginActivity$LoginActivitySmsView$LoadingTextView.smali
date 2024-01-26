.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;
.super Landroid/widget/TextView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTextView"
.end annotation


# instance fields
.field public final loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final rippleDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;)V
    .locals 0

    .line 4625
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .line 4626
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4622
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 4623
    new-instance p2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 4627
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x1

    .line 4628
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 4629
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setSpeed(F)V

    return-void
.end method

.method private updateLoadingLayout()V
    .locals 6

    .line 4647
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4651
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4655
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    const/4 v3, 0x3

    .line 4656
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/LinkPath;->setInset(FF)V

    const/4 v3, 0x0

    .line 4658
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v4, 0x0

    .line 4659
    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 4660
    invoke-virtual {v0, v3, v1, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4661
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/LinkPath;->getBounds(Landroid/graphics/RectF;)V

    .line 4662
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    .line 4664
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 4666
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 4667
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3f59999a    # 0.85f

    .line 4668
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 4669
    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/high16 v4, 0x40600000    # 3.5f

    .line 4670
    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    .line 4671
    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 4667
    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 4674
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->updateBounds()V

    return-void
.end method


# virtual methods
.method protected isRippleEnabled()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 4679
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4680
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4681
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4682
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4684
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4686
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$9800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4687
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4688
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4689
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4690
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4691
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4641
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 4643
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->updateLoadingLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 4702
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->isRippleEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 4703
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4704
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4706
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 4707
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 4708
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4710
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 4634
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4636
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->updateLoadingLayout()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 4697
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
