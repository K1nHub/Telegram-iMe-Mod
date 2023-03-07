.class Lorg/telegram/ui/Components/AlertsCreator$37;
.super Lorg/telegram/ui/Components/ReportAlert;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->lambda$createReportAlert$122([IILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$messageId:I

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/BaseFragment;IJ)V
    .locals 0

    .line 4532
    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p4, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$messageId:I

    iput-wide p5, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$dialog_id:J

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReportAlert;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 2

    .line 4536
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 4537
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 4538
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->checkAdjustResize()V

    :cond_0
    return-void
.end method

.method protected onSend(ILjava/lang/String;)V
    .locals 4

    .line 4544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4545
    iget v1, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$messageId:I

    if-eqz v1, :cond_0

    .line 4546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4548
    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$dialog_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 4549
    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->sendReport(Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 4550
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$37;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_1

    .line 4551
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    const/16 p2, 0x4a

    const/4 v2, 0x0

    .line 4553
    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method
