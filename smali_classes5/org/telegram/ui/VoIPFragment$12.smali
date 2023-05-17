.class Lorg/telegram/ui/VoIPFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->switchToPip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method public static synthetic $r8$lambda$X4Ln276zHeMOvtSH2Gb-MWdgSqc(Lorg/telegram/ui/VoIPFragment$12;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment$12;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 1121
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onTransitionEnd()V

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3800(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3900(Lorg/telegram/ui/VoIPFragment;)Lorg/webrtc/TextureViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$4000(Lorg/telegram/ui/VoIPFragment;)V

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finishImmediate()V

    const/4 v0, 0x0

    .line 1128
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1129
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$12;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPFragment;->access$102(Lorg/telegram/ui/VoIPFragment;Z)Z

    const/4 v0, 0x0

    .line 1130
    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$4102(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/VoIPFragment;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1118
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1119
    new-instance p1, Lorg/telegram/ui/VoIPFragment$12$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/VoIPFragment$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/VoIPFragment$12;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
