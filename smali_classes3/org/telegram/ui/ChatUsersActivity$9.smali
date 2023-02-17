.class Lorg/telegram/ui/ChatUsersActivity$9;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$5(Landroid/content/Context;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$WL4wuEPzBFL1t2yjSdHq8N7-QNs(Ljava/util/ArrayList;ILandroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$9;->lambda$didSelectUsers$0(Ljava/util/ArrayList;ILandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4y8CJiOivhhBT_BOCOFXIAEAds(Lorg/telegram/ui/ChatUsersActivity$9;[IILjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity$9;->lambda$didSelectUsers$1([IILjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMKK3Bf6DVv39kVGlvF2zhgGBBc([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity$9;->lambda$didSelectUsers$2([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$didSelectUsers$0(Ljava/util/ArrayList;ILandroid/content/Context;)V
    .locals 5

    .line 911
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-le p1, v2, :cond_0

    .line 913
    sget p1, Lorg/telegram/messenger/R$string;->InviteToGroupErrorTitleAUser:I

    const-string v0, "InviteToGroupErrorTitleAUser"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 915
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->InviteToGroupErrorTitleThisUser:I

    const-string v0, "InviteToGroupErrorTitleThisUser"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 917
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->InviteToGroupErrorMessageSingle:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "InviteToGroupErrorMessageSingle"

    invoke-static {p0, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_1

    .line 918
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "InviteToGroupErrorTitleSomeUsers"

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 919
    sget p1, Lorg/telegram/messenger/R$string;->InviteToGroupErrorTitleSomeUsers:I

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 920
    sget v0, Lorg/telegram/messenger/R$string;->InviteToGroupErrorMessageDouble:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "InviteToGroupErrorMessageDouble"

    invoke-static {p0, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_1

    .line 921
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, p1, :cond_3

    .line 922
    sget p0, Lorg/telegram/messenger/R$string;->InviteToGroupErrorTitleTheseUsers:I

    const-string p1, "InviteToGroupErrorTitleTheseUsers"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 923
    sget p0, Lorg/telegram/messenger/R$string;->InviteToGroupErrorMessageMultipleAll:I

    const-string v0, "InviteToGroupErrorMessageMultipleAll"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 925
    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->InviteToGroupErrorTitleSomeUsers:I

    invoke-static {v3, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 926
    sget p0, Lorg/telegram/messenger/R$string;->InviteToGroupErrorMessageMultipleSome:I

    const-string v0, "InviteToGroupErrorMessageMultipleSome"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 928
    :goto_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 930
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string p2, "OK"

    .line 931
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    .line 932
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$didSelectUsers$1([IILjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    const/4 v0, 0x0

    .line 937
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 938
    aget p1, p1, v0

    if-lt p1, p2, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 939
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 941
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object p1

    .line 942
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->access$10300(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->access$10300(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->access$9100(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    .line 943
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatUsersActivity;->access$10300(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatUsersActivity;->access$10300(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatUsersActivity;->access$10300(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p3

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatUsersActivity;->access$9900(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p3

    .line 944
    :goto_1
    iget-wide v1, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_4

    .line 945
    iget-object p4, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 946
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    .line 947
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 948
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 949
    iget-wide v2, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 950
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 951
    invoke-virtual {p2, v0, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 952
    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v0, v1, p4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 954
    :cond_3
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 955
    iget-wide v1, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    .line 957
    invoke-virtual {p2, v0, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 958
    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v0, v1, p4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 961
    :cond_4
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p3

    if-ne p2, p3, :cond_5

    .line 962
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->access$10100(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V

    .line 964
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void
.end method

.method private static synthetic lambda$didSelectUsers$2([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 3

    const/4 v0, 0x0

    .line 966
    aget v1, p0, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, p0, v0

    if-eqz p5, :cond_0

    .line 968
    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "USER_PRIVACY_RESTRICTED"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    .line 969
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_1
    aget p0, p0, v0

    if-lt p0, p3, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 972
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    xor-int/lit8 p0, p5, 0x1

    return p0
.end method


# virtual methods
.method public didSelectUsers(Ljava/util/ArrayList;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 905
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 907
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    aput v11, v9, v11

    .line 909
    iget-object v0, v7, Lorg/telegram/ui/ChatUsersActivity$9;->val$context:Landroid/content/Context;

    new-instance v12, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v12, v10, v8, v0}, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;ILandroid/content/Context;)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v8, :cond_0

    move-object/from16 v14, p1

    .line 935
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/tgnet/TLRPC$User;

    .line 936
    iget-object v0, v7, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v16

    iget-object v0, v7, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2300(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v17

    const/16 v20, 0x0

    iget-object v6, v7, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    const/16 v22, 0x0

    new-instance v23, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v8

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v21, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity$9;[IILjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$User;)V

    new-instance v24, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;

    move-object/from16 v0, v24

    move-object v1, v9

    move-object v2, v10

    move-object v3, v15

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;-><init>([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Runnable;)V

    move-object v0, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-object/from16 v18, v0

    move/from16 v19, p2

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    .line 976
    iget-object v1, v7, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public needAddBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 10

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->access$10200(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method
