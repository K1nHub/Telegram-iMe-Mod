.class public Lorg/telegram/ui/PrivacyUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;,
        Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;
    }
.end annotation


# instance fields
.field private blockUserDetailRow:I

.field private blockUserRow:I

.field private blockedUsersActivity:Z

.field private currentType:I

.field private delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

.field private deleteAllRow:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private isAlwaysShare:Z

.field private isGroup:Z

.field private isWalletWhitelist:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

.field private rowCount:I

.field private uidArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private usersDetailRow:I

.field private usersEndRow:I

.field private usersHeaderRow:I

.field private usersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$0hzDLG1SDwpgAi3m76Ru89dr_YY(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->lambda$getThemeDescriptions$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$1HeuepoUfffvTrkWX27idVAnc2k(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->lambda$createView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$T0SmT63vNAd4abV-xg0D8ZgZ6wE(Lorg/telegram/ui/PrivacyUsersActivity;Ljava/lang/Long;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacyUsersActivity;->lambda$showUnblockAlert$4(Ljava/lang/Long;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tejcy_3hH7ZtZbQa4Iw05i_MRfg(Lorg/telegram/ui/PrivacyUsersActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyUsersActivity;->lambda$createView$3(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nZLD1c6Mys3UYP7HT_KtwsAeMIE(Lorg/telegram/ui/PrivacyUsersActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity;->lambda$createView$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xR9B5Z7K7dpJ-g0fo_1xfRqZk7w(Lorg/telegram/ui/PrivacyUsersActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacyUsersActivity;->lambda$createView$2(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockedUsersActivity:Z

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 95
    iput-boolean p5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isWalletWhitelist:Z

    .line 96
    iput-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    .line 97
    iput-boolean p4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    .line 98
    iput-boolean p3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z

    const/4 p2, 0x0

    .line 99
    iput-boolean p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockedUsersActivity:Z

    .line 100
    iput p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->deleteAllRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockUserRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacyUsersActivity;Ljava/lang/Long;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity;->showUnblockAlert(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersEndRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockUserDetailRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersDetailRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacyUsersActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isWalletWhitelist:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacyUsersActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersHeaderRow:I

    return p0
.end method

.method private synthetic lambda$createView$0()V
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->updateRows()V

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;->didUpdateUserList(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Ljava/util/ArrayList;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->updateRows()V

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    if-eqz p1, :cond_2

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;->didUpdateUserList(Ljava/util/ArrayList;Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)V
    .locals 6

    .line 179
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->deleteAllRow:I

    if-ne p2, p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionTitle:I

    .line 181
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionAlert:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    const/4 v5, 0x0

    .line 180
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 190
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    goto/16 :goto_3

    .line 191
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockUserRow:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_6

    .line 192
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    if-ne p1, v0, :cond_1

    .line 193
    new-instance p1, Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-direct {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 195
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 196
    iget-boolean p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    if-eqz p2, :cond_2

    const-string p2, "isAlwaysShare"

    goto :goto_0

    :cond_2
    const-string p2, "isNeverShare"

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    iget-boolean p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z

    const-string v1, "chatAddType"

    if-eqz p2, :cond_3

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 199
    :cond_3
    iget p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 200
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    :cond_4
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isWalletWhitelist:Z

    if-eqz p2, :cond_5

    const-string p2, "isOnlyUsers"

    .line 204
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    :cond_5
    new-instance p2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 208
    new-instance p1, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    .line 220
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_3

    .line 222
    :cond_6
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    if-lt p2, p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersEndRow:I

    if-ge p2, p1, :cond_9

    .line 223
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const-string v1, "user_id"

    if-ne p1, v0, :cond_7

    .line 224
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_3

    .line 228
    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 230
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 231
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_8
    neg-long v0, v2

    const-string p2, "chat_id"

    .line 233
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    :goto_2
    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;I)Z
    .locals 2

    .line 241
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    if-lt p2, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersEndRow:I

    if-ge p2, v0, :cond_1

    .line 242
    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity;->showUnblockAlert(Ljava/lang/Long;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity;->showUnblockAlert(Ljava/lang/Long;)V

    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$getThemeDescriptions$5()V
    .locals 5

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 577
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 578
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_0

    .line 579
    check-cast v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$showUnblockAlert$4(Ljava/lang/Long;Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p3, :cond_2

    .line 298
    iget p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockPeer(J)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->updateRows()V

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    if-eqz p1, :cond_1

    .line 304
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;->didUpdateUserList(Ljava/util/ArrayList;Z)V

    .line 306
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 307
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showUnblockAlert(Ljava/lang/Long;)V
    .locals 5

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    iget v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 292
    sget v3, Lorg/telegram/messenger/R$string;->Unblock:I

    const-string v4, "Unblock"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 294
    sget v3, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v4, "Delete"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 296
    :goto_0
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateRows()V
    .locals 5

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    const/4 v0, -0x1

    .line 317
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersHeaderRow:I

    .line 318
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockUserDetailRow:I

    .line 319
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->deleteAllRow:I

    .line 320
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockedUsersActivity:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    if-ltz v1, :cond_5

    .line 321
    :cond_0
    iget v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockUserRow:I

    .line 322
    iget v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 323
    iput v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->blockUserDetailRow:I

    :cond_1
    if-ne v1, v3, :cond_2

    .line 328
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v1

    goto :goto_0

    .line 330
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    .line 333
    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    if-ne v0, v3, :cond_3

    .line 334
    iget v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersHeaderRow:I

    .line 336
    :cond_3
    iget v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    add-int/2addr v2, v1

    .line 337
    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    .line 338
    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersEndRow:I

    add-int/lit8 v1, v2, 0x1

    .line 339
    iput v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersDetailRow:I

    if-eq v0, v3, :cond_5

    add-int/lit8 v0, v1, 0x1

    .line 341
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->deleteAllRow:I

    goto :goto_1

    .line 344
    :cond_4
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersHeaderRow:I

    .line 345
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersStartRow:I

    .line 346
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersEndRow:I

    .line 347
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->usersDetailRow:I

    .line 348
    iput v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->deleteAllRow:I

    .line 353
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    if-eqz v0, :cond_6

    .line 354
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method private updateVisibleRows(I)V
    .locals 4

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 377
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 378
    instance-of v3, v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v3, :cond_1

    .line 379
    check-cast v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 126
    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->BlockedUsers:I

    const-string v4, "BlockedUsers"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_2

    .line 129
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->FilterAlwaysShow:I

    const-string v4, "FilterAlwaysShow"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->FilterNeverShow:I

    const-string v4, "FilterNeverShow"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isGroup:Z

    if-eqz v0, :cond_4

    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AlwaysAllow:I

    const-string v4, "AlwaysAllow"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->NeverAllow:I

    const-string v4, "NeverAllow"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->isAlwaysShare:Z

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AlwaysShareWithTitle:I

    const-string v4, "AlwaysShareWithTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->NeverShareWithTitle:I

    const-string v4, "NeverShareWithTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PrivacyUsersActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacyUsersActivity$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 158
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 159
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v3, "windowBackgroundGray"

    .line 160
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 162
    new-instance v3, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 163
    iget v4, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    if-ne v4, v1, :cond_6

    .line 164
    sget v4, Lorg/telegram/messenger/R$string;->NoBlocked:I

    const-string v5, "NoBlocked"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_6
    sget v4, Lorg/telegram/messenger/R$string;->NoContacts:I

    const-string v5, "NoContacts"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 168
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 171
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 172
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v1, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 252
    iget p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    if-ne p1, v1, :cond_9

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/PrivacyUsersActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacyUsersActivity$2;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 270
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    if-gez p1, :cond_8

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_2

    .line 273
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 277
    :cond_9
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->updateRows()V

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 360
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 361
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 362
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_2

    .line 363
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyUsersActivity;->updateVisibleRows(I)V

    goto :goto_0

    .line 365
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    if-ne p1, p2, :cond_2

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 367
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyUsersActivity;->updateRows()V

    :cond_2
    :goto_0
    return-void
.end method

.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->blockPeer(J)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    new-instance v11, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lorg/telegram/ui/PrivacyUsersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PrivacyUsersActivity;)V

    .line 586
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundGray"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x3

    new-array v15, v3, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    const/16 v20, 0x0

    aput-object v3, v15, v20

    const-class v3, Lorg/telegram/ui/Cells/ManageChatTextCell;

    const/4 v10, 0x1

    aput-object v3, v15, v10

    const/4 v3, 0x2

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "windowBackgroundWhite"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "actionBarDefault"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v15, 0x0

    const-string v19, "actionBarDefault"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v28, "actionBarDefaultIcon"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v19, "actionBarDefaultTitle"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v28, "actionBarDefaultSelector"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v19, "listSelectorSDK21"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v28, "emptyListPlaceholder"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PrivacyUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v19, "progressCircle"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v20

    const-string v28, "windowBackgroundGrayShadow"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v20

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v37, "windowBackgroundWhiteBlackText"

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v10, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v2, v5, v20

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v13, "windowBackgroundWhiteGrayText"

    move-object v2, v12

    move-object v9, v11

    const/4 v14, 0x1

    move-object v10, v13

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v14, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v2, v5, v20

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "windowBackgroundWhiteBlueText"

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v20

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v23, 0x0

    const-string v28, "avatar_text"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v20

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v20

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    const/16 v37, 0x0

    const-string v38, "windowBackgroundWhiteBlackText"

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v20

    const-string v6, "imageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    const-string v29, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v7, v4, v20

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    const-string v38, "windowBackgroundWhiteBlueButton"

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacyUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v20

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const-string v29, "windowBackgroundWhiteBlueIcon"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 106
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 107
    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 115
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 116
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 117
    iget v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 386
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    return-void
.end method
