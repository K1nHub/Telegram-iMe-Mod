.class public final Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "ChatAttachAlertButtonsSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertButtonsSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertButtonsSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,254:1\n1#2:255\n*E\n"
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

.field private currentDialogType:Lcom/iMe/fork/enums/DialogType;

.field private dialogTypeTopicsBarRow:I

.field private enableBotsRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private newSuggest:Z

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;


# direct methods
.method public static synthetic $r8$lambda$8Rb2MFLiNYL5323wXWjl1aKwKs4(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initListView$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9_qW7RrypBAnQhh1MCvECXhghjo(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->saveSuggestContacts$lambda$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYiNoHIHCEUxBCLkgos1zVjnSxE(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initListView$lambda$11$lambda$10$lambda$9(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$quv-jC910sgLVlVUT6h6H9UNorE(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getThemeDescriptions$lambda$4(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

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

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/enums/DialogType;)V
    .locals 2

    const-string v0, "currentDialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 38
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 39
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 40
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 42
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

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
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;)V

    return-void
.end method

.method public static final synthetic access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->dialogTypeTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getEnableBotsRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->enableBotsRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewSuggest$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsSectionRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->dialogTypeTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setEnableBotsRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->enableBotsRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    return-void
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$4(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 142
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 144
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 146
    new-instance v1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    instance-of v0, p1, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "view"

    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->setChecked(Z)V

    .line 150
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {p1}, Lcom/iMe/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->buttonsStartRow:I

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 151
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object p2

    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 154
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p2, :cond_4

    .line 161
    iget-boolean p2, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    if-eqz p2, :cond_3

    .line 162
    new-instance p2, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/AlertsCreator;->showDisableSuggestionsAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_3
    iput-boolean v1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    .line 168
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final initListView$lambda$11$lambda$10$lambda$9(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    .line 164
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 138
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 139
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 175
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

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

    .line 177
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final saveSuggestContacts$lambda$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private final setupActionBar()V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 125
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 127
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_chat_attach_alert_buttons:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public final getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

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

    const/16 v1, 0x1b

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 90
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 89
    new-instance v8, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V

    .line 90
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 91
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 92
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 93
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 94
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 95
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 96
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 97
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 98
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-class v5, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v4, v13

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v15, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 99
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 100
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 101
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 102
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 103
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 104
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v6

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 105
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 106
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 107
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 109
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 110
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v8, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 111
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 112
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 113
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 114
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v4, v2

    const-string v5, "titleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x18

    aput-object v3, v1, v4

    .line 115
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    aput-object v5, v4, v2

    const-string v5, "iconView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x19

    aput-object v3, v1, v4

    .line 116
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x1a

    aput-object v3, v1, v2

    .line 89
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 73
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->setupActionBar()V

    .line 74
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    .line 83
    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    if-eq v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->saveSuggestContacts()V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final saveSuggestContacts()V
    .locals 3

    .line 58
    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearTopPeers()V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    .line 62
    iget-boolean v1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    iget-boolean v2, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->newSuggest:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    sget-object v2, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public final setCurrentDialogType(Lcom/iMe/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-void
.end method
