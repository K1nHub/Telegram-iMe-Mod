.class Lorg/telegram/ui/Components/EmojiView$46;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 5700
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$46;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5703
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$46;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$15900(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 5706
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$46;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$15900(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$16002(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 5707
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$46;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$16100(Lorg/telegram/ui/Components/EmojiView;)V

    .line 5708
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$46;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$15902(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
