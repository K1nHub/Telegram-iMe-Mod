.class Lorg/telegram/ui/Components/PipVideoOverlay$3$1;
.super Ljava/lang/Object;
.source "PipVideoOverlay.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoOverlay$3;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PipVideoOverlay$3;

.field final synthetic val$springs:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay$3;Ljava/util/List;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;->this$1:Lorg/telegram/ui/Components/PipVideoOverlay$3;

    iput-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;->val$springs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 626
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 628
    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;->val$springs:Ljava/util/List;

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;->val$springs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 630
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;->this$1:Lorg/telegram/ui/Components/PipVideoOverlay$3;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->access$2500(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V

    :cond_0
    return-void
.end method
