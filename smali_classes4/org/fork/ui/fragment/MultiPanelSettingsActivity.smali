.class public final Lorg/fork/ui/fragment/MultiPanelSettingsActivity;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/MultiPanelSettingsActivity$Companion;,
        Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;,
        Lorg/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiPanelSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelSettingsActivity.kt\norg/fork/ui/fragment/MultiPanelSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,404:1\n1#2:405\n361#3,7:406\n1726#4,3:413\n1855#4,2:416\n1179#4,2:418\n1253#4,2:420\n1549#4:422\n1620#4,3:423\n1256#4:426\n187#5,3:427\n*S KotlinDebug\n*F\n+ 1 MultiPanelSettingsActivity.kt\norg/fork/ui/fragment/MultiPanelSettingsActivity\n*L\n195#1:406,7\n199#1:413,3\n202#1:416,2\n209#1:418,2\n209#1:420,2\n210#1:422\n210#1:423,3\n209#1:426\n217#1:427,3\n*E\n"
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

.field private currentDialogType:Lorg/fork/enums/DialogType;

.field private dialogTypeTopicsBarRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private hideOnScrollRow:I

.field private hideOnScrollSectionRow:I

.field private final listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private newButtonStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fork/enums/DialogType;",
            "Ljava/util/List<",
            "Lorg/fork/models/MultiPanelButtonState;",
            ">;>;"
        }
    .end annotation
.end field

.field private newIsEnabled:Z

.field private newIsHideOnScrollEnabled:Z

.field private final rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private sectionInfoRow:I

.field private topicsBar:Lorg/fork/ui/view/DialogTypeTopicsBar;


