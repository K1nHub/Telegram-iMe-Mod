.class Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultThemesPreviewCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DefaultThemesPreviewCell$1;->lambda$onClick$0(ILandroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$1;

.field final synthetic val$iconNewColor:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DefaultThemesPreviewCell$1;I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;->this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$1;

    iput p2, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;->val$iconNewColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;->this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$1;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell$1;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$1$2;->val$iconNewColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 227
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
