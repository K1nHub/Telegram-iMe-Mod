.class public final Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "ChatAttachAlertButtonsSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertButtonsSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertButtonsSettingsActivity.kt\norg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,252:1\n1#2:253\n*E\n"
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

.field private buttonsSectionRow:I

.field private buttonsStartRow:I

.field private currentDialogType:Lorg/fork/enums/DialogType;

.field private dialogTypeTopicsBarRow:I

.field private enableBotsRow:I

.field private final listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private newSuggest:Z

.field private final rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private topicsBar:Lorg/fork/ui/view/DialogTypeTopicsBar;


# direct methods
.method public static synthetic $r8$lambda$K457iZqfdy-ckWC84bTzJXlQLv0(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initListView$lambda-12$lambda-11$lambda-10(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2fLBHSnksmuZEWtH6eEpZajPPU(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getThemeDescriptions$lambda-4(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$woTG7c4-08XjsjGzP7JUDGdPJJ4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->saveSuggestContacts$lambda-2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yV5GcPcO6_om55DVEJJdgnzvXHU(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initListView$lambda-12$lambda-11(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

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

    const-string v4, "getListAdapter()Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lorg/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/enums/DialogType;)V
    .locals 2

    const-string v0, "currentDialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

    .line 36
    new-instance p1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 37
    new-instance p1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 38
    new-instance p1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 40
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    iput-boolean p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

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
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lorg/fork/enums/DialogType;)V

    return-void
.end method

.method public static final synthetic access$getButtonsSectionRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->dialogTypeTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getEnableBotsRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->enableBotsRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewSuggest$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsSectionRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsSectionRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->dialogTypeTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setEnableBotsRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->enableBotsRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lorg/fork/ui/view/DialogTypeTopicsBar;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->topicsBar:Lorg/fork/ui/view/DialogTypeTopicsBar;

    return-void
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
    .locals 3

    .line 38
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 37
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 36
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda-4(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->topicsBar:Lorg/fork/ui/view/DialogTypeTopicsBar;

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

    .line 143
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 145
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 147
    new-instance v1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda-12$lambda-11(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    instance-of v0, p1, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "view"

    .line 150
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    invoke-virtual {p1}, Lorg/fork/ui/view/ChatAttachAlertButtonCell;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/fork/ui/view/ChatAttachAlertButtonCell;->setChecked(Z)V

    .line 151
    invoke-virtual {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsStartRow:I

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fork/enums/ChatAttachAlertButton;

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 155
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p2, :cond_4

    .line 162
    iget-boolean p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    if-eqz p2, :cond_3

    .line 163
    new-instance p2, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/AlertsCreator;->showDisableSuggestionsAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 168
    :cond_3
    iput-boolean v1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    .line 169
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final initListView$lambda-12$lambda-11$lambda-10(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    .line 165
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 139
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundGray"

    .line 140
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 141
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 176
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

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

    .line 178
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final saveSuggestContacts$lambda-2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private final setupActionBar()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 126
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 128
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_chat_attach_alert_buttons:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public final getCurrentDialogType()Lorg/fork/enums/DialogType;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

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

    const/16 v1, 0x1b

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 91
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 90
    new-instance v8, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "windowBackgroundGray"

    move-object v2, v10

    .line 91
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 92
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

    .line 93
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

    .line 94
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 95
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 96
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v15, "listSelectorSDK21"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    .line 97
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v1, v7

    .line 98
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 99
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v6, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v11, v2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v11, v4

    const-class v6, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v6, v11, v5

    const-string v15, "windowBackgroundWhite"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 100
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 101
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 102
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 103
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 104
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 105
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-string v16, "windowBackgroundWhiteBlackText"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v1, v7

    .line 106
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xf

    aput-object v3, v1, v7

    .line 107
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueThumb"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x10

    aput-object v3, v1, v7

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueThumbChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x11

    aput-object v3, v1, v7

    .line 109
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelector"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x12

    aput-object v3, v1, v7

    .line 110
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x13

    aput-object v3, v1, v7

    .line 111
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "windowBackgroundWhiteBlueHeader"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x14

    aput-object v3, v1, v7

    .line 112
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "windowBackgroundWhiteGrayText4"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x15

    aput-object v3, v1, v5

    .line 113
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v10, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-string v15, "switchTrack"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x16

    aput-object v3, v1, v5

    .line 114
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v10, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-object v3, v1, v5

    .line 115
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v9, v2

    const-string v5, "titleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v14, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x18

    aput-object v3, v1, v5

    .line 116
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v9, v2

    const-string v5, "iconView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "chats_actionBackground"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x19

    aput-object v3, v1, v5

    .line 117
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v9, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const-string v13, "divider"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v3, v1, v2

    .line 90
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->setupActionBar()V

    .line 73
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 74
    invoke-direct {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ToolsController;->saveConfig()V

    .line 84
    iget-boolean v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->saveSuggestContacts()V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final saveSuggestContacts()V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearTopPeers()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    .line 60
    iget-boolean v1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 63
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    iget-boolean v2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1;->INSTANCE:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public final setCurrentDialogType(Lorg/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lorg/fork/enums/DialogType;

    return-void
.end method
