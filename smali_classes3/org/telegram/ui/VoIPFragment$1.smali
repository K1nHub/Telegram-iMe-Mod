.class Lorg/telegram/ui/VoIPFragment$1;
.super Lorg/telegram/ui/Components/voip/VoIPWindowView;
.source "VoIPFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 260
    iput-object p3, p0, Lorg/telegram/ui/VoIPFragment$1;->val$fragment:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$1;->val$fragment:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$000(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$1;->val$fragment:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$100(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$1;->val$fragment:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->access$200(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$1;->val$fragment:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$300(Lorg/telegram/ui/VoIPFragment;)V

    return v2

    :cond_1
    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    .line 272
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$1;->val$fragment:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$400(Lorg/telegram/ui/VoIPFragment;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 273
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    return v2

    .line 280
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
