.class Lorg/telegram/ui/Stories/recorder/PaintView$30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 4218
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$30;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4221
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$30;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$4902(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z

    .line 4222
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$30;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 4223
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$30;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$5000(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    return-void
.end method
