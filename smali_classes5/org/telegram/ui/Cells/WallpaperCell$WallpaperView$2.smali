.class Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WallpaperCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;Z)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->val$checked:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    invoke-static {v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$500(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    invoke-static {v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$500(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$502(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    invoke-static {v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$500(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    invoke-static {v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$500(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$502(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 258
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->val$checked:Z

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView$2;->this$1:Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
