.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;)V
    .locals 0

    .line 2265
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;->this$1:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2268
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2269
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;->this$1:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    iget-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    .line 2270
    iget-object v1, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    iput-object v1, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageView:Landroid/widget/ImageView;

    .line 2271
    iput-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    .line 2272
    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 2273
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;->this$1:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->image2View:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2274
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton$2;->this$1:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->imageSwitchAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