# direct methods
.method public static synthetic $r8$lambda$7W-02ZKjOzdZ2JkR3v1UvFd7fbM(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getThemeDescriptions$lambda$2(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yOoVCfTGNYsPMJjSOjZ0-R5HL4Y(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->initListView$lambda$12$lambda$11(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 39
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lorg/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/enums/DialogType;)V
    .locals 2

    const-string v0, "currentDialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

    .line 39
    new-instance p1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 40
    new-instance p1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 41
    new-instance p1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 55
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->readSettings()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 32
    sget-object p1, Lorg/fork/enums/DialogType;->CHAT:Lorg/fork/enums/DialogType;

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lorg/fork/enums/DialogType;)V

    return-void
.end method

.method public static final synthetic access$getAllButtonsRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->allButtonsRow:I

    return p0
.end method

.method public static final synthetic access$getButton(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)Lorg/fork/models/MultiPanelButtonState;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getButton(I)Lorg/fork/models/MultiPanelButtonState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtons(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->dialogTypeTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getHideOnScrollRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    return p0
.end method

.method public static final synthetic access$getHideOnScrollSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollSectionRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewIsEnabled$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    return p0
.end method

.method public static final synthetic access$getNewIsHideOnScrollEnabled$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSectionInfoRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->sectionInfoRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isAllButtonsEnabled(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->isAllButtonsEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isClickableViewType(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$readSettings(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->readSettings()V

    return-void
.end method

.method public static final synthetic access$setAllButtonsRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->allButtonsRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->dialogTypeTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setHideOnScrollRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    return-void
.end method

.method public static final synthetic access$setHideOnScrollSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSectionInfoRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->sectionInfoRow:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;Lorg/fork/ui/view/DialogTypeTopicsBar;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->topicsBar:Lorg/fork/ui/view/DialogTypeTopicsBar;

    return-void
.end method

.method private final checkSettingsChanged()Z
    .locals 6

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

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

    .line 217
    iget-object v2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

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

.method private final getButton(I)Lorg/fork/models/MultiPanelButtonState;
    .locals 2

    .line 197
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->buttonsStartRow:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fork/models/MultiPanelButtonState;

    return-object p1
.end method

.method private final getButtons()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/models/MultiPanelButtonState;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "newButtonStates"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

    .line 361
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
    .locals 3

    .line 41
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 40
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->topicsBar:Lorg/fork/ui/view/DialogTypeTopicsBar;

    if-nez p0, :cond_0

    const-string p0, "topicsBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/fork/ui/view/DialogTypeTopicsBar;->notifyDataSetChanged()V

    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 151
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 153
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$TouchHelperCallback;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 156
    new-instance v1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda$12$lambda$11(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "view"

    .line 159
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 161
    iget v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableRow:I

    if-ne p2, v0, :cond_1

    .line 162
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 163
    iget-boolean p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    .line 164
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p2

    .line 165
    iget v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    .line 166
    invoke-virtual {p2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    .line 167
    iget v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 168
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 171
    :cond_0
    iget p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 173
    :goto_0
    iget p0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 176
    :cond_1
    iget v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->hideOnScrollRow:I

    if-ne p2, v0, :cond_2

    .line 177
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 178
    iget-boolean p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    goto :goto_1

    .line 180
    :cond_2
    iget p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->allButtonsRow:I

    if-ne p2, p1, :cond_5

    .line 181
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->isAllButtonsEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->setAllButtonsEnabled(Z)V

    .line 182
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 187
    :cond_3
    instance-of p1, p1, Lorg/fork/ui/view/MovingCheckCell;

    if-eqz p1, :cond_5

    .line 188
    invoke-direct {p0, p2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getButton(I)Lorg/fork/models/MultiPanelButtonState;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/fork/models/MultiPanelButtonState;->setEnabled(Z)V

    .line 189
    :cond_4
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 147
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundGray"

    .line 148
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 149
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method private final isAllButtonsEnabled()Z
    .locals 3

    .line 199
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

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

    check-cast v1, Lorg/fork/models/MultiPanelButtonState;

    .line 199
    invoke-virtual {v1}, Lorg/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 220
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->MOVING_CHECK:I

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

    .line 222
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

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

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

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

    .line 210
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
    check-cast v6, Lorg/fork/models/MultiPanelButtonState;

    .line 211
    new-instance v7, Lorg/fork/models/MultiPanelButtonState;

    invoke-virtual {v6}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v8

    invoke-virtual {v6}, Lorg/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v9

    invoke-virtual {v6}, Lorg/fork/models/MultiPanelButtonState;->getPosition()I

    move-result v6

    invoke-direct {v7, v8, v9, v6}, Lorg/fork/models/MultiPanelButtonState;-><init>(Lorg/fork/enums/MultiPanelButton;ZI)V

    .line 1621
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 210
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1254
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 208
    iput-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    return-void
.end method

.method private final setAllButtonsEnabled(Z)V
    .locals 2

    .line 202
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getButtons()Ljava/util/List;

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

    check-cast v1, Lorg/fork/models/MultiPanelButtonState;

    .line 202
    invoke-virtual {v1, p1}, Lorg/fork/models/MultiPanelButtonState;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 123
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 125
    sget v2, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 127
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 128
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    sget v4, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    const-string v5, "ThemeResetToDefaults"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 132
    new-instance v1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$setupActionBar$1$2;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public final getCurrentDialogType()Lorg/fork/enums/DialogType;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

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

    .line 87
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 86
    new-instance v8, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    .line 87
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 88
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

    .line 89
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

    .line 90
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 91
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 92
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v15, "listSelectorSDK21"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    .line 93
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v1, v7

    .line 94
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v11, v2

    const-string/jumbo v15, "windowBackgroundGrayShadow"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v3, v1, v7

    .line 95
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v6, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v11, v2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v11, v4

    const-class v6, Lorg/fork/ui/view/MovingCheckCell;

    aput-object v6, v11, v5

    const-string/jumbo v15, "windowBackgroundWhite"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 96
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 97
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 98
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 99
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 100
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 101
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 102
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 103
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 104
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 105
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 106
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "windowBackgroundWhiteBlueHeader"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x13

    aput-object v3, v1, v7

    .line 107
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "windowBackgroundWhiteGrayText4"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x14

    aput-object v3, v1, v5

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/MovingCheckCell;

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

    .line 109
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/MovingCheckCell;

    aput-object v5, v10, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x16

    aput-object v3, v1, v5

    .line 110
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "titleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string/jumbo v14, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-object v3, v1, v5

    .line 111
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "subtitleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "windowBackgroundWhiteGrayText2"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x18

    aput-object v3, v1, v5

    .line 112
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "iconView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "chats_actionBackground"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x19

    aput-object v3, v1, v5

    .line 113
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/MovingCheckCell;

    aput-object v5, v9, v2

    const-string v5, "moveIconView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "stickers_menu"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    .line 114
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 86
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->setupActionBar()V

    .line 63
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 64
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 73
    invoke-direct {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->checkSettingsChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    .line 75
    iget-boolean v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsEnabled:Z

    invoke-virtual {v0, v1}, Lorg/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 76
    iget-boolean v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newIsHideOnScrollEnabled:Z

    invoke-virtual {v0, v1}, Lorg/fork/controller/MultiPanelController;->setHideMultiPanelOnScrollEnabled(Z)V

    .line 77
    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 78
    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->getButtonStates()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->newButtonStates:Ljava/util/Map;

    if-nez v2, :cond_0

    const-string v2, "newButtonStates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    invoke-virtual {v0}, Lorg/fork/controller/MultiPanelController;->saveConfig()V

    .line 81
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->multiPanelSettingsChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 83
    :cond_1
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final setCurrentDialogType(Lorg/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

    return-void
.end method
