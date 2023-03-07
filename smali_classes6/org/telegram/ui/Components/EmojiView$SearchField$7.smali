.class Lorg/telegram/ui/Components/EmojiView$SearchField$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$SearchField;->showShadow(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$7;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1352
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$7;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$3702(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
