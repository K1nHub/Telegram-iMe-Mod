.class Lorg/telegram/ui/ChatActivity$112;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateTopPanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 25486
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 25499
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25500
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$46902(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 25489
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25490
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25491
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$46902(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 25493
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    .line 25494
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$112;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    return-void
.end method
