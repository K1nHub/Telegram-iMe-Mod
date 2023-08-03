.class Lorg/telegram/ui/ProfileActivity$13;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->lambda$createView$16(JLandroid/content/Context;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$cells:[Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method public static synthetic $r8$lambda$DkchribaUoKhSrK4JHbhda17TZE(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity$13;->lambda$onClick$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;[Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .line 3715
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$13;->val$cells:[Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 3718
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_reportReaction;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportReaction;-><init>()V

    .line 3719
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_reportReaction;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 3720
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_reportReaction;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3721
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$34800(Lorg/telegram/ui/ProfileActivity;)I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_reportReaction;->id:I

    .line 3722
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$34900(Lorg/telegram/ui/ProfileActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/ProfileActivity$13$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/ProfileActivity$13$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3726
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->val$cells:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3727
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 3728
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 3731
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$34802(Lorg/telegram/ui/ProfileActivity;I)I

    .line 3732
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProfileActivity;->updateListAnimated(Z)V

    .line 3733
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createReportSent(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
