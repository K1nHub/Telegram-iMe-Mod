.class Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView$1;->this$1:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 330
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView$1;->this$1:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
