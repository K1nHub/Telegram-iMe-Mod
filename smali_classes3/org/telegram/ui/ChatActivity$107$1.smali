.class Lorg/telegram/ui/ChatActivity$107$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$107;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$107;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$107;)V
    .locals 0

    .line 24106
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 24119
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$45600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$45600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24120
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$45602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 24109
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$45600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$45600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24110
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$45900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24111
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$45702(Lorg/telegram/ui/ChatActivity;F)F

    .line 24112
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    .line 24113
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$45602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
