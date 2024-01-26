.class Lorg/telegram/ui/VoIPFragment$24;
.super Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;
.source "VoIPFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;FF)V
    .locals 0

    .line 2763
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;-><init>(Landroid/content/Context;FF)V

    return-void
.end method


# virtual methods
.method protected afterOpened()V
    .locals 2

    .line 2790
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lockDrawing:Z

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected beforeClosed()V
    .locals 2

    .line 2796
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lockDrawing:Z

    .line 2797
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected getFloatingViewLocation()[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 2804
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v3}, Lorg/telegram/ui/VoIPFragment;->access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 2805
    aget v4, v1, v3

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 2806
    aget v1, v1, v3

    aput v1, v2, v3

    .line 2807
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    aput v1, v2, v0

    return-object v2
.end method

.method protected isHasVideoOnMainScreen()Z
    .locals 1

    .line 2813
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    return v0
.end method

.method public onDismiss(ZZ)V
    .locals 3

    .line 2766
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPFragment;->access$4602(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    .line 2767
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    .line 2768
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->access$3800(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    if-eqz p2, :cond_1

    .line 2770
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2772
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    const/4 p1, 0x2

    .line 2773
    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2774
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchToSpeaker()V

    :cond_0
    if-eqz v0, :cond_2

    .line 2777
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$4700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    move-result-object p2

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/ui/VoIPFragment;->access$4800(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 2781
    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2784
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$400(Lorg/telegram/ui/VoIPFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/VoIPFragment;->access$2902(Lorg/telegram/ui/VoIPFragment;I)I

    .line 2785
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$3000(Lorg/telegram/ui/VoIPFragment;)V

    return-void
.end method
