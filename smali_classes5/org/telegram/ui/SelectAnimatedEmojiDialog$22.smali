.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onDismiss(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$dismiss:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 4378
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;->val$dismiss:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4381
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;->val$dismiss:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4382
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4383
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->dismiss()V

    .line 4384
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3202(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    :cond_0
    return-void
.end method
