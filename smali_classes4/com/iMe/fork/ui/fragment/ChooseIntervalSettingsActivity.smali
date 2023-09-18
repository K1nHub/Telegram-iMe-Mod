.class public final Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;,
        Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;,
        Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;,
        Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;


# instance fields
.field private enableInfoRow:I

.field private enableRow:I

.field private intervalChooserRow:I

.field private intervalHeaderRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private final type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;


# direct methods
.method public static synthetic $r8$lambda$uuMHiQTWlrL8yP664dYxT43cnow(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupListeners$lambda$3(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 33
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->Companion:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    .line 33
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 34
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 35
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getEnableInfoRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getIntervalChooserRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalChooserRow:I

    return p0
.end method

.method public static final synthetic access$getIntervalHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getIntervals(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)[Lcom/iMe/fork/enums/Interval;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getIntervals()[Lcom/iMe/fork/enums/Interval;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSelectedInterval(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Lcom/iMe/fork/enums/Interval;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getSelectedInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMainSwitchEnabled(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->isMainSwitchEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setEnableInfoRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setInterval(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;Lcom/iMe/fork/enums/Interval;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->setInterval(Lcom/iMe/fork/enums/Interval;)V

    return-void
.end method

.method public static final synthetic access$setIntervalChooserRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalChooserRow:I

    return-void
.end method

.method public static final synthetic access$setIntervalHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->intervalHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getIntervals()[Lcom/iMe/fork/enums/Interval;
    .locals 1

    .line 376
    invoke-static {}, Lcom/iMe/fork/enums/Interval;->values()[Lcom/iMe/fork/enums/Interval;

    move-result-object v0

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getSelectedInterval()Lcom/iMe/fork/enums/Interval;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/BackupController;->getSelectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 352
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 354
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 355
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 356
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->disableItemAnimationDelay()V

    return-object v0
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 348
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 349
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isMainSwitchEnabled()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static final newInstanceForAutoBackupSettings()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;
    .locals 1

    sget-object v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->Companion:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;->newInstanceForAutoBackupSettings()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    move-result-object v0

    return-object v0
.end method

.method private final setInterval(Lcom/iMe/fork/enums/Interval;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/BackupController;->setSelectedAutoBackupInterval(Lcom/iMe/fork/enums/Interval;)V

    .line 382
    invoke-virtual {v0}, Lcom/iMe/fork/controller/BackupController;->resetLastAutoBackupTime()V

    :cond_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 4

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 309
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 313
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v3, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-ne v2, v1, :cond_0

    .line 314
    sget v1, Lorg/telegram/messenger/R$string;->backup_settings_header:I

    .line 312
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    new-instance v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void

    .line 314
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 329
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$3(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableRow:I

    if-ne p2, v0, :cond_1

    .line 331
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 332
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->toggleEnabled()V

    .line 333
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;

    move-result-object p2

    .line 334
    iget v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    .line 335
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->updateRows()V

    .line 336
    iget v1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 337
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    iget p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 340
    :cond_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 342
    :goto_0
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->enableInfoRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private final toggleEnabled()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/BackupController;->setAutoBackupEnabled(Z)V

    .line 367
    invoke-virtual {v0}, Lcom/iMe/fork/controller/BackupController;->resetLastAutoBackupTime()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 28
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

    .line 62
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 63
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 64
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 69
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 62
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 72
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 73
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 78
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 71
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 81
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 82
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 87
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 80
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 89
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 90
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 91
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 96
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    .line 89
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 98
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 99
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 100
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 105
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    .line 98
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 107
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    .line 109
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 114
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    .line 107
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 116
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 118
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 116
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 125
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    .line 127
    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v13, [Ljava/lang/Class;

    .line 128
    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v12

    .line 132
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v3

    move-object/from16 v18, v4

    .line 125
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 134
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    .line 136
    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    .line 138
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-class v5, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v5, v4, v13

    .line 145
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v15, v3

    move-object/from16 v18, v4

    .line 134
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 147
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 149
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 150
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 154
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 147
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 156
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 158
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 159
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 163
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 156
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 165
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 167
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 168
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 169
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 173
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 165
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 175
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 177
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 178
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 179
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 183
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 175
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 185
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 188
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    const-string v6, "checkBox"

    .line 189
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 193
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 185
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 195
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 198
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 199
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 203
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 195
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 205
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 208
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 209
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 213
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 205
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 215
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 218
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 219
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 223
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 215
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 225
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 228
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 229
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 233
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 225
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 235
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 238
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 239
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 243
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 235
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 245
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 248
    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v4, v2

    .line 252
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 245
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 254
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 257
    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v4, v2

    .line 261
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 254
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 263
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 266
    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v4, v2

    .line 270
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 263
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 272
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 275
    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v2

    .line 276
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 280
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 272
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 282
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 285
    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v2

    .line 286
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 290
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 282
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 292
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 295
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 296
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 299
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 292
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x18

    aput-object v3, v1, v2

    .line 61
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public final getType()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 45
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupActionBar()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->setupListeners()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->type:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/BackupController;->saveConfig()V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
