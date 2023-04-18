.class public final Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$Companion;,
        Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;,
        Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiPanelSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelSettingsActivity.kt\ncom/iMe/fork/ui/fragment/MultiPanelSettingsActivity\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n361#2,7:402\n1726#3,3:409\n1855#3,2:412\n1179#3,2:414\n1253#3,2:416\n1549#3:418\n1620#3,3:419\n1256#3:422\n187#4,3:423\n1#5:426\n*S KotlinDebug\n*F\n+ 1 MultiPanelSettingsActivity.kt\ncom/iMe/fork/ui/fragment/MultiPanelSettingsActivity\n*L\n192#1:402,7\n196#1:409,3\n199#1:412,2\n206#1:414,2\n206#1:416,2\n207#1:418\n207#1:419,3\n206#1:422\n214#1:423,3\n*E\n"
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


# instance fields
.field private allButtonsRow:I

.field private buttonsEndRow:I

.field private buttonsStartRow:I

.field private currentDialogType:Lcom/iMe/fork/enums/DialogType;

.field private dialogTypeTopicsBarRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private hideOnScrollRow:I

.field private hideOnScrollSectionRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private newButtonStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/MultiPanelButtonState;",
            ">;>;"
        }
    .end annotation
.end field

.field private newIsEnabled:Z

.field private newIsHideOnScrollEnabled:Z

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private sectionInfoRow:I

.field private topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;


# direct methods
.method public static synthetic $r8$lambda$DD_1afA_XOUTVF-nrni0p6mdhwk(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getThemeDescriptions$lambda$2(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSjEb1ndsWhg4SqdCxCqBtdXgk8(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->initListView$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 37
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/enums/DialogType;)V
    .locals 2

    const-string v0, "currentDialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 36
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 37
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 38
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 55
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->readSettings()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 32
    sget-object p1, Lcom/iMe/fork/enums/DialogType;->CHAT:Lcom/iMe/fork/enums/DialogType;

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;)V

    return-void
.end method

.method public static final synthetic access$getAllButtonsRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->allButtonsRow:I

    return p0
.end method

.method public static final synthetic access$getButton(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Lcom/iMe/fork/models/MultiPanelButtonState;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButton(I)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtons(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->dialogTypeTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    return p0
.end method

.method public static final synthetic access$getHideOnScrollSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollSectionRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    return p0
.end method

.method public static final synthetic access$getNewIsHideOnScrollEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->sectionInfoRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isAllButtonsEnabled(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->isAllButtonsEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$readSettings(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->readSettings()V

    return-void
.end method

.method public static final synthetic access$setAllButtonsRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->allButtonsRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->dialogTypeTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    return-void
.end method

.method public static final synthetic access$setHideOnScrollSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->sectionInfoRow:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    return-void
.end method

.method private final checkSettingsChanged()Z
    .locals 6

    .line 213
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    if-nez v2, :cond_3

    const-string v2, "newButtonStates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v0, v4

    :goto_0
    if-eqz v0, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3
.end method

.method private final getButton(I)Lcom/iMe/fork/models/MultiPanelButtonState;
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/models/MultiPanelButtonState;

    return-object p1
.end method

.method private final getButtons()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/MultiPanelButtonState;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "newButtonStates"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 361
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 148
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 150
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 151
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 153
    new-instance v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_3

    const-string v0, "view"

    .line 156
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 158
    iget v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    if-ne p2, v0, :cond_1

    .line 159
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 160
    iget-boolean p2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    .line 161
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p2

    .line 162
    iget v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    .line 163
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    .line 164
    iget v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 165
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 168
    :cond_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 170
    :goto_0
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 173
    :cond_1
    iget v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    if-ne p2, v0, :cond_2

    .line 174
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 175
    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    goto :goto_1

    .line 177
    :cond_2
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->allButtonsRow:I

    if-ne p2, p1, :cond_5

    .line 178
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->isAllButtonsEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->setAllButtonsEnabled(Z)V

    .line 179
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 184
    :cond_3
    instance-of p1, p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    if-eqz p1, :cond_5

    .line 185
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButton(I)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->setEnabled(Z)V

    .line 186
    :cond_4
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 144
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundGray"

    .line 145
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isAllButtonsEnabled()Z
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object v0

    .line 1726
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 196
    invoke-virtual {v1}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 217
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final needDivider(I)Z
    .locals 1

    .line 219
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final readSettings()V
    .locals 10

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1179
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1180
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    check-cast v2, Lkotlin/Pair;

    .line 207
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 208
    new-instance v7, Lcom/iMe/fork/models/MultiPanelButtonState;

    invoke-virtual {v6}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v8

    invoke-virtual {v6}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v9

    invoke-virtual {v6}, Lcom/iMe/fork/models/MultiPanelButtonState;->getPosition()I

    move-result v6

    invoke-direct {v7, v8, v9, v6}, Lcom/iMe/fork/models/MultiPanelButtonState;-><init>(Lcom/iMe/fork/enums/MultiPanelButton;ZI)V

    .line 1621
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1254
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 205
    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    return-void
.end method

.method private final setAllButtonsEnabled(Z)V
    .locals 2

    .line 199
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 199
    invoke-virtual {v1, p1}, Lcom/iMe/fork/models/MultiPanelButtonState;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 120
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 122
    sget v2, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 124
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 125
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    sget v4, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    const-string v5, "ThemeResetToDefaults"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 129
    new-instance v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public final getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-object v0
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

    const/16 v1, 0x1c

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 84
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 83
    new-instance v8, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "windowBackgroundGray"

    move-object v2, v10

    .line 84
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 85
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

    .line 86
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 87
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 88
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 89
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v15, "listSelectorSDK21"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    .line 90
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v1, v7

    .line 91
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v11, v2

    const-string v15, "windowBackgroundGrayShadow"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v3, v1, v7

    .line 92
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v6, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v11, v2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v11, v4

    const-class v6, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v6, v11, v5

    const-string v15, "windowBackgroundWhite"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 93
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "windowBackgroundChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 94
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v13, "windowBackgroundUnchecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 95
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v14, "windowBackgroundCheckText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v1, v6

    .line 96
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v1, v6

    .line 97
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 98
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 99
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 100
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 101
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 102
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x12

    aput-object v3, v1, v7

    .line 103
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "windowBackgroundWhiteBlueHeader"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x13

    aput-object v3, v1, v7

    .line 104
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "windowBackgroundWhiteGrayText4"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x14

    aput-object v3, v1, v5

    .line 105
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v10, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-string v15, "switchTrack"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x15

    aput-object v3, v1, v5

    .line 106
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v10, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x16

    aput-object v3, v1, v5

    .line 107
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "titleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v14, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-object v3, v1, v5

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "subtitleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "windowBackgroundWhiteGrayText2"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x18

    aput-object v3, v1, v5

    .line 109
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "iconView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "chats_actionBackground"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x19

    aput-object v3, v1, v5

    .line 110
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "moveIconView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "stickers_menu"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    .line 111
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v9, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const-string v13, "divider"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v3, v1, v2

    .line 83
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->setupActionBar()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->checkSettingsChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 73
    iget-boolean v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/MultiPanelController;->setHideMultiPanelOnScrollEnabled(Z)V

    .line 74
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 75
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    if-nez v2, :cond_0

    const-string v2, "newButtonStates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->saveConfig()V

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->multiPanelSettingsChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 80
    :cond_1
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final setCurrentDialogType(Lcom/iMe/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-void
.end method
