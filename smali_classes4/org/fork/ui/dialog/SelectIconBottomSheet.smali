.class public final Lorg/fork/ui/dialog/SelectIconBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SelectIconBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;,
        Lorg/fork/ui/dialog/SelectIconBottomSheet$IconView;,
        Lorg/fork/ui/dialog/SelectIconBottomSheet$Companion;,
        Lorg/fork/ui/dialog/SelectIconBottomSheet$WhenMappings;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final currentFilterIcon:Lcom/smedialink/storage/domain/model/filters/FilterIcon;

.field private final currentTopicIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

.field private final deleteButton$delegate:Lkotlin/Lazy;

.field private final icons$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private final selectIconDelegate:Lorg/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Lcom/smedialink/storage/domain/model/filters/FilterIcon;",
            "Lcom/smedialink/storage/data/repository/topics/Topic;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/fork/enums/FilterActivityType;


# direct methods
.method public static synthetic $r8$lambda$CxeCDnWBoGyv3WqDw5qnWedes8I(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->initDeleteButton$lambda-3$lambda-2(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$djsiIrdJF-63RC_GYt44_JV-2_Q(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->setupListeners$lambda-4(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/dialog/SelectIconBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/dialog/SelectIconBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/fork/enums/FilterActivityType;Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;Lorg/fork/utils/Callbacks$Callback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/fork/enums/FilterActivityType;",
            "Lcom/smedialink/storage/domain/model/filters/FilterIcon;",
            "Lcom/smedialink/storage/data/repository/topics/Topic;",
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Lcom/smedialink/storage/domain/model/filters/FilterIcon;",
            "Lcom/smedialink/storage/data/repository/topics/Topic;",
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

    .line 37
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 32
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->activity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->type:Lorg/fork/enums/FilterActivityType;

    .line 34
    iput-object p3, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->currentFilterIcon:Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    .line 35
    iput-object p4, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->currentTopicIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    .line 36
    iput-object p5, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->selectIconDelegate:Lorg/fork/utils/Callbacks$Callback2;

    .line 40
    new-instance p1, Lorg/fork/ui/dialog/SelectIconBottomSheet$icons$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$icons$2;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->icons$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lorg/fork/ui/dialog/SelectIconBottomSheet$rootView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$rootView$2;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lorg/fork/ui/dialog/SelectIconBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$listView$2;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lorg/fork/ui/dialog/SelectIconBottomSheet$deleteButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$deleteButton$2;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->deleteButton$delegate:Lkotlin/Lazy;

    .line 46
    sget p1, Lorg/telegram/messenger/R$string;->select_icon:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getRootView()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getIcons(Lorg/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initDeleteButton(Lorg/fork/ui/dialog/SelectIconBottomSheet;)Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->initDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initIcons(Lorg/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->initIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/dialog/SelectIconBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/dialog/SelectIconBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->initRootView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private final getDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->deleteButton$delegate:Lkotlin/Lazy;

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

    .line 40
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->icons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final initDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    .locals 3

    .line 81
    new-instance v0, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->getBackgroundPublic()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static final initDeleteButton$lambda-3$lambda-2(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getSelectIconDelegate()Lorg/fork/utils/Callbacks$Callback2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lorg/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
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

    .line 59
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->type:Lorg/fork/enums/FilterActivityType;

    sget-object v1, Lorg/fork/ui/dialog/SelectIconBottomSheet$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 61
    invoke-static {}, Lcom/smedialink/storage/data/repository/topics/Topic;->values()[Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 60
    :cond_1
    invoke-static {}, Lcom/smedialink/storage/domain/model/filters/FilterIcon;->values()[Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 73
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 75
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isInLandscapeMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    .line 76
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance v1, Lorg/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v1, 0xa

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    return-object v0
.end method

.method private final initRootView()Landroid/widget/LinearLayout;
    .locals 5

    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getCurrentFilterIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getCurrentTopicIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 69
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getDeleteButton()Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

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

    .line 91
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda-4(Lorg/fork/ui/dialog/SelectIconBottomSheet;Landroid/view/View;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getIcons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    .line 93
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getCurrentFilterIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object p2

    if-eq p2, p1, :cond_2

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getCurrentTopicIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object p2

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getType()Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    instance-of p2, p1, Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getSelectIconDelegate()Lorg/fork/utils/Callbacks$Callback2;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Lorg/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getType()Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_2

    instance-of p2, p1, Lcom/smedialink/storage/data/repository/topics/Topic;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->getSelectIconDelegate()Lorg/fork/utils/Callbacks$Callback2;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lorg/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
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

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getCurrentFilterIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->currentFilterIcon:Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    return-object v0
.end method

.method public final getCurrentTopicIcon()Lcom/smedialink/storage/data/repository/topics/Topic;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->currentTopicIcon:Lcom/smedialink/storage/data/repository/topics/Topic;

    return-object v0
.end method

.method public final getSelectIconDelegate()Lorg/fork/utils/Callbacks$Callback2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Lcom/smedialink/storage/domain/model/filters/FilterIcon;",
            "Lcom/smedialink/storage/data/repository/topics/Topic;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->selectIconDelegate:Lorg/fork/utils/Callbacks$Callback2;

    return-object v0
.end method

.method public final getType()Lorg/fork/enums/FilterActivityType;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet;->type:Lorg/fork/enums/FilterActivityType;

    return-object v0
.end method
