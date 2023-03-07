.class Lorg/telegram/ui/DialogsActivity$12;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$8cvKVUN2iG5GiYuCJ01-0Tsju4E(Lorg/telegram/ui/DialogsActivity$12;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$12;->lambda$didSelectTab$3(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnQCfaeHINrCwSBGkKmwsWP1Yt0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/DialogsActivity$12;->lambda$showDeleteAlert$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLB067Y3j_3Bv5H0Q7zktCfQtlU(Lorg/telegram/ui/DialogsActivity$12;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$12;->lambda$showDeleteAlert$2(Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0vBIA5pm0SwbBItq2hcBetwnf0(Lorg/telegram/ui/DialogsActivity$12;IZLorg/telegram/ui/Components/FilterTabsView$TabView;ZILorg/telegram/messenger/MessagesController$DialogFilter;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/DialogsActivity$12;->lambda$didSelectTab$4(IZLorg/telegram/ui/Components/FilterTabsView$TabView;ZILorg/telegram/messenger/MessagesController$DialogFilter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lVRcvIXr07kQ9mHFLPszEfHxOpw()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/DialogsActivity$12;->lambda$showDeleteAlert$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 4645
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didSelectTab$3(Landroid/view/KeyEvent;)V
    .locals 2

    .line 4897
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4898
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didSelectTab$4(IZLorg/telegram/ui/Components/FilterTabsView$TabView;ZILorg/telegram/messenger/MessagesController$DialogFilter;Landroid/view/View;)V
    .locals 1

    const/4 p7, -0x1

    if-ne p1, p7, :cond_1

    if-eqz p2, :cond_0

    .line 5017
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$27200(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_0

    .line 5019
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$27300(Lorg/telegram/ui/DialogsActivity;I)V

    goto/16 :goto_0

    :cond_1
    const/4 p7, -0x2

    const/4 v0, 0x1

    if-ne p1, p7, :cond_3

    .line 5022
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    if-lt p1, p2, :cond_2

    .line 5023
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    const/4 p5, 0x3

    iget-object p6, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p6}, Lorg/telegram/ui/DialogsActivity;->access$27400(Lorg/telegram/ui/DialogsActivity;)I

    move-result p6

    invoke-direct {p2, p3, p4, p5, p6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5025
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_3
    const/4 p7, -0x3

    if-ne p1, p7, :cond_4

    .line 5028
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    :cond_4
    const/4 p7, -0x4

    if-ne p1, p7, :cond_6

    if-eqz p2, :cond_5

    .line 5031
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/fork/controller/FiltersController;->setAllChatsTabEnabled(Z)V

    .line 5032
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 5033
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5034
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/AlertsCreator;->showArchiveAccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_0

    :cond_5
    if-eqz p4, :cond_b

    .line 5036
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result p3

    invoke-static {p2, p3}, Lorg/fork/enums/SortingFilter;->getFilterByIdWithExtra(ZI)Lorg/fork/enums/SortingFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fork/controller/FiltersController;->disableSortingFilter(Lorg/fork/enums/SortingFilter;)V

    .line 5037
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 5038
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/DialogsActivity;->access$27500(Lorg/telegram/ui/DialogsActivity;ZZ)V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    if-eqz p4, :cond_7

    .line 5041
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p3

    invoke-direct {p2, p3}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    .line 5044
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16700(Lorg/telegram/ui/DialogsActivity;)V

    .line 5045
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->setIsEditing(Z)V

    .line 5046
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_0

    :cond_8
    const/4 p2, 0x2

    if-ne p1, v0, :cond_a

    if-ne p5, p2, :cond_9

    .line 5049
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 5051
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p2, p6}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_a
    if-ne p1, p2, :cond_b

    .line 5054
    invoke-direct {p0, p6}, Lorg/telegram/ui/DialogsActivity$12;->showDeleteAlert(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 5056
    :cond_b
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5057
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_c
    return-void
.end method

.method private static synthetic lambda$showDeleteAlert$0()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showDeleteAlert$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4707
    sget-object p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda2;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showDeleteAlert$2(Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 4705
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 4706
    iget p3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 4707
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    sget-object v0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda3;

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4710
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->removeFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 4711
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->deleteDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method private showDeleteAlert(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 3

    .line 4700
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4701
    sget v1, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v2, "FilterDelete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4702
    sget v1, Lorg/telegram/messenger/R$string;->FilterDeleteAlert:I

    const-string v2, "FilterDeleteAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4703
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4704
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$12;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4713
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 4714
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 4715
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v0, "dialogTextRed2"

    .line 4717
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .line 4777
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/topics/TopicsBar;->isEditing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$25900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 4781
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public didSelectTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;Z)Z
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 4849
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isCustomForward()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1f

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v0

    sget v1, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_f

    .line 4853
    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v10

    .line 4856
    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4857
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 4858
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26202(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 4859
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26302(Lorg/telegram/ui/DialogsActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return v10

    .line 4863
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4865
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 4869
    :cond_3
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;I)Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v1

    :goto_0
    move-object v11, v1

    .line 4872
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    .line 4873
    new-instance v1, Lorg/telegram/ui/DialogsActivity$12$1;

    invoke-direct {v1, v8, v0}, Lorg/telegram/ui/DialogsActivity$12$1;-><init>(Lorg/telegram/ui/DialogsActivity$12;Landroid/graphics/Rect;)V

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4896
    new-instance v0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda4;

    invoke-direct {v0, v8}, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$12;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 4901
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 4902
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4903
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4904
    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "actionBarDefaultSubmenuBackground"

    .line 4905
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 4907
    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4909
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 4910
    new-instance v7, Lorg/telegram/ui/DialogsActivity$12$2;

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lorg/telegram/messenger/R$style;->scrollbarShapeStyle:I

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity$12$2;-><init>(Lorg/telegram/ui/DialogsActivity$12;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/widget/LinearLayout;)V

    goto :goto_1

    .line 4918
    :cond_4
    new-instance v7, Landroid/widget/ScrollView;

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    :goto_1
    move-object v15, v7

    .line 4920
    invoke-virtual {v15, v10}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    const/4 v7, -0x2

    .line 4921
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v15, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xc8

    .line 4923
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    const/4 v6, 0x1

    .line 4924
    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4925
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26302(Lorg/telegram/ui/DialogsActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v5, 0x7

    new-array v4, v5, [I

    .line 4927
    fill-array-data v4, :array_0

    .line 4936
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-array v1, v5, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26302(Lorg/telegram/ui/DialogsActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 4937
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/16 v16, 0x1

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    .line 4938
    :goto_2
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v17

    .line 4939
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v16, :cond_6

    if-nez v17, :cond_6

    const/16 v18, 0x1

    goto :goto_3

    :cond_6
    const/16 v18, 0x0

    :goto_3
    const/4 v3, 0x0

    :goto_4
    const/4 v0, 0x2

    const/4 v1, 0x6

    if-ge v3, v5, :cond_19

    .line 4942
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v3, :cond_7

    const/4 v10, 0x1

    :cond_7
    if-ne v3, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-direct {v2, v5, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 4945
    aget v5, v4, v3

    const/4 v1, -0x1

    if-ne v5, v1, :cond_9

    .line 4951
    sget v0, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_read_all:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_9
    if-ne v5, v7, :cond_c

    .line 4953
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-lt v0, v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v0, 0x1

    .line 4956
    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_create_folder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v10, Lorg/telegram/messenger/R$drawable;->fork_create_folder:I

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto/16 :goto_b

    :cond_c
    const/4 v1, -0x3

    if-ne v5, v1, :cond_d

    .line 4961
    sget v0, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_sorting_settings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    move/from16 v0, v18

    goto/16 :goto_b

    :cond_d
    const/4 v1, -0x4

    if-ne v5, v1, :cond_11

    if-eqz v16, :cond_e

    .line 4963
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsCount()I

    move-result v1

    if-eq v1, v0, :cond_f

    :cond_e
    if-eqz v18, :cond_10

    :cond_f
    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    .line 4966
    :goto_8
    sget v1, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_disable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto/16 :goto_b

    :cond_11
    if-nez v5, :cond_16

    if-eqz v16, :cond_12

    .line 4970
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_9
    const/4 v0, 0x1

    goto :goto_a

    :cond_12
    if-eqz v17, :cond_13

    .line 4973
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v0

    if-gt v0, v6, :cond_15

    goto :goto_9

    .line 4976
    :cond_13
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_9

    .line 4979
    :cond_14
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v6, :cond_15

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    .line 4983
    :goto_a
    sget v1, Lorg/telegram/messenger/R$string;->FilterReorder:I

    const-string v10, "FilterReorder"

    invoke-static {v10, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v10, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_b

    :cond_16
    if-ne v5, v6, :cond_17

    xor-int/lit8 v0, v18, 0x1

    .line 4993
    sget v1, Lorg/telegram/messenger/R$string;->FilterEdit:I

    const-string v10, "FilterEdit"

    invoke-static {v10, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_b

    :cond_17
    xor-int/lit8 v0, v18, 0x1

    .line 5001
    sget v1, Lorg/telegram/messenger/R$string;->FilterDeleteItem:I

    const-string v10, "FilterDeleteItem"

    invoke-static {v10, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_b
    if-eqz v0, :cond_18

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v13

    const/4 v13, -0x2

    const/16 v19, 0x7

    goto :goto_c

    .line 5009
    :cond_18
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26300(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    aput-object v2, v0, v3

    .line 5010
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5013
    new-instance v10, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;

    const/16 v20, 0x7

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move v2, v5

    move/from16 v22, v3

    move/from16 v3, v16

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    const/16 v19, 0x7

    move/from16 v5, v17

    move-object/from16 v24, v13

    const/4 v13, 0x1

    move/from16 v6, v20

    const/4 v13, -0x2

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$12;IZLorg/telegram/ui/Components/FilterTabsView$TabView;ZILorg/telegram/messenger/MessagesController$DialogFilter;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_c
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v4, v23

    move-object/from16 v13, v24

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/4 v7, -0x2

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_19
    move-object/from16 v24, v13

    const/4 v13, -0x2

    const/16 v2, 0x33

    .line 5061
    invoke-static {v13, v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5062
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v4, Lorg/telegram/ui/DialogsActivity$12$3;

    invoke-direct {v4, v8, v12, v13, v13}, Lorg/telegram/ui/DialogsActivity$12$3;-><init>(Lorg/telegram/ui/DialogsActivity$12;Landroid/view/View;II)V

    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$26202(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 5099
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "actionBarDefaultArchived"

    goto :goto_d

    :cond_1a
    const-string v5, "actionBarDefault"

    :goto_d
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$9402(Lorg/telegram/ui/DialogsActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5100
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    const/16 v4, 0xdc

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 5101
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5102
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5103
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5104
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/16 v3, 0x3e8

    .line 5105
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v12, v4, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 5106
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5107
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 5108
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 5109
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5110
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v3

    aget v3, v3, v4

    move-object/from16 v4, v24

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 5111
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 5112
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_e

    .line 5113
    :cond_1b
    iget-object v4, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1c

    .line 5114
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26900(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    .line 5116
    :cond_1c
    :goto_e
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v1

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v1, v6

    .line 5118
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    if-eqz v6, :cond_1d

    .line 5119
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 5123
    :cond_1d
    iget-object v4, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$27000(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5124
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v9}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;)Landroid/view/View;

    .line 5125
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    move/from16 v2, p2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$9602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5126
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5127
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 5128
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5130
    :cond_1e
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$26502(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 5131
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$9502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5133
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5134
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 5135
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5136
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    return v0

    :cond_1f
    :goto_f
    const/4 v0, 0x0

    return v0

    :array_0
    .array-data 4
        -0x1
        0x0
        -0x2
        -0x3
        0x1
        0x2
        -0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x32
    .end array-data
.end method

.method public getTabCounter(I)I
    .locals 3

    .line 4812
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isCustomForward()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    sget v0, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 4815
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4816
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result p1

    return p1

    .line 4819
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 4820
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getMainUnreadCount()I

    move-result p1

    return p1

    .line 4823
    :cond_2
    invoke-static {v1, p1}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    invoke-static {v2, p1}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 4839
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    if-ltz p1, :cond_5

    .line 4840
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 4843
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    return p1

    :cond_5
    :goto_0
    return v1

    .line 4826
    :cond_6
    :goto_1
    invoke-static {v2, p1}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4827
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    .line 4828
    invoke-static {v2, p1}, Lorg/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result p1

    goto :goto_2

    .line 4830
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    .line 4831
    invoke-static {v1, p1}, Lorg/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result p1

    :goto_2
    if-ltz p1, :cond_9

    .line 4833
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_8

    goto :goto_3

    .line 4836
    :cond_8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    return p1

    :cond_9
    :goto_3
    return v1
.end method

.method public isTabMenuVisible()Z
    .locals 1

    .line 5143
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDeletePressed(I)V
    .locals 1

    .line 5148
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$12;->showDeleteAlert(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public onPageReorder(II)V
    .locals 2

    const/4 v0, 0x0

    .line 4729
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4730
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 4731
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1, p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    goto :goto_1

    .line 4732
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 4733
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPageScrolled(F)V
    .locals 6

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 4786
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4789
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4790
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    neg-float v4, p1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4791
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float p1, p1, v5

    sub-float/2addr v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 4793
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4794
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float p1, p1, v4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    if-nez v1, :cond_2

    .line 4797
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    .line 4798
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v3

    .line 4799
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aput-object p1, v1, v0

    .line 4800
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4801
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4802
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DialogsActivity;->access$14500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4803
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$14900(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 4804
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->resume()V

    .line 4805
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->pause()V

    :cond_2
    return-void
.end method

.method public onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V
    .locals 5

    .line 4740
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v0, v2, :cond_0

    return-void

    .line 4743
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    if-eqz v0, :cond_1

    .line 4744
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FilterTabsView;->shakeLock(I)V

    .line 4745
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->val$context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$25800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 4749
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 4751
    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v1, v2}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 4752
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v1, v0}, Lorg/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return-void

    .line 4755
    :cond_2
    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v3, v2}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4756
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v3, v0}, Lorg/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return-void

    .line 4760
    :cond_3
    iget-boolean v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v2, :cond_5

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    :cond_4
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    sget v2, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_ALBUMS:I

    if-eq v0, v2, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 4763
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FilterTabsView;->getFirstTabId()I

    move-result v4

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$14602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4764
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14700(Lorg/telegram/ui/DialogsActivity;)V

    .line 4766
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v3

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 4767
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4768
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4769
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4770
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4771
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$3802(Lorg/telegram/ui/DialogsActivity;Z)Z

    return-void
.end method

.method public onSamePageSelected()V
    .locals 2

    .line 4723
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4724
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$25700(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method public onSwipeProgressChanged(F)V
    .locals 6

    .line 4679
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4682
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Ljava/util/List;

    move-result-object v1

    .line 4683
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Ljava/util/List;

    move-result-object v2

    .line 4684
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-static {v1, v5}, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;->iconResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;Z)I

    move-result v1

    .line 4685
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-static {v2, v5}, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;->iconResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;Z)I

    move-result v2

    :goto_1
    if-eq v1, v2, :cond_4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, p1

    sub-float/2addr v0, v3

    .line 4687
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 4688
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v4

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 4689
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4690
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4691
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onTabSelected(I)V
    .locals 4

    .line 4653
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 4656
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/multifab/MiniFabsContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4657
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/multifab/MiniFabsContainer;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4659
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Ljava/util/List;

    move-result-object v0

    .line 4660
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/multifab/MiniFabsContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 4661
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 4662
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/multifab/MiniFabsContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smedialink/ui/multifab/MiniFabsContainer;->setFabs(Ljava/util/List;)V

    goto :goto_0

    .line 4664
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-static {v0, v3}, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;->iconResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;Z)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 4666
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4667
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainNoFolderDialogList()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4668
    invoke-static {v1, p1}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4669
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/ForkCommonController;->setLastFilterTab(I)V

    goto :goto_1

    :cond_3
    if-ltz p1, :cond_4

    .line 4670
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 4671
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v0, p1}, Lorg/fork/controller/ForkCommonController;->setLastFilterTab(I)V

    .line 4673
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkCommonController;->saveConfig()V

    :cond_5
    :goto_2
    return-void
.end method
