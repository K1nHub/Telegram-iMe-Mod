.class Lorg/telegram/ui/LaunchActivity$14;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showSelectStatusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 7

    .line 1726
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$14;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 6

    if-nez p2, :cond_0

    .line 1738
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 1740
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;-><init>()V

    .line 1741
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    .line 1742
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    goto :goto_0

    .line 1744
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 1745
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 1747
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget p3, p3, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 1748
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget p1, p1, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_a

    move p4, p3

    .line 1750
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_a

    .line 1751
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1752
    instance-of v1, v0, Lorg/telegram/ui/Cells/DrawerUserCell;

    if-eqz v1, :cond_2

    .line 1753
    check-cast v0, Lorg/telegram/ui/Cells/DrawerUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DrawerUserCell;->getAccountNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DrawerUserCell;->setAccount(I)V

    goto/16 :goto_6

    .line 1754
    :cond_2
    instance-of v1, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 1755
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget v1, v1, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1756
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->animateStateChange(J)V

    .line 1758
    :cond_3
    check-cast v0, Lorg/telegram/ui/Cells/DrawerProfileCell;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isAccountsShown()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_6

    .line 1759
    :cond_4
    instance-of v1, v0, Lorg/telegram/ui/Cells/DrawerActionCell;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getId(I)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_9

    .line 1760
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    .line 1762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-le v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, p3

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 1763
    :goto_3
    check-cast v0, Lorg/telegram/ui/Cells/DrawerActionCell;

    if-eqz v1, :cond_7

    .line 1765
    sget v2, Lorg/telegram/messenger/R$string;->ChangeEmojiStatus:I

    const-string v3, "ChangeEmojiStatus"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1766
    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->SetEmojiStatus:I

    const-string v3, "SetEmojiStatus"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-eqz v1, :cond_8

    .line 1768
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_status_edit:I

    goto :goto_5

    .line 1769
    :cond_8
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_status_set:I

    .line 1763
    :goto_5
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/DrawerActionCell;->updateTextAndIcon(Ljava/lang/String;I)V

    :cond_9
    :goto_6
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_1

    .line 1774
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$14;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p3

    if-eqz p1, :cond_b

    .line 1775
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/LaunchActivity;->access$702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    .line 1776
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$14;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_b
    return-void
.end method

.method public onSettings()V
    .locals 1

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v0, :cond_0

    .line 1730
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer()V

    :cond_0
    return-void
.end method
