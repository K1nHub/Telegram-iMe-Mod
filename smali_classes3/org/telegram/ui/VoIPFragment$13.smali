.class Lorg/telegram/ui/VoIPFragment$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$13(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1213
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-object p1, p1, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 1214
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1215
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/VoIPFragment;->access$102(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 1216
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    .line 1217
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$400(Lorg/telegram/ui/VoIPFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/VoIPFragment;->access$2802(Lorg/telegram/ui/VoIPFragment;I)I

    .line 1218
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$13;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$2900(Lorg/telegram/ui/VoIPFragment;)V

    return-void
.end method
