.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field final synthetic val$ignore:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 3008
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->val$ignore:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3011
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4602(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z

    .line 3012
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 3013
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->val$ignore:Z

    if-nez p1, :cond_0

    .line 3014
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;FF)V

    .line 3016
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    .line 3017
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    return-void
.end method
