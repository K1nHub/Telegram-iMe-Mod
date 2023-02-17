.class public Lorg/telegram/ui/FiltersSetupActivity;
.super Lcom/smedialink/ui/base/mvp/JavaMvpFragment;
.source "FiltersSetupActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;,
        Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;,
        Lorg/telegram/ui/FiltersSetupActivity$FilterCell;,
        Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;,
        Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;,
        Lorg/telegram/ui/FiltersSetupActivity$TextCell;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field private createFilterRow:I

.field private createSectionRow:I

.field private filterFiltersFirstRow:I

.field private filterHelpRow:I

.field private filterHideFiltersRow:I

.field private filterSortingAllChatsTabRow:I

.field private filterSortingHeaderRow:I

.field private filterSortingSectionRow:I

.field private filterSortingTabsRow:I

.field private filterTabsSettingsAtBottomRow:I

.field private filterTabsSettingsHeaderRow:I

.field private filterTabsSettingsNotificationModeRow:I

.field private filterTabsSettingsRememberLastFilterTab:I

.field private filterTabsSettingsSectionRow:I

.field private filterTabsSettingsWidthTabsRow:I

.field private filtersEndRow:I

.field private filtersHeaderRow:I

.field private filtersStartRow:I

.field private ignoreUpdates:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private newTopicsBarAtBottom:Z

.field private newTopicsBarEnabled:Z

.field private orderChanged:Z

.field private recommendedEndRow:I

.field private recommendedHeaderRow:I

.field private recommendedSectionRow:I

.field private recommendedStartRow:I

.field private rowCount:I

.field private showAllChats:Z

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field

.field private topicsBarEnableRow:I

.field private topicsCatalogHeaderRow:I

.field private topicsCatalogSectionRow:I

.field private topicsCatalogUpdateAutoRow:I

.field private topicsCatalogUpdateManuallyRow:I

.field private topicsSettingsBarAtBottomRow:I

.field private topicsSettingsHeaderRow:I

.field private topicsSettingsSectionRow:I

.field private final type:Lorg/fork/enums/FilterActivityType;


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

