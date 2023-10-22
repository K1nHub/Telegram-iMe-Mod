.class public Lorg/telegram/ui/FiltersSetupActivity;
.super Lcom/iMe/ui/base/mvp/JavaMvpFragment;
.source "FiltersSetupActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;,
        Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;,
        Lorg/telegram/ui/FiltersSetupActivity$ItemInner;,
        Lorg/telegram/ui/FiltersSetupActivity$FilterCell;,
        Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;,
        Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;,
        Lorg/telegram/ui/FiltersSetupActivity$TextCell;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field private filtersSectionEnd:I

.field private filtersSectionStart:I

.field private filtersStartPosition:I

.field private ignoreUpdates:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/FiltersSetupActivity$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private newTopicsBarAtBottom:Z

.field private newTopicsBarEnabled:Z

.field private oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/FiltersSetupActivity$ItemInner;",
            ">;"
        }
    .end annotation
.end field

.field private orderChanged:Z

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/iMe/fork/enums/FilterActivityType;

.field private undoView:Lorg/telegram/ui/Components/UndoView;


# direct methods
.method public static synthetic $r8$lambda$0yaHYs9fdIfnURrmQQzljbV5Qzw(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$showWidthModeDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHusca31ZlSS3sokeifP2sFslzE(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$showNotificationModeDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FPl0CcaIKKJ0VHQhY9tkW9V8nM8(Lorg/telegram/ui/FiltersSetupActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$createView$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GLodnRXgERrVoyCjdiGYo-irslw(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$onFragmentDestroy$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K7igdEqctjjLF6j0mHmLflxnEoI(Lorg/telegram/ui/FiltersSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$onDefaultTabMoved$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$O81nCabznaXZSa_MMwCsoYBWGRI(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$createView$4(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    sget-object v0, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lcom/iMe/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/enums/FilterActivityType;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/JavaMvpFragment;-><init>()V

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->oldItems:Ljava/util/ArrayList;

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 732
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionStart:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionEnd:I

    .line 106
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    .line 109
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkTopicsController;->getAllTopicsNotEmpty()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/FiltersSetupActivity;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getTotalTabsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getFilterTabsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getSortingTabsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersStartPosition:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/FiltersSetupActivity;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->orderChanged:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/FiltersSetupActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/FiltersSetupActivity;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionStart:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionEnd:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/FiltersSetupActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/FiltersSetupActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    return p0
.end method

.method private getFilterTabsCount()I
    .locals 2

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FiltersController;->getHiddenFiltersCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getSortingTabsCount()I
    .locals 2

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v0

    return v0
.end method

.method private getTotalTabsCount()I
    .locals 2

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getFilterTabsCount()I

    move-result v0

    .line 130
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getSortingTabsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private isTopicType()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$3(Ljava/lang/Boolean;)V
    .locals 2

    .line 958
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 959
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->info:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->topics_catalog_updated:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->topics_catalog_update_not_found:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 6

    if-ltz p3, :cond_1a

    .line 908
    iget-object p5, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p3, p5, :cond_1a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p5

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->isActivityRunning(Landroid/app/Activity;)Z

    move-result p5

    if-eqz p5, :cond_1a

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_1

    .line 911
    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    if-nez p3, :cond_1

    return-void

    .line 916
    :cond_1
    iget p5, p3, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_PANEL_AT_BOTTOM:I

    const/4 v1, 0x0

    if-ne p5, v0, :cond_2

    .line 917
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 918
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFilterTabsAtBottomEnabled(Z)V

    .line 919
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->filterTabsAtBottomUpdated:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 920
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_NOTIFICATION_MODE:I

    if-ne p5, v0, :cond_3

    .line 921
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->showNotificationModeDialog()V

    goto/16 :goto_1

    .line 922
    :cond_3
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_WIDTH_MODE:I

    if-ne p5, v0, :cond_4

    .line 923
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->showWidthModeDialog()V

    goto/16 :goto_1

    .line 924
    :cond_4
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_REMEMBER_LAST_TAB:I

    if-ne p5, v0, :cond_6

    .line 925
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 926
    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/TextCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 927
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 928
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setRememberLastFilterTabEnabled(Z)V

    goto/16 :goto_1

    .line 930
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->folder_tabs_remember_last_filter_tab_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->showHintDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 932
    :cond_6
    sget p4, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_ALL_CHATS_TAB:I

    if-ne p5, p4, :cond_7

    .line 933
    new-instance p1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 934
    :cond_7
    sget p4, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_HIDE_FOLDERS:I

    if-ne p5, p4, :cond_b

    .line 935
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 936
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/FiltersController;->setFoldersHidden(Z)V

    .line 937
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 938
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result p1

    const/4 p2, 0x5

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result p1

    if-lez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p1

    if-eq p1, p2, :cond_a

    .line 939
    :cond_9
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    .line 941
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 942
    :cond_b
    sget p4, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_FOLDERS_FIRST:I

    if-ne p5, p4, :cond_c

    .line 943
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 944
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/FiltersController;->setFoldersFirstEnabled(Z)V

    .line 945
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 946
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 947
    :cond_c
    sget p4, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_SORTING:I

    if-ne p5, p4, :cond_d

    .line 948
    new-instance p1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 949
    :cond_d
    sget p4, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL:I

    if-ne p5, p4, :cond_e

    .line 950
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 951
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    goto/16 :goto_1

    .line 952
    :cond_e
    sget p4, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL_AT_BOTTOM:I

    if-ne p5, p4, :cond_f

    .line 953
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 954
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    goto/16 :goto_1

    .line 955
    :cond_f
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_CATALOG_UPDATE:I

    if-ne p5, p2, :cond_10

    .line 956
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 957
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->updateCatalog(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto/16 :goto_1

    :cond_10
    const/4 p2, 0x2

    const/4 p4, 0x0

    if-ne p5, p2, :cond_15

    .line 964
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 965
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->access$1300(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object p2

    sget-object p3, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-direct {p1, p2, p4, p3}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 969
    :cond_11
    iget-object p2, p3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz p2, :cond_14

    .line 970
    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_0

    .line 973
    :cond_12
    iget-boolean p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    if-eqz p3, :cond_13

    .line 974
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    const/4 v3, 0x3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 976
    :cond_13
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_14
    :goto_0
    return-void

    :cond_15
    const/4 p2, 0x4

    if-ne p5, p2, :cond_1a

    .line 980
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 981
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    sget-object p2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-direct {p1, p4, p4, p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 985
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    .line 987
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    if-lt p3, p4, :cond_17

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 988
    :cond_17
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-lt p2, p3, :cond_19

    .line 990
    :cond_18
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    const/4 v3, 0x3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 992
    :cond_19
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FilterCreateActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1a
    :goto_1
    return-void
.end method

.method private synthetic lambda$onDefaultTabMoved$5()V
    .locals 3

    .line 1626
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showNotificationModeDialog$1(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 163
    invoke-static {}, Lcom/iMe/fork/enums/FilterTabNotificationMode;->values()[Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsNotificationMode(Lcom/iMe/fork/enums/FilterTabNotificationMode;)V

    .line 164
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showWidthModeDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 149
    invoke-static {}, Lcom/iMe/fork/enums/FilterTabWidthMode;->values()[Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsWidthMode(Lcom/iMe/fork/enums/FilterTabWidthMode;)V

    .line 150
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private showHintDialog(Ljava/lang/String;)V
    .locals 2

    .line 135
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 137
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showNotificationModeDialog()V
    .locals 6

    .line 156
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 157
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {}, Lcom/iMe/fork/enums/FilterTabNotificationMode;->values()[Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object v2

    array-length v2, v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 160
    invoke-static {}, Lcom/iMe/fork/enums/FilterTabNotificationMode;->values()[Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/iMe/fork/enums/FilterTabNotificationMode;->getTitleResId()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-static {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showWidthModeDialog()V
    .locals 6

    .line 142
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 143
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {}, Lcom/iMe/fork/enums/FilterTabWidthMode;->values()[Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v2

    array-length v2, v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 146
    invoke-static {}, Lcom/iMe/fork/enums/FilterTabWidthMode;->values()[Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getTitleResId()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-static {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateRows(Z)V
    .locals 7

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    .line 740
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v1

    .line 741
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asHint()Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v4, "Settings"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v3, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 748
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_ALL_CHATS_TAB:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_SORTING:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_NOTIFICATION_MODE:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_WIDTH_MODE:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_REMEMBER_LAST_TAB:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_PANEL_AT_BOTTOM:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_FOLDERS_FIRST:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_HIDE_FOLDERS:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 757
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL_AT_BOTTOM:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/R$string;->topics_catalog:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_CATALOG_UPDATE:I

    invoke-direct {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0xa

    if-ge v2, v5, :cond_2

    .line 766
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->FilterRecommended:I

    const-string v6, "FilterRecommended"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 767
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 768
    iget-object v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    invoke-static {v6}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asSuggested(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 770
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-eq v0, v5, :cond_5

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 773
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionStart:I

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    sget v5, Lorg/telegram/messenger/R$string;->Filters:I

    const-string v6, "Filters"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->topics_create_new:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asButton(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersStartPosition:I

    .line 781
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_c

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v5, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v5, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    .line 787
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v4

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$DialogFilter;

    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iMe/storage/domain/model/topics/TopicModel;

    goto :goto_6

    :cond_b
    move-object v6, v4

    :goto_6
    invoke-static {v5, v6}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 789
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionEnd:I

    .line 791
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 792
    iget v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionEnd:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionEnd:I

    goto :goto_8

    .line 797
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->topics_create_new:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asButton(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v0, -0x1

    .line 801
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionEnd:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersSectionStart:I

    .line 803
    :cond_f
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v2, :cond_10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-ge v0, v1, :cond_10

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$string;->CreateNewFilter:I

    const-string v2, "CreateNewFilter"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asButton(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_11

    .line 810
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_9

    .line 812
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_12
    :goto_9
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 854
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 858
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Filters:I

    const-string v3, "Filters"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 862
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FiltersSetupActivity$1;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 871
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 872
    check-cast v0, Landroid/widget/FrameLayout;

    .line 873
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 875
    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$2;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 894
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x15e

    .line 895
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 896
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    .line 897
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 898
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 899
    iget-object v4, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 900
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 901
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 902
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 903
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 904
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 905
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1021
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    .line 1022
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkTopicsController;->getAllTopicsNotEmpty()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    .line 1023
    invoke-direct {p0, p3}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    goto :goto_0

    .line 1025
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    if-ne p1, p2, :cond_2

    .line 1026
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->ignoreUpdates:Z

    if-eqz p1, :cond_1

    return-void

    .line 1029
    :cond_1
    invoke-direct {p0, p3}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    goto :goto_0

    .line 1030
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    if-ne p1, p2, :cond_3

    .line 1031
    invoke-direct {p0, p3}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1632
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v11, 0x4

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const-class v2, Lorg/telegram/ui/Cells/TextCell;

    const/4 v14, 0x2

    aput-object v2, v5, v14

    const-class v2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v15, 0x3

    aput-object v2, v5, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v23

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v12

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v32, v6

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v12

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v36

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    move/from16 v40, v8

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v9, v4, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v28

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v32, v9

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v10, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move/from16 v37, v6

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v10, v4, v12

    const-string v10, "valueTextView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v41

    sget v45, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v39, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    invoke-direct/range {v37 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v16, v4, v12

    const-string v16, "iconView"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/TextCell;

    aput-object v16, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move/from16 v37, v6

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v16, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v16, v4, v12

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v41

    sget v46, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move/from16 v45, v46

    invoke-direct/range {v37 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v16, v4, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v32, v8

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move/from16 v37, v9

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v4, v12

    const-class v7, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v7, v4, v13

    const-class v7, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v7, v4, v14

    const-class v7, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    aput-object v7, v4, v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    move/from16 v21, v24

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v31, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v4, v12

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v7, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move/from16 v37, v6

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v6, v4, v12

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v32, v46

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v4, v3, v12

    const-string v4, "moveImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v22, v27

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v6, v4, v12

    const-string v6, "optionsImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v30, v4, v7

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v7, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v32

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    const/16 v33, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v5, v4, v12

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const/16 v36, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move/from16 v37, v9

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v7, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v3, v7, v12

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 10

    .line 1001
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1004
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-nez v0, :cond_1

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/UndoView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x53

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object v0
.end method

.method protected onDefaultTabMoved()V
    .locals 9

    const/4 v0, 0x1

    .line 1623
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :catch_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->filter_reorder:I

    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedReorderFolder:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v5, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v2, "LimitReachedReorderFolder"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    sget v0, Lorg/telegram/messenger/R$string;->PremiumMore:I

    const-string v1, "PremiumMore"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1388

    new-instance v8, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1627
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0, v0}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    .line 712
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 714
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0

    .line 716
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 717
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 719
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V

    .line 720
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 721
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 722
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadSuggestedFilters()V

    .line 725
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 6

    .line 820
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->isTopicType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 822
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    .line 823
    iget-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->orderChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 824
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    invoke-virtual {v0, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->setTopicsBarEnabled(Z)V

    .line 825
    iget-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    invoke-virtual {v0, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->setTopicsBarAtBottomEnabled(Z)V

    .line 826
    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->saveConfig()V

    .line 827
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->topicsSettingsChanged:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 829
    :cond_1
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void

    .line 834
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 835
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 836
    iget-boolean v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->orderChanged:Z

    if-eqz v0, :cond_4

    .line 837
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 838
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFiltersOrder()V

    .line 839
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    .line 840
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v2

    .line 841
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_3

    .line 842
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 843
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 849
    :cond_4
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1012
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
