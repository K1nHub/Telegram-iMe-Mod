.class Lorg/telegram/ui/PhotoViewer$65$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$65;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$65;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$65;)V
    .locals 0

    .line 13501
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$65$1;->this$1:Lorg/telegram/ui/PhotoViewer$65;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13504
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$65$1;->this$1:Lorg/telegram/ui/PhotoViewer$65;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$65;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->access$28002(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;F)F

    return-void
.end method
