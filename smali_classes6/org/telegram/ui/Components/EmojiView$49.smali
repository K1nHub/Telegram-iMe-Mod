.class Lorg/telegram/ui/Components/EmojiView$49;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 5436
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$49;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$49;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5439
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$49;->val$show:Z

    if-nez p1, :cond_0

    .line 5440
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$49;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$15400(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