.method public static synthetic $r8$lambda$rE10Tq5d0eKTF8u9eUNx26YiiMo(Lorg/telegram/ui/FiltersSetupActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->lambda$createView$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 119
    sget-object v0, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lorg/fork/enums/FilterActivityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/enums/FilterActivityType;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/JavaMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    .line 125
    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p1, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    .line 127
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->getAllTopicsNotEmpty()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersStartRow:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingAllChatsTabRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->createSectionRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateAutoRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateManuallyRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingTabsRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsHeaderRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogHeaderRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsHeaderRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingHeaderRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersEndRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsBarEnableRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsBarAtBottomRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterHideFiltersRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/FiltersSetupActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/FiltersSetupActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersHeaderRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedHeaderRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/FiltersSetupActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->showAllChats:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsAtBottomRow:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->createFilterRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedStartRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedEndRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterHelpRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsSectionRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogSectionRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsSectionRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingSectionRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedSectionRow:I

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/FiltersSetupActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->orderChanged:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsRememberLastFilterTab:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/FiltersSetupActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->ignoreUpdates:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/FiltersSetupActivity;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/FiltersSetupActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getTotalTabsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterFiltersFirstRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getSortingTabsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsNotificationModeRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/FiltersSetupActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsWidthTabsRow:I

    return p0
.end method

.method private getSortingTabsCount()I
    .locals 2

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v0

    return v0
.end method

.method private getTotalTabsCount()I
    .locals 2

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 140
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->getSortingTabsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$createView$3(Ljava/lang/Boolean;)V
    .locals 0

    .line 901
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 902
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

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 2

    .line 833
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p5

    if-eqz p5, :cond_1b

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_0

    .line 838
    :cond_0
    instance-of p5, p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz p5, :cond_2

    .line 839
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 840
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateAutoRow:I

    if-ne p3, p1, :cond_1b

    .line 841
    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkSwitchLocation(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 842
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Lorg/fork/controller/ForkTopicsController;->setAutoUpdateTopicsCatalogEnabled(Z)V

    .line 843
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->resetLastAutoUpdateCatalogTime()V

    .line 844
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 846
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->saveConfig()V

    goto/16 :goto_0

    .line 848
    :cond_1
    invoke-static {}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->newInstanceForAutoUpdateTopicsCatalogSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 851
    :cond_2
    instance-of p5, p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p5, :cond_5

    .line 852
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsNotificationModeRow:I

    if-ne p3, p1, :cond_3

    .line 853
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->showNotificationModeDialog()V

    goto/16 :goto_0

    .line 854
    :cond_3
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingAllChatsTabRow:I

    if-ne p3, p1, :cond_4

    .line 855
    new-instance p1, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-direct {p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 856
    :cond_4
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsWidthTabsRow:I

    if-ne p3, p1, :cond_1b

    .line 857
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity;->showWidthModeDialog()V

    goto/16 :goto_0

    .line 859
    :cond_5
    instance-of p5, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    if-eqz p5, :cond_f

    .line 860
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 861
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsBarEnableRow:I

    if-ne p3, p1, :cond_6

    .line 862
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 863
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    goto/16 :goto_0

    .line 864
    :cond_6
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsBarAtBottomRow:I

    if-ne p3, p1, :cond_7

    .line 865
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 866
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    goto/16 :goto_0

    .line 867
    :cond_7
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsRememberLastFilterTab:I

    if-ne p3, p1, :cond_9

    .line 868
    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/TextCheckCell;->checkSwitchLocation(F)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 869
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 870
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setRememberLastFilterTabEnabled(Z)V

    goto/16 :goto_0

    .line 872
    :cond_8
    sget p1, Lorg/telegram/messenger/R$string;->folder_tabs_remember_last_filter_tab_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity;->showHintDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :cond_9
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 876
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsAtBottomRow:I

    if-ne p3, p1, :cond_a

    .line 877
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFilterTabsAtBottomEnabled(Z)V

    .line 878
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->filterTabsAtBottomUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 879
    :cond_a
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterHideFiltersRow:I

    if-ne p3, p1, :cond_e

    .line 880
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/fork/controller/FiltersController;->setHideFoldersEnabled(Z)V

    .line 881
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 882
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result p1

    const/4 p2, 0x5

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result p1

    if-lez p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result p1

    if-eq p1, p2, :cond_d

    .line 883
    :cond_c
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    .line 885
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsAtBottomRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 886
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsNotificationModeRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsWidthTabsRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsRememberLastFilterTab:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingAllChatsTabRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 890
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 891
    :cond_e
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterFiltersFirstRow:I

    if-ne p3, p1, :cond_1b

    .line 892
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/fork/controller/FiltersController;->setFoldersFirstEnabled(Z)V

    .line 893
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 894
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 897
    :cond_f
    instance-of p2, p2, Lorg/telegram/ui/Cells/TextCell;

    const/4 p4, 0x3

    if-eqz p2, :cond_11

    .line 898
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateManuallyRow:I

    if-ne p3, p1, :cond_10

    .line 899
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 900
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-virtual {p1, v0, p2}, Lorg/fork/controller/ForkTopicsController;->updateCatalog(ZLorg/fork/utils/Callbacks$Callback1;)V

    goto/16 :goto_0

    .line 904
    :cond_10
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingTabsRow:I

    if-ne p3, p1, :cond_1b

    .line 905
    new-instance p1, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-direct {p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 908
    :cond_11
    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersStartRow:I

    const/4 p5, 0x0

    if-lt p3, p2, :cond_16

    iget v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersEndRow:I

    if-ge p3, v0, :cond_16

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_12

    .line 911
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    iget-object p4, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    sub-int/2addr p3, p2

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-direct {p1, p2, p5, v1}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_12
    sub-int/2addr p3, p2

    .line 916
    iget-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->showAllChats:Z

    if-nez p2, :cond_13

    add-int/lit8 p3, p3, 0x1

    .line 919
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    .line 922
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 923
    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    if-eqz p2, :cond_15

    .line 924
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {p2, p0, p1, p4, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 926
    :cond_15
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 928
    :cond_16
    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->createFilterRow:I

    if-ne p3, p2, :cond_1b

    .line 930
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object p3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, p3, :cond_17

    .line 931
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p1, p5, p5, p3}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 935
    :cond_17
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    if-lt p2, p3, :cond_18

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-eqz p2, :cond_19

    :cond_18
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-lt p2, p3, :cond_1a

    .line 936
    :cond_19
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {p2, p0, p1, p4, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 938
    :cond_1a
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FilterCreateActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1b
    :goto_0
    return-void
.end method

.method private synthetic lambda$onDefaultTabMoved$5()V
    .locals 3

    .line 1582
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

    .line 176
    invoke-static {}, Lorg/fork/enums/FilterTabNotificationMode;->values()[Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsNotificationMode(Lorg/fork/enums/FilterTabNotificationMode;)V

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 179
    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsNotificationModeRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showWidthModeDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 159
    invoke-static {}, Lorg/fork/enums/FilterTabWidthMode;->values()[Lorg/fork/enums/FilterTabWidthMode;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsWidthMode(Lorg/fork/enums/FilterTabWidthMode;)V

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 162
    iget p2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsWidthTabsRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private showHintDialog(Ljava/lang/String;)V
    .locals 2

    .line 145
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 147
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showNotificationModeDialog()V
    .locals 6

    .line 169
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lorg/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 170
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {}, Lorg/fork/enums/FilterTabNotificationMode;->values()[Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object v2

    array-length v2, v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 173
    invoke-static {}, Lorg/fork/enums/FilterTabNotificationMode;->values()[Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/fork/enums/FilterTabNotificationMode;->getTitleResId()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-static {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showWidthModeDialog()V
    .locals 6

    .line 152
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lorg/fork/enums/FilterTabWidthMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 153
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {}, Lorg/fork/enums/FilterTabWidthMode;->values()[Lorg/fork/enums/FilterTabWidthMode;

    move-result-object v2

    array-length v2, v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 156
    invoke-static {}, Lorg/fork/enums/FilterTabWidthMode;->values()[Lorg/fork/enums/FilterTabWidthMode;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/fork/enums/FilterTabWidthMode;->getTitleResId()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-static {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateRows(Z)V
    .locals 7

    const/4 v0, -0x1

    .line 659
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedHeaderRow:I

    .line 660
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedStartRow:I

    .line 661
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedEndRow:I

    .line 662
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedSectionRow:I

    .line 664
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 665
    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 666
    iput v3, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterHelpRow:I

    .line 667
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 668
    iput-boolean v4, p0, Lorg/telegram/ui/FiltersSetupActivity;->showAllChats:Z

    .line 670
    iput-boolean v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->showAllChats:Z

    add-int/2addr v3, v0

    .line 672
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterFiltersFirstRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterHideFiltersRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingSectionRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingTabsRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingAllChatsTabRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsSectionRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsRememberLastFilterTab:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsWidthTabsRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsNotificationModeRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsAtBottomRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogSectionRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateManuallyRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateAutoRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsSectionRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsBarAtBottomRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsBarEnableRow:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsHeaderRow:I

    .line 678
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v4, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    if-ne v2, v4, :cond_0

    .line 679
    iget v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsHeaderRow:I

    add-int/lit8 v5, v6, 0x1

    .line 680
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsAtBottomRow:I

    add-int/lit8 v6, v5, 0x1

    .line 681
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsNotificationModeRow:I

    add-int/lit8 v5, v6, 0x1

    .line 682
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsWidthTabsRow:I

    add-int/lit8 v6, v5, 0x1

    .line 683
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsRememberLastFilterTab:I

    add-int/lit8 v5, v6, 0x1

    .line 684
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterTabsSettingsSectionRow:I

    add-int/lit8 v6, v5, 0x1

    .line 685
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingHeaderRow:I

    add-int/lit8 v5, v6, 0x1

    .line 686
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingAllChatsTabRow:I

    add-int/lit8 v6, v5, 0x1

    .line 687
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingTabsRow:I

    add-int/lit8 v5, v6, 0x1

    .line 688
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterSortingSectionRow:I

    goto :goto_0

    .line 690
    :cond_0
    iget v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsHeaderRow:I

    add-int/lit8 v5, v6, 0x1

    .line 691
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsBarEnableRow:I

    add-int/lit8 v6, v5, 0x1

    .line 692
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsBarAtBottomRow:I

    add-int/lit8 v5, v6, 0x1

    .line 693
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsSettingsSectionRow:I

    add-int/lit8 v6, v5, 0x1

    .line 694
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogHeaderRow:I

    add-int/lit8 v5, v6, 0x1

    .line 695
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateAutoRow:I

    add-int/lit8 v6, v5, 0x1

    .line 696
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogUpdateManuallyRow:I

    add-int/lit8 v5, v6, 0x1

    .line 697
    iput v5, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->topicsCatalogSectionRow:I

    .line 699
    :goto_0
    sget-object v5, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v2, v5, :cond_1

    .line 700
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 703
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xa

    if-ge v3, v2, :cond_2

    .line 704
    iget v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedHeaderRow:I

    .line 705
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedStartRow:I

    .line 706
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v6, v1

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    .line 707
    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedEndRow:I

    add-int/lit8 v1, v6, 0x1

    .line 708
    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/FiltersSetupActivity;->recommendedSectionRow:I

    :cond_2
    if-eqz v3, :cond_4

    .line 712
    iget v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersHeaderRow:I

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v5, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 715
    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->createFilterRow:I

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    .line 717
    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterHideFiltersRow:I

    add-int/lit8 v2, v1, 0x1

    .line 718
    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filterFiltersFirstRow:I

    .line 721
    :goto_1
    iget v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersStartRow:I

    add-int/2addr v1, v3

    .line 722
    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    .line 723
    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersEndRow:I

    goto :goto_2

    .line 726
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v5, :cond_5

    .line 727
    iget v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->createFilterRow:I

    .line 730
    :cond_5
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersHeaderRow:I

    .line 731
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersStartRow:I

    .line 732
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->filtersEndRow:I

    .line 735
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v4, :cond_7

    .line 736
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-ge v3, v1, :cond_6

    .line 737
    iget v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->createFilterRow:I

    goto :goto_3

    .line 739
    :cond_6
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->createFilterRow:I

    .line 742
    :cond_7
    :goto_3
    iget v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->createSectionRow:I

    if-eqz p1, :cond_8

    .line 743
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    if-eqz p1, :cond_8

    .line 744
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 784
    invoke-super {p0, p1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v2, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v2, :cond_0

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Filters:I

    const-string v3, "Filters"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 792
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FiltersSetupActivity$1;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 801
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 802
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "windowBackgroundGray"

    .line 803
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 806
    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$2;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 823
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 824
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 825
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 827
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 828
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 829
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 943
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 957
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    .line 958
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->getAllTopicsNotEmpty()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->topics:Ljava/util/List;

    .line 959
    invoke-direct {p0, p3}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    goto :goto_0

    .line 961
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    if-ne p1, p2, :cond_3

    .line 962
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->ignoreUpdates:Z

    if-eqz p1, :cond_1

    return-void

    .line 965
    :cond_1
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    const/4 p2, 0x0

    .line 966
    invoke-direct {p0, p2}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    .line 967
    iget p3, p0, Lorg/telegram/ui/FiltersSetupActivity;->rowCount:I

    if-eq p1, p3, :cond_2

    .line 968
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 970
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    invoke-virtual {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 972
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    if-ne p1, p2, :cond_4

    .line 973
    invoke-direct {p0, p3}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1590
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v12

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "windowBackgroundWhiteBlackText"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v12

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "switchTrack"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    const-string v24, "switchTrackChecked"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "windowBackgroundWhiteBlackText"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v12

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v20

    const-string v24, "windowBackgroundWhiteValueText"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v8, v4, v12

    const-string v8, "iconView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "chats_actionBackground"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    const-string v24, "windowBackgroundWhiteBlackText"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "windowBackgroundWhiteBlackText"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v20

    const-string v24, "windowBackgroundWhiteGrayText2"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "switchTrack"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    const-string v24, "switchTrackChecked"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v12

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v6, v4, v13

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v6, v4, v14

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    aput-object v6, v4, v15

    const/16 v29, 0x0

    const-string v32, "windowBackgroundWhite"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundGray"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "actionBarDefault"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v21, "actionBarDefault"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v29, "actionBarDefaultIcon"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v21, "actionBarDefaultTitle"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v29, "actionBarDefaultSelector"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v21, "listSelectorSDK21"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v12

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const-string v29, "divider"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v21, 0x0

    const-string v22, "windowBackgroundWhiteBlueHeader"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v29, 0x0

    const-string v31, "windowBackgroundWhiteBlackText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v4, v3, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteGrayText2"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v6, v4, v12

    const-string v6, "moveImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "stickers_menu"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v4, v3, v12

    const-string v4, "optionsImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "stickers_menu"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v25, v6, v7

    new-array v6, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    aput-object v7, v6, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "stickers_menuSelector"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteBlueText2"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v5, v4, v12

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "switchTrackChecked"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "checkboxCheck"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/FiltersSetupActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v7, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v3, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "windowBackgroundGrayShadow"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected onDefaultTabMoved()V
    .locals 9

    const/4 v0, 0x1

    .line 1579
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
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

    new-instance v8, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FiltersSetupActivity;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1583
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    const/4 v0, 0x1

    .line 642
    invoke-direct {p0, v0}, Lorg/telegram/ui/FiltersSetupActivity;->updateRows(Z)V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v2, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_0

    .line 645
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 646
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0

    .line 649
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V

    .line 650
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 651
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 652
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadSuggestedFilters()V

    .line 655
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 6

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 752
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 753
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    .line 754
    iget-boolean v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->orderChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 755
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarEnabled:Z

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkTopicsController;->setTopicsBarEnabled(Z)V

    .line 756
    iget-boolean v1, p0, Lorg/telegram/ui/FiltersSetupActivity;->newTopicsBarAtBottom:Z

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkTopicsController;->setTopicsBarAtBottomEnabled(Z)V

    .line 757
    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->saveConfig()V

    .line 758
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsSettingsChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 760
    :cond_1
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void

    .line 764
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 765
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 766
    iget-boolean v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->orderChanged:Z

    if-eqz v0, :cond_4

    .line 767
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 768
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFiltersOrder()V

    .line 769
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    .line 770
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 771
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 772
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 773
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 779
    :cond_4
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 948
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity;->adapter:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
