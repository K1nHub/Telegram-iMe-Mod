.class Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiPacksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView$1;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1517
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1518
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView$1;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
