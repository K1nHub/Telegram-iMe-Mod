.class Lorg/telegram/ui/PhotoViewer$68;
.super Landroid/transition/Fade;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$isCaptionEmpty:Z

.field final synthetic val$isCurrentCaptionEmpty:Z


# direct methods
.method public static synthetic $r8$lambda$TRwbXSzdmB_fMZCkeJsExE-oVns(Lorg/telegram/ui/PhotoViewer$68;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$68;->lambda$onAppear$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;IZZ)V
    .locals 0

    .line 12975
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$68;->val$isCurrentCaptionEmpty:Z

    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer$68;->val$isCaptionEmpty:Z

    invoke-direct {p0, p2}, Landroid/transition/Fade;-><init>(I)V

    return-void
.end method

.method private synthetic lambda$onAppear$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 12987
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->access$27802(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;F)F

    .line 12988
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->invalidate()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 12978
    invoke-super {p0, p1, p2, p3, p4}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 12979
    iget-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$68;->val$isCurrentCaptionEmpty:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$68;->val$isCaptionEmpty:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 12980
    new-instance p2, Lorg/telegram/ui/PhotoViewer$68$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$68$1;-><init>(Lorg/telegram/ui/PhotoViewer$68;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12986
    move-object p2, p1

    check-cast p2, Landroid/animation/ObjectAnimator;

    new-instance p3, Lorg/telegram/ui/PhotoViewer$68$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PhotoViewer$68$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$68;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p1
.end method
