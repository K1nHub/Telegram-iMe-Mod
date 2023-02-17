.class Lorg/telegram/ui/ManageLinksActivity$3;
.super Ljava/lang/Object;
.source "ManageLinksActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity;->openAddAdminScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method public static synthetic $r8$lambda$NOpiLEQu_YAF2Pt3bm5lOAn9htI(Lorg/telegram/ui/ManageLinksActivity$3;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$3;->lambda$didSetRights$0(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$3;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didSetRights$0(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$3;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$3;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 0

    .line 711
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$3;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 713
    new-instance p2, Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ManageLinksActivity$3;Lorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 p3, 0xc8

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
