.class Lorg/telegram/ui/DialogsActivity$37;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/iMe/ui/recent_chats/RecentChatsBar$Delegate;


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
.method public static synthetic $r8$lambda$0Ig-pMVzgd7pbcKzDKxtmVJgpS8(Lorg/telegram/ui/DialogsActivity$37;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0h7Y5ko2Xx7NbpjkxoVJCJeTODI(Lorg/telegram/ui/DialogsActivity$37;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6uML5VlzSrCXe08v1Uc2ng1cgBk(Lorg/telegram/ui/DialogsActivity$37;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$37;->lambda$showDeleteAlert$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$G06xZBW0y_CrbMyEUuMTcAen4JI(Lorg/telegram/ui/DialogsActivity$37;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gv5SQ99wxu2amLF15dBtLhYt9OM(Lorg/telegram/ui/DialogsActivity$37;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$37;->lambda$showDeleteAlert$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q9Z6ljfr02s32lDefDoAXKRkG0o(Lorg/telegram/ui/DialogsActivity$37;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$RnZ00J56lLyFisyVoLu0ryq3doA(Lorg/telegram/ui/DialogsActivity$37;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$2(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SZ06vP34AH6qHf2f-i2NFE_h4yk(Lorg/telegram/ui/DialogsActivity$37;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$0(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4AL45jsHojLhvSIVjoB9xZS7po(Lorg/telegram/ui/DialogsActivity$37;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$dc6FRwQ-lOIFBNNv_e6f2YeFAGQ(Lorg/telegram/ui/DialogsActivity$37;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$37;->lambda$showDeleteAlert$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e22f9sd_BwHpryz4x9STZUqCT0Q(Lorg/telegram/ui/DialogsActivity$37;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zEfq4Sp59cJnXnW5LVwrQUa0H5E(Lorg/telegram/ui/DialogsActivity$37;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$37;->lambda$onRecentChatLongClick$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 6906
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$0(JLandroid/view/View;)V
    .locals 0

    .line 6966
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 6969
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->updatePin(J)V

    .line 6970
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/recent_chats/RecentChatsBar;->scrollToFirstCell()V

    .line 6971
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$1()V
    .locals 1

    .line 6983
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30000(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$2(JLandroid/view/View;)V
    .locals 0

    .line 6981
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->removeRecentChat(J)V

    .line 6982
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 6983
    new-instance p1, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    const-wide/16 p2, 0x96

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$3(Landroid/view/View;)V
    .locals 0

    .line 6993
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$37;->showDeleteAlert()V

    .line 6994
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$4()V
    .locals 2

    .line 7007
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-direct {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$5(Landroid/view/View;)V
    .locals 2

    .line 7006
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 7007
    new-instance p1, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$6()V
    .locals 2

    .line 7023
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->setRecentChatsEnabled(Z)V

    .line 7024
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 7025
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30000(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$7()V
    .locals 3

    .line 7019
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30000(Lorg/telegram/ui/DialogsActivity;)V

    .line 7020
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7022
    sget v1, Lorg/telegram/messenger/R$string;->undo_recent_chats_disabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->showInfo(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRecentChatLongClick$8(Landroid/view/View;)V
    .locals 2

    .line 7015
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/RecentChatsController;->setRecentChatsEnabled(Z)V

    .line 7016
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 7017
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 7018
    new-instance p1, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$showDeleteAlert$10()V
    .locals 1

    .line 7070
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30000(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$showDeleteAlert$11(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 7069
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->clearRecentChatsHistory()V

    .line 7070
    new-instance p1, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$showDeleteAlert$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7067
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private showDeleteAlert()V
    .locals 5

    .line 7064
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7065
    sget v1, Lorg/telegram/messenger/R$string;->ClearHistory:I

    const-string v2, "ClearHistory"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7066
    sget v3, Lorg/telegram/messenger/R$string;->recent_chats_clear_history:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7067
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7068
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7072
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 7073
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 7074
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7076
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLongClickRelease()V
    .locals 1

    .line 7051
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method public onMove(F)V
    .locals 1

    .line 7056
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    return-void
.end method

.method public onRecentChatClick(Lcom/iMe/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V
    .locals 7

    .line 6912
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide p1

    .line 6913
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6915
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_5

    .line 6916
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    .line 6917
    :goto_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "chat_id"

    .line 6918
    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "forward_to"

    .line 6919
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6920
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-nez v1, :cond_2

    .line 6921
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p2, v5}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 6924
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p2, v5}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 6925
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6926
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object v0, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_4

    .line 6927
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    goto :goto_1

    .line 6929
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v4

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->prepareSelectorForAnimation()V

    .line 6930
    new-instance p1, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p1, v5}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    .line 6931
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 6932
    iget-object v0, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 6934
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    goto :goto_2

    .line 6938
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onRecentChatLongClick(Lcom/iMe/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V
    .locals 9

    .line 6944
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide v0

    .line 6945
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p2

    sget-object v2, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {p2, v2}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    .line 6946
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6947
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget p2, Lorg/telegram/messenger/R$string;->section_is_locked:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array v2, p2, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 6951
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 6952
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 6954
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6958
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, p2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6959
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6960
    sget p1, Lorg/telegram/messenger/R$string;->UnpinMessage:I

    const-string v5, "UnpinMessage"

    invoke-static {v5, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-virtual {v3, p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 6962
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->PinMessage:I

    const-string v5, "PinMessage"

    invoke-static {v5, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    invoke-virtual {v3, p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_0
    const/16 p1, 0xa0

    .line 6964
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6965
    new-instance v5, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v0, v1}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DialogsActivity$37;J)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6973
    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 6975
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6976
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 6977
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 6978
    sget v5, Lorg/telegram/messenger/R$string;->DeleteFromRecent:I

    const-string v8, "DeleteFromRecent"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v3, v5, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 6979
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6980
    new-instance v5, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v0, v1}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DialogsActivity$37;J)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6985
    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 6987
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6988
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 6989
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 6990
    sget v5, Lorg/telegram/messenger/R$string;->ClearRecentHistory:I

    const-string v6, "ClearRecentHistory"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_clear:I

    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 6991
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6992
    new-instance v5, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6996
    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 6998
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6999
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7000
    aget-object v5, v2, v4

    const/4 v6, -0x1

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 7002
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 7003
    sget v5, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v6, "Settings"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 7004
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 7005
    new-instance v5, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7009
    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 7011
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 7012
    sget v5, Lorg/telegram/messenger/R$string;->Disable:I

    const-string v6, "Disable"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_disable:I

    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 7013
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 7014
    new-instance p1, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$37$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$37;)V

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7030
    aget-object p1, v2, v4

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 7032
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    .line 7033
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7034
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$29800(Lorg/telegram/ui/DialogsActivity;)V

    .line 7035
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$29900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setHighlightActionButtons(Z)V

    .line 7036
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le v0, p2, :cond_2

    .line 7037
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    .line 7039
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$37;->this$0:Lorg/telegram/ui/DialogsActivity;

    aget-object v0, v2, v4

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    .line 7040
    iput-boolean v4, p1, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    .line 7042
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 p2, 0x40

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method
