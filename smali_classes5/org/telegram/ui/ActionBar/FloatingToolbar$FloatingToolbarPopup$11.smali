.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$overflowButtonStartX:F

.field final synthetic val$overflowButtonTargetX:F

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;FFI)V
    .locals 0

    .line 742
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonStartX:F

    iput p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonTargetX:F

    iput p4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->val$startWidth:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 745
    iget p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonStartX:F

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->val$overflowButtonTargetX:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$1600(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->val$startWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    add-float/2addr p2, v0

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$2200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 749
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$2300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 750
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
