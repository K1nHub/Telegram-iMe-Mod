.class Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    .line 8805
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 8829
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8830
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$8900(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 8808
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17500(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8812
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17600(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 8813
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17600(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 8814
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8815
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3dcccccd    # 0.1f

    .line 8816
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8817
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8818
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17600(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 8819
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit16 p1, p1, 0x96

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 8820
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17700(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8821
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17700(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8822
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17700(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8824
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$17600(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$1;->this$0:Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
