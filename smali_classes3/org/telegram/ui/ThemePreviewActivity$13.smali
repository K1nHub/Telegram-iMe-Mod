.class Lorg/telegram/ui/ThemePreviewActivity$13;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rotation:I

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1351
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->rotation:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1355
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$5200(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->rotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1357
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->rotation:I

    add-int/lit8 v0, v0, -0x2d

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->rotation:I

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$5200(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1359
    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 1360
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 1361
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition()V

    goto :goto_0

    .line 1363
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$13;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5300(Lorg/telegram/ui/ThemePreviewActivity;)V

    :goto_0
    return-void
.end method
