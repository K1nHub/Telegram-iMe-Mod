.class public final Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;,
        Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;,
        Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;,
        Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseIntervalSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseIntervalSettingsActivity.kt\norg/fork/ui/fragment/ChooseIntervalSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n1#2:287\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;


# instance fields
.field private enableInfoRow:I

.field private enableRow:I

.field private intervalChooserRow:I

.field private intervalHeaderRow:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rowCount:I

.field private final type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;


# direct methods
.method public static synthetic $r8$lambda$Odguc9DeVWpNPnxzXBHYFDN2H0I(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupListeners$lambda$4(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->Companion:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    .line 32
    new-instance p1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEnableInfoRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getIntervalChooserRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalChooserRow:I

    return p0
.end method

.method public static final synthetic access$getIntervalHeaderRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getIntervals(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)[Lorg/fork/enums/Interval;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getIntervals()[Lorg/fork/enums/Interval;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSelectedInterval(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Lorg/fork/enums/Interval;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getSelectedInterval()Lorg/fork/enums/Interval;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMainSwitchEnabled(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->isMainSwitchEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setEnableInfoRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setInterval(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;Lorg/fork/enums/Interval;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->setInterval(Lorg/fork/enums/Interval;)V

    return-void
.end method

.method public static final synthetic access$setIntervalChooserRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalChooserRow:I

    return-void
.end method

.method public static final synthetic access$setIntervalHeaderRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getIntervals()[Lorg/fork/enums/Interval;
    .locals 1

    .line 161
    invoke-static {}, Lorg/fork/enums/Interval;->values()[Lorg/fork/enums/Interval;

    move-result-object v0

    return-object v0
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getSelectedInterval()Lorg/fork/enums/Interval;
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->getSelectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/BackupController;->getSelectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 131
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 134
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->disableItemAnimationDelay()V

    return-object v0
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 127
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundGray"

    .line 128
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isMainSwitchEnabled()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final newInstanceForAutoBackupSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
    .locals 1

    sget-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->Companion:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    invoke-virtual {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;->newInstanceForAutoBackupSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    move-result-object v0

    return-object v0
.end method

.method public static final newInstanceForAutoUpdateTopicsCatalogSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
    .locals 1

    sget-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->Companion:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    invoke-virtual {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;->newInstanceForAutoUpdateTopicsCatalogSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    move-result-object v0

    return-object v0
.end method

.method private final setInterval(Lorg/fork/enums/Interval;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1}, Lorg/fork/controller/ForkTopicsController;->setSelectedAutoUpdateTopicsCatalogInterval(Lorg/fork/enums/Interval;)V

    .line 171
    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->resetLastAutoUpdateCatalogTime()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p1}, Lorg/fork/controller/BackupController;->setSelectedAutoBackupInterval(Lorg/fork/enums/Interval;)V

    .line 167
    invoke-virtual {v0}, Lorg/fork/controller/BackupController;->resetLastAutoBackupTime()V

    :goto_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 91
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 93
    iget-object v2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v3, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    .line 95
    sget v1, Lorg/telegram/messenger/R$string;->topics_catalog:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 94
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->backup_settings_header:I

    .line 93
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$4(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableRow:I

    if-ne p2, v0, :cond_1

    .line 110
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 111
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->toggleEnabled()V

    .line 112
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    move-result-object p2

    .line 113
    iget v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    .line 114
    invoke-virtual {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->updateRows()V

    .line 115
    iget v1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    iget p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 119
    :cond_0
    iget p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 121
    :goto_0
    iget p0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private final toggleEnabled()V
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkTopicsController;->setAutoUpdateTopicsCatalogEnabled(Z)V

    .line 151
    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->resetLastAutoUpdateCatalogTime()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lorg/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/fork/controller/BackupController;->setAutoBackupEnabled(Z)V

    .line 147
    invoke-virtual {v0}, Lorg/fork/controller/BackupController;->resetLastAutoBackupTime()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->createView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 44
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupActionBar()V

    .line 45
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupListeners()V

    .line 46
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x19

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 58
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 59
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 60
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 61
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 62
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 63
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v15, "listSelectorSDK21"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    .line 64
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v1, v7

    .line 65
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v11, v5, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v11, v2

    const-class v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v7, v11, v4

    const-string/jumbo v15, "windowBackgroundGrayShadow"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v3, v1, v7

    .line 66
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v6, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v11, v2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v11, v4

    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v11, v5

    const-string/jumbo v15, "windowBackgroundWhite"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v13, "windowBackgroundChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string/jumbo v13, "windowBackgroundUnchecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundCheckText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v1, v6

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v1, v6

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const-string v15, "switchTrackBlue"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-string v16, "switchTrackBlueChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v1, v7

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueThumb"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xf

    aput-object v3, v1, v7

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueThumbChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x10

    aput-object v3, v1, v7

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelector"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x11

    aput-object v3, v1, v7

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x12

    aput-object v3, v1, v6

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v10, v2

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v14, "switchTrack"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x13

    aput-object v3, v1, v6

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v10, v2

    const-string v14, "switchTrackChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x14

    aput-object v3, v1, v6

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v10, v2

    const-string/jumbo v14, "windowBackgroundWhiteGrayText"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x15

    aput-object v3, v1, v6

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteBlueHeader"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x16

    aput-object v3, v1, v6

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "windowBackgroundWhiteGrayText4"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-object v3, v1, v5

    .line 82
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v9, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v13, "divider"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v3, v1, v2

    .line 57
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public final getType()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    return-object v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ForkTopicsController;->saveConfig()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/BackupController;->saveConfig()V

    .line 54
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
