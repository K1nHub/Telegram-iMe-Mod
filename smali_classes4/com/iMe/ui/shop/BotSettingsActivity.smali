.class public final Lcom/iMe/ui/shop/BotSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "BotSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotSettingsActivity.kt\ncom/iMe/ui/shop/BotSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"
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
.field private autoBotsInGroupsRow:I

.field private autoBotsInPersonalChatsRow:I

.field private autoBotsRow:I

.field private enableBotsRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private showOftenUsedRow:I


# direct methods
.method public static synthetic $r8$lambda$xn3watxfT2dqQYjS7l3VRDNoqAM(Lcom/iMe/ui/shop/BotSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/BotSettingsActivity;->initListView$lambda$9$lambda$8(Lcom/iMe/ui/shop/BotSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/shop/BotSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 32
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 33
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/shop/BotSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/iMe/ui/shop/BotSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/BotSettingsActivity$rootView$2;-><init>(Lcom/iMe/ui/shop/BotSettingsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 32
    new-instance v0, Lcom/iMe/ui/shop/BotSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/BotSettingsActivity$listView$2;-><init>(Lcom/iMe/ui/shop/BotSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 33
    new-instance v0, Lcom/iMe/ui/shop/BotSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/shop/BotSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/ui/shop/BotSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getAutoBotsInGroupsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInGroupsRow:I

    return p0
.end method

.method public static final synthetic access$getAutoBotsInPersonalChatsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInPersonalChatsRow:I

    return p0
.end method

.method public static final synthetic access$getAutoBotsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsRow:I

    return p0
.end method

.method public static final synthetic access$getEnableBotsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->enableBotsRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getShowOftenUsedRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->showOftenUsedRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/ui/shop/BotSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/ui/shop/BotSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateRows(Lcom/iMe/ui/shop/BotSettingsActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->updateRows()V

    return-void
.end method

.method private final getListAdapter()Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/shop/BotSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/shop/BotSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/shop/BotSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 231
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 233
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListAdapter()Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 235
    new-instance v1, Lcom/iMe/ui/shop/BotSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/BotSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/BotSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda$9$lambda$8(Lcom/iMe/ui/shop/BotSettingsActivity;Landroid/view/View;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_5

    .line 237
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 239
    iget v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->enableBotsRow:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/iMe/fork/controller/NeuroBotsController;->setNeuroBotsEnabled(Z)V

    .line 241
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListAdapter()Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;

    move-result-object p2

    .line 242
    iget v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    .line 243
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->updateRows()V

    .line 244
    iget v2, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 245
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget p1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->enableBotsRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 248
    :cond_0
    iget p1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->enableBotsRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 251
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 252
    sget p2, Lorg/telegram/messenger/NotificationCenter;->neuroBotEnableChanged:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 255
    :cond_1
    iget p1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInPersonalChatsRow:I

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 256
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/NeuroBotsController;->setNeuroBotsAutoEnabledInPersonalChats(Z)V

    goto :goto_1

    .line 260
    :cond_2
    iget p1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInGroupsRow:I

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/NeuroBotsController;->setNeuroBotsAutoEnabledInGroups(Z)V

    goto :goto_1

    .line 264
    :cond_3
    iget p1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->showOftenUsedRow:I

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/NeuroBotsController;->setShowOftenUsedNeuroBotsEnabled(Z)V

    .line 268
    :cond_4
    :goto_1
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 269
    sget p1, Lorg/telegram/messenger/NotificationCenter;->botSettingsChanged:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 227
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 228
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 214
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 216
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_settings_screen_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v1, Lcom/iMe/ui/shop/BotSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/BotSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/ui/shop/BotSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, -0x1

    .line 277
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsRow:I

    .line 278
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInPersonalChatsRow:I

    .line 279
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInGroupsRow:I

    .line 281
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->showOftenUsedRow:I

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 283
    iput v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->enableBotsRow:I

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 286
    iput v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsRow:I

    add-int/lit8 v0, v1, 0x1

    .line 287
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    iput v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInPersonalChatsRow:I

    add-int/lit8 v1, v0, 0x1

    .line 288
    iput v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->autoBotsInGroupsRow:I

    add-int/lit8 v1, v1, 0x1

    .line 289
    iput v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    add-int/lit8 v0, v1, 0x1

    .line 290
    iput v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->rowCount:I

    iput v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity;->showOftenUsedRow:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0xf

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 66
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    .line 68
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Class;

    .line 69
    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    .line 73
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 66
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v10, v1, v12

    .line 75
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 76
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 77
    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 82
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    .line 75
    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v2, v1, v13

    .line 84
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 85
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 86
    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 91
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v21

    .line 84
    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v2, v1, v11

    .line 93
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 94
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 95
    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 100
    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    .line 93
    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 103
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 104
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 109
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v10, 0x0

    move-object v4, v2

    .line 102
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 111
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 112
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 113
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 118
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    .line 111
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 120
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    .line 122
    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v14, v2

    .line 120
    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 129
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 131
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 136
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v4, v2

    .line 129
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 138
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Class;

    .line 141
    const-class v3, Landroid/view/View;

    aput-object v3, v7, v12

    .line 142
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 145
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v6, 0x0

    move-object v4, v2

    .line 138
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 147
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    .line 150
    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v12

    const-string v4, "textView"

    .line 151
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    .line 155
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    .line 147
    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 157
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    .line 160
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v12

    .line 161
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    .line 165
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v14, v2

    move-object/from16 v17, v3

    .line 157
    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 167
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    .line 170
    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v12

    const-string v4, "valueTextView"

    .line 171
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    .line 175
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v14, v2

    move-object/from16 v17, v3

    .line 167
    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 177
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    .line 180
    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v12

    const-string v4, "checkBox"

    .line 181
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    .line 185
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v14, v2

    move-object/from16 v17, v3

    .line 177
    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 187
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v3, v13, [Ljava/lang/Class;

    .line 190
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v12

    .line 191
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    .line 195
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v14, v2

    move-object/from16 v17, v3

    .line 187
    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 197
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 199
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v7, v13, [Ljava/lang/Class;

    .line 200
    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v3, v7, v12

    .line 204
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/4 v8, 0x0

    move-object v4, v2

    .line 197
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 65
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 61
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->purchaseHelper:Lcom/iMe/ui/shop/PurchaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/ui/shop/PurchaseHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/BotSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->setupActionBar()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/shop/BotSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/NeuroBotsController;->saveConfig()V

    .line 56
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
