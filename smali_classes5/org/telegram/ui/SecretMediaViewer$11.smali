.class Lorg/telegram/ui/SecretMediaViewer$11;
.super Landroid/transition/Fade;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;

.field final synthetic val$isCaptionEmpty:Z

.field final synthetic val$isCurrentCaptionEmpty:Z


# direct methods
.method public static synthetic $r8$lambda$jFwwHgPYe3oGqiLiQl5xE1k3uhA(Lorg/telegram/ui/SecretMediaViewer$11;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer$11;->lambda$onAppear$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;IZZ)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    iput-boolean p3, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$isCurrentCaptionEmpty:Z

    iput-boolean p4, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$isCaptionEmpty:Z

    invoke-direct {p0, p2}, Landroid/transition/Fade;-><init>(I)V

    return-void
.end method

.method private synthetic lambda$onAppear$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$2700(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->backgroundAlpha:F

    .line 1118
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->access$2700(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 1109
    iget-boolean p3, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$isCurrentCaptionEmpty:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$isCaptionEmpty:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p3}, Lorg/telegram/ui/SecretMediaViewer;->access$3500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 1110
    new-instance p2, Lorg/telegram/ui/SecretMediaViewer$11$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SecretMediaViewer$11$1;-><init>(Lorg/telegram/ui/SecretMediaViewer$11;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1116
    move-object p2, p1

    check-cast p2, Landroid/animation/ObjectAnimator;

    new-instance p3, Lorg/telegram/ui/SecretMediaViewer$11$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/SecretMediaViewer$11$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SecretMediaViewer$11;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p1
.end method
