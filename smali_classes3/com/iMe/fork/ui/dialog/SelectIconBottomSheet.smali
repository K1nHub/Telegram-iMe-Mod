.class public final Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SelectIconBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;,
        Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;,
        Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$WhenMappings;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final currentFilterIcon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

.field private final currentTopicIcon:Lcom/iMe/storage/data/repository/topics/Topic;

.field private final deleteButton$delegate:Lkotlin/Lazy;

.field private final icons$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private final selectIconDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/filters/FilterIcon;",
            "Lcom/iMe/storage/data/repository/topics/Topic;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/iMe/fork/enums/FilterActivityType;


# direct methods
.method public static synthetic $r8$lambda$H0DK9SuhRmWoJWswDOYVBUKHWxQ(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->initDeleteButton$lambda$3$lambda$2(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wK99-ZOhkuc9e8wcq5MR7ouu8wI(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->setupListeners$lambda$4(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/iMe/fork/enums/FilterActivityType;Lcom/iMe/storage/domain/model/filters/FilterIcon;Lcom/iMe/storage/data/repository/topics/Topic;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/iMe/fork/enums/FilterActivityType;",
            "Lcom/iMe/storage/domain/model/filters/FilterIcon;",
            "Lcom/iMe/storage/data/repository/topics/Topic;",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/filters/FilterIcon;",
            "Lcom/iMe/storage/data/repository/topics/Topic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectIconDelegate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 39
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->type:Lcom/iMe/fork/enums/FilterActivityType;

    .line 41
    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentFilterIcon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    .line 42
    iput-object p4, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentTopicIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    .line 43
    iput-object p5, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->selectIconDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 47
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$icons$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$icons$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->icons$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$rootView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$deleteButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$deleteButton$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->deleteButton$delegate:Lkotlin/Lazy;

    .line 53
    sget p1, Lorg/telegram/messenger/R$string;->select_icon:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 54
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getRootView()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getIcons(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initDeleteButton(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->initDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIcons(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->initIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->initRootView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private final getDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->deleteButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    return-object v0
.end method

.method private final getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->icons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final initDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 3

    .line 89
    new-instance v0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->getBackgroundPublic()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static final initDeleteButton$lambda$3$lambda$2(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->selectIconDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final initIcons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/iMe/storage/data/repository/topics/Topic;->values()[Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 67
    :cond_1
    invoke-static {}, Lcom/iMe/storage/domain/model/filters/FilterIcon;->values()[Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 80
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 83
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isInLandscapeMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    .line 84
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v1, 0xa

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    return-object v0
.end method

.method private final initRootView()Landroid/widget/LinearLayout;
    .locals 5

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentFilterIcon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentTopicIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$4(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getIcons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    .line 101
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentFilterIcon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    if-eq p2, p1, :cond_2

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentTopicIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->type:Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v0, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    instance-of v0, p1, Lcom/iMe/storage/domain/model/filters/FilterIcon;

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->selectIconDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p2, p1, v1}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    sget-object v0, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_2

    instance-of p2, p1, Lcom/iMe/storage/data/repository/topics/Topic;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->selectIconDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-interface {p2, v1, p1}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrentFilterIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentFilterIcon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    return-object v0
.end method

.method public final getCurrentTopicIcon()Lcom/iMe/storage/data/repository/topics/Topic;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->currentTopicIcon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-object v0
.end method

.method public final getType()Lcom/iMe/fork/enums/FilterActivityType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->type:Lcom/iMe/fork/enums/FilterActivityType;

    return-object v0
.end method
