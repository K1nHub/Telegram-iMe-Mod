.class Lorg/telegram/ui/GroupCallActivity$3;
.super Ljava/lang/Object;
.source "GroupCallActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 1747
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$3;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOpenAnimationEnd()V
    .locals 2

    .line 1755
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getGroupCallBottomSheetLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1763
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$3;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$2200(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1764
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$3;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$2300(Lorg/telegram/ui/GroupCallActivity;)V

    :cond_1
    return-void
.end method
