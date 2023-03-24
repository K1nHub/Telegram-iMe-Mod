.class Lorg/telegram/ui/Components/ReactionsContainerLayout$8;
.super Ljava/lang/Object;
.source "ReactionsContainerLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field final synthetic val$fromProgress:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;->val$fromProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$3002(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F

    .line 1552
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;->val$fromProgress:F

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$3000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2502(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F

    .line 1553
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
