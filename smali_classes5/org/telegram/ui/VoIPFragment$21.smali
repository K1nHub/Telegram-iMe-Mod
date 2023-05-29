.class Lorg/telegram/ui/VoIPFragment$21;
.super Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;
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
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;ZZ)V
    .locals 0

    .line 2228
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$21;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method public onDismiss(ZZ)V
    .locals 3

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$21;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPFragment;->access$4602(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    .line 2232
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    .line 2233
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$21;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->access$3700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    if-eqz p2, :cond_0

    .line 2235
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment$21;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2237
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    const/4 p1, 0x2

    .line 2238
    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2242
    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2245
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$21;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$400(Lorg/telegram/ui/VoIPFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/VoIPFragment;->access$2702(Lorg/telegram/ui/VoIPFragment;I)I

    .line 2246
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$21;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$2800(Lorg/telegram/ui/VoIPFragment;)V

    return-void
.end method
