.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V
    .locals 0

    .line 1725
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;->this$0:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1728
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1729
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;->this$0:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
