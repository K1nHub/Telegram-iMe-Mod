.class Lorg/telegram/ui/DialogsActivity$28;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$95HMA3iUuzbzW7DjDlTCSSOlRqc(Lorg/telegram/ui/DialogsActivity$28;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$28;->lambda$clearTopPeers$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CP9X1K1q9V9Vj0n6-Kak3k2C374(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/DialogsActivity$28;->lambda$clearTopPeers$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQHAuhmHBv3wDI8ZWZyrgq5fw_A(Lorg/telegram/ui/DialogsActivity$28;JLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity$28;->lambda$needRemoveHint$3(JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dASTHp52e4H_7EKDTCWiQOwMhyM(Lorg/telegram/ui/DialogsActivity$28;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$28;->lambda$needClearList$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mFrEA5bRi_W8i3M7dspT7kisIMM(Lorg/telegram/ui/DialogsActivity$28;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$28;->lambda$clearTopPeers$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qvlG9KGuzTllX9kZLIHOSYMq5R8(Lorg/telegram/ui/DialogsActivity$28;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$28;->lambda$needClearList$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 5985
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$clearTopPeers$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$clearTopPeers$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 6012
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    const/4 p2, 0x1

    .line 6013
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    .line 6014
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda5;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$clearTopPeers$2(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 6007
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->clearTopPeers()V

    .line 6008
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6009
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    .line 6010
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    .line 6011
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$28;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$needClearList$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6124
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    return-void
.end method

.method private synthetic lambda$needClearList$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6130
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6131
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentSearch()V

    goto :goto_0

    .line 6133
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->clearRecentHashtags()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$needRemoveHint$3(JLandroid/content/DialogInterface;I)V
    .locals 0

    .line 6107
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MediaDataController;->removePeer(J)V

    return-void
.end method


# virtual methods
.method public checkDialogIsSelected(J)Z
    .locals 1

    .line 5998
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clearTopPeers()V
    .locals 3

    .line 6003
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6004
    sget v1, Lorg/telegram/messenger/R$string;->ChatHintsDeleteAlertTitle:I

    const-string v2, "ChatHintsDeleteAlertTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6005
    sget v1, Lorg/telegram/messenger/R$string;->SuggestContactsAlert:I

    const-string v2, "SuggestContactsAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6006
    sget v1, Lorg/telegram/messenger/R$string;->MuteDisable:I

    const-string v2, "MuteDisable"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$28;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6019
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6020
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 6021
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 6022
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "dialogTextRed"

    .line 6024
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public didPressedOnSubDialog(J)V
    .locals 6

    .line 6051
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6052
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$30000(Lorg/telegram/ui/DialogsActivity;J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6055
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6057
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$28;->isCustomForward()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6061
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/DialogsActivity;->addOrRemoveSelectedDialog(JLandroid/view/View;)Z

    move-result v0

    .line 6062
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$27800(Lorg/telegram/ui/DialogsActivity;JZ)V

    .line 6063
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)V

    .line 6064
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$30100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto/16 :goto_2

    .line 6066
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JIZZ)V

    goto/16 :goto_2

    .line 6069
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6070
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "user_id"

    .line 6071
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    neg-long v1, p1

    const-string v3, "chat_id"

    .line 6073
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6075
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$30200(Lorg/telegram/ui/DialogsActivity;)V

    .line 6076
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 6077
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 6078
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v4

    iput-wide p1, v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6080
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$30300(Lorg/telegram/ui/DialogsActivity;I)V

    .line 6082
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 6083
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6084
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6085
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 6088
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6089
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_8
    :goto_2
    return-void
.end method

.method public getSearchForumDialogId()J
    .locals 2

    .line 6160
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/TopicsFragment;

    if-eqz v0, :cond_0

    .line 6161
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCustomForward()Z
    .locals 1

    .line 5993
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isCustomForward()Z

    move-result v0

    return v0
.end method

.method public isSelected(J)Z
    .locals 1

    .line 6155
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public needClearList()V
    .locals 4

    .line 6119
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6120
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearchWas()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6121
    sget v1, Lorg/telegram/messenger/R$string;->ClearSearchAlertPartialTitle:I

    const-string v2, "ClearSearchAlertPartialTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6122
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentResultsCount()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ClearSearchAlertPartial"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6123
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v2, "Clear"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$28;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 6127
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->ClearSearchAlertTitle:I

    const-string v2, "ClearSearchAlertTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6128
    sget v1, Lorg/telegram/messenger/R$string;->ClearSearchAlert:I

    const-string v2, "ClearSearchAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6129
    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string v2, "ClearButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$28;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6137
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6138
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 6139
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 6140
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "dialogTextRed"

    .line 6142
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public needRemoveHint(J)V
    .locals 6

    .line 6097
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6100
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6104
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6105
    sget v2, Lorg/telegram/messenger/R$string;->ChatHintsDeleteAlertTitle:I

    const-string v3, "ChatHintsDeleteAlertTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6106
    sget v2, Lorg/telegram/messenger/R$string;->ChatHintsDeleteAlert:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "ChatHintsDeleteAlert"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6107
    sget v0, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string v2, "StickersRemove"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$28$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$28;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6108
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6109
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 6110
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 6111
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const-string p2, "dialogTextRed"

    .line 6113
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public runResultsEnterAnimation()V
    .locals 1

    .line 6148
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6149
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager;->runResultsEnterAnimation()V

    :cond_0
    return-void
.end method

.method public searchStateChanged(ZZ)V
    .locals 2

    .line 6034
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move p2, v1

    .line 6037
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$23600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 6038
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6041
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    .line 6039
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 6044
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 6045
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$28;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->cancelEnterAnimation()V

    :cond_4
    return-void
.end method
