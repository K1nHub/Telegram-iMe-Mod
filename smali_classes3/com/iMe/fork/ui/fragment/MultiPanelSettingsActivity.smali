.class public final Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;,
        Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiPanelSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelSettingsActivity.kt\ncom/iMe/fork/ui/fragment/MultiPanelSettingsActivity\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,689:1\n361#2,7:690\n1179#3,2:697\n1253#3,2:699\n1549#3:701\n1620#3,3:702\n1256#3:705\n187#4,3:706\n1#5:709\n*S KotlinDebug\n*F\n+ 1 MultiPanelSettingsActivity.kt\ncom/iMe/fork/ui/fragment/MultiPanelSettingsActivity\n*L\n445#1:690,7\n454#1:697,2\n454#1:699,2\n455#1:701\n455#1:702,3\n454#1:705\n462#1:706,3\n*E\n"
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
.field private buttonsEndRow:I

.field private buttonsStartRow:I

.field private currentDialogType:Lcom/iMe/fork/enums/DialogType;

.field private dialogTypeTopicsBarRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private hideOnScrollRow:I

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

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 39
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 38
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 39
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 40
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

    .line 34
    sget-object p1, Lcom/iMe/fork/enums/DialogType;->CHAT:Lcom/iMe/fork/enums/DialogType;

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;)V

    return-void
.end method

.method public static final synthetic access$getButton(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Lcom/iMe/fork/models/MultiPanelButtonState;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButton(I)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtons(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->dialogTypeTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    return p0
.end method

.method public static final synthetic access$getNewIsHideOnScrollEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->sectionInfoRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$readSettings(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->readSettings()V

    return-void
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->dialogTypeTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->sectionInfoRow:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    return-void
.end method

.method private final checkSettingsChanged()Z
    .locals 6

    .line 461
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    .line 462
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

    .line 462
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

    .line 448
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

    .line 445
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

    .line 445
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

    .line 40
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

    .line 39
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

    .line 38
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

    .line 90
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 403
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 405
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 406
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 407
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 408
    new-instance v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_2

    const-string v0, "view"

    .line 411
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 413
    iget v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    if-ne p2, v0, :cond_1

    .line 414
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 415
    iget-boolean p2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    .line 416
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p2

    .line 417
    iget v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    .line 418
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    .line 419
    iget v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 420
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 423
    :cond_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 425
    :goto_0
    iget p0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 429
    :cond_1
    iget v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    if-ne p2, v0, :cond_4

    .line 430
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 431
    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    goto :goto_1

    .line 437
    :cond_2
    instance-of p1, p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    if-eqz p1, :cond_4

    .line 438
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getButton(I)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->setEnabled(Z)V

    .line 439
    :cond_3
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 399
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 400
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 466
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

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

    .line 469
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

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

    .line 451
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    .line 453
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

    .line 455
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

    .line 456
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

    .line 457
    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 455
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1254
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_1
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 453
    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 364
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 366
    sget v1, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 368
    sget v2, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 371
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    .line 369
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    sget v2, Lcom/iMe/common/IdFabric$Menu;->RESET:I

    .line 375
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    .line 378
    sget v4, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    const-string v5, "ThemeResetToDefaults"

    .line 376
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 383
    new-instance v1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public final getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-object v0
.end method

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

    const/16 v1, 0x1c

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 84
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 85
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 86
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 83
    new-instance v8, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V

    .line 91
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    .line 84
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 93
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 94
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 95
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 100
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 93
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 102
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 103
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 104
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 109
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 102
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 111
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 112
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 113
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 118
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    .line 111
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 120
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 121
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 122
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 127
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    .line 120
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 129
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    .line 131
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 136
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    .line 129
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 138
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 140
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 138
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 147
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    .line 149
    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 150
    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v2

    .line 154
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v3

    move-object/from16 v18, v4

    .line 147
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 156
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    .line 158
    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    .line 160
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v13

    .line 167
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v15, v3

    move-object/from16 v18, v4

    .line 156
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 169
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 171
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 172
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 176
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 169
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 178
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 180
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 181
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 185
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 178
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 187
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 189
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 190
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 191
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 195
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 187
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 197
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 199
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 200
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 201
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 205
    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v26

    .line 197
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 207
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 210
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    const-string v6, "checkBox"

    .line 211
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 215
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 207
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 217
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 220
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 221
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 225
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 217
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 227
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 230
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 231
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 235
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 227
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 237
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 240
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 241
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 245
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 237
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 247
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 250
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 251
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 255
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 247
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 257
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 260
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 261
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 265
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 257
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 267
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 270
    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v4, v2

    .line 271
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 275
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 267
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 277
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 280
    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v4, v2

    .line 281
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 285
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 277
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 287
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 290
    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v2

    .line 291
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 295
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 287
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 297
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 300
    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v2

    .line 301
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 305
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 297
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 307
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 310
    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v2

    const-string v5, "titleView"

    .line 311
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 307
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 317
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 320
    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v2

    const-string v5, "subtitleView"

    .line 321
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 325
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 317
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x18

    aput-object v3, v1, v4

    .line 327
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 330
    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v2

    const-string v5, "iconView"

    .line 331
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 335
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 327
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x19

    aput-object v3, v1, v4

    .line 337
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 340
    const-class v5, Lcom/iMe/fork/ui/view/MovingCheckCell;

    aput-object v5, v4, v2

    const-string v5, "moveIconView"

    .line 341
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 345
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 337
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    .line 347
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 350
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 351
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 354
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 347
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x1b

    aput-object v3, v1, v2

    .line 83
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 33
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

    .line 34
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-void
.end method
