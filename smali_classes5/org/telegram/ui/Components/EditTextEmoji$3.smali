.class Lorg/telegram/ui/Components/EditTextEmoji$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditTextEmoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$502(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->access$600(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    return-void
.end method
