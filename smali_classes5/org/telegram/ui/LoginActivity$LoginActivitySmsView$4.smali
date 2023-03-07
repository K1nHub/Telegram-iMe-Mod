.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;
.super Landroid/widget/TextView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 3765
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3766
    new-instance p1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/4 p2, 0x1

    .line 3769
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    return-void
.end method

.method private updateLoadingLayout()V
    .locals 6

    .line 3787
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3791
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3795
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    const/4 v3, 0x0

    .line 3797
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v4, 0x0

    .line 3798
    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 3799
    invoke-virtual {v0, v3, v1, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3800
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    .line 3801
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 3803
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v1, "chat_linkSelectBackground"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 3804
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3f59999a    # 0.85f

    .line 3805
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 3806
    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/high16 v4, 0x40600000    # 3.5f

    .line 3807
    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    .line 3808
    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 3804
    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 3811
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->updateBounds()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3816
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3818
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$9600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3819
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3820
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3821
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3822
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3823
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3781
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 3783
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->updateLoadingLayout()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 3774
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3776
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;->updateLoadingLayout()V

    return-void
.end method
