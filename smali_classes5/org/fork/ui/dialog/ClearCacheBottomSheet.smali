.class public final Lorg/fork/ui/dialog/ClearCacheBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ClearCacheBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/dialog/ClearCacheBottomSheet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClearCacheBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearCacheBottomSheet.kt\norg/fork/ui/dialog/ClearCacheBottomSheet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,126:1\n1547#2:127\n1618#2,3:128\n37#3:131\n36#3,3:132\n211#4,2:135\n200#4,4:137\n479#5,7:141\n*S KotlinDebug\n*F\n+ 1 ClearCacheBottomSheet.kt\norg/fork/ui/dialog/ClearCacheBottomSheet\n*L\n37#1:127\n37#1:128,3\n37#1:131\n37#1:132,3\n61#1:135,2\n86#1:137,4\n104#1:141,7\n*E\n"
.end annotation


# instance fields
.field private final clearButton$delegate:Lkotlin/Lazy;

.field private final data:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/fork/enums/TelegramCacheType;",
            "Lorg/fork/models/TelegramCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private final diagramView$delegate:Lkotlin/Lazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final onProcess:Lorg/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Ljava/util/List<",
            "Lorg/fork/enums/TelegramCacheType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fork/models/TelegramCacheData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rootLinear$delegate:Lkotlin/Lazy;

.field private final rootScrollingView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0M2vtlST4HZP2lghb24BC7nWuTY(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/fork/models/TelegramCacheData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->createCategoryItem$lambda-6$lambda-5(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/fork/models/TelegramCacheData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7VZhsZCSwYEwqqo1NCGG9TW_c2I(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->initClearButton$lambda-13$lambda-12(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUE_GMep39AAfEjfqu4UMLRO4AQ(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Ljava/util/Map;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->initClearButton$lambda-13$lambda-12$lambda-11(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Ljava/util/Map;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o36__pkPNxnc1n4FtZN_irSeBmM(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->initClearButton$lambda-13$lambda-12$lambda-11$lambda-10(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/dialog/ClearCacheBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/EnumMap;Lorg/fork/utils/Callbacks$Callback2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/EnumMap<",
            "Lorg/fork/enums/TelegramCacheType;",
            "Lorg/fork/models/TelegramCacheData;",
            ">;",
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Ljava/util/List<",
            "Lorg/fork/enums/TelegramCacheType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fork/models/TelegramCacheData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 24
    iput-object p1, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 25
    iput-object p2, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->data:Ljava/util/EnumMap;

    .line 26
    iput-object p3, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->onProcess:Lorg/fork/utils/Callbacks$Callback2;

    .line 29
    new-instance p1, Lorg/fork/ui/dialog/ClearCacheBottomSheet$rootScrollingView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$rootScrollingView$2;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->rootScrollingView$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lorg/fork/ui/dialog/ClearCacheBottomSheet$rootLinear$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$rootLinear$2;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->rootLinear$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lorg/fork/ui/dialog/ClearCacheBottomSheet$diagramView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$diagramView$2;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->diagramView$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lorg/fork/ui/dialog/ClearCacheBottomSheet$clearButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$clearButton$2;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->clearButton$delegate:Lkotlin/Lazy;

    .line 35
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->setupBottomSheet()V

    .line 36
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->setupCategoryList()V

    .line 37
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getDiagramView()Lorg/telegram/ui/Components/StorageDiagramView;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p2

    const-string p3, "data.values"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1619
    check-cast v0, Lorg/fork/models/TelegramCacheData;

    .line 37
    invoke-virtual {v0}, Lorg/fork/models/TelegramCacheData;->getClearViewData()Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p2, v1, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 38
    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getRootLinear()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getClearButton()Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object p2

    const/4 p3, -0x1

    const/16 v0, 0x32

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getRootScrollingView()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$initClearButton(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->initClearButton()Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootLinear(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->initRootLinear()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootScrollView(Lorg/fork/ui/dialog/ClearCacheBottomSheet;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->initRootScrollView()Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    return-object p0
.end method

.method private final createCategoryItem(Lorg/fork/enums/TelegramCacheType;Lorg/fork/models/TelegramCacheData;)Lorg/telegram/ui/Cells/CheckBoxCell;
    .locals 6

    .line 74
    new-instance v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 75
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p1}, Lorg/fork/enums/TelegramCacheType;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/fork/models/TelegramCacheData;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    const-string v2, "dialogTextBlack"

    .line 77
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 78
    invoke-virtual {p1}, Lorg/fork/enums/TelegramCacheType;->getColorKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "windowBackgroundWhiteGrayIcon"

    const-string v5, "checkboxCheck"

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckBoxColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getData()Ljava/util/EnumMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "data.keys"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setNeedDivider(Z)V

    .line 80
    new-instance p1, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0, p2}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/fork/models/TelegramCacheData;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createCategoryItem$lambda-6$lambda-5(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/fork/models/TelegramCacheData;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$cacheData"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lorg/fork/models/TelegramCacheData;->getClearViewData()Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->switchCheckBox(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    return-void
.end method

.method private final getClearButton()Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->clearButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    return-object v0
.end method

.method private final getDiagramView()Lorg/telegram/ui/Components/StorageDiagramView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->diagramView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/StorageDiagramView;

    return-object v0
.end method

.method private final getRootLinear()Landroid/widget/LinearLayout;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->rootLinear$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getRootScrollingView()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->rootScrollingView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method

.method private final initClearButton()Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .locals 3

    .line 95
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 96
    sget v1, Lorg/telegram/messenger/R$string;->ClearMediaCache:I

    const-string v2, "ClearMediaCache"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 97
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initClearButton$lambda-13$lambda-12(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;Landroid/view/View;)V
    .locals 4

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 99
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    const-wide/16 v0, 0x1f4

    .line 101
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 103
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 104
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getData()Ljava/util/EnumMap;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 480
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/models/TelegramCacheData;

    .line 104
    invoke-virtual {v3}, Lorg/fork/models/TelegramCacheData;->getClearViewData()Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->isClear()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    .line 482
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_2
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1, p2}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Ljava/util/Map;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initClearButton$lambda-13$lambda-12$lambda-11(Lorg/fork/ui/dialog/ClearCacheBottomSheet;Ljava/util/Map;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataToDelete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$progressDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getOnProcess()Lorg/fork/utils/Callbacks$Callback2;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :goto_0
    new-instance p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p0, p2}, Lorg/fork/ui/dialog/ClearCacheBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initClearButton$lambda-13$lambda-12$lambda-11$lambda-10(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const-string v0, "$progressDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private final initRootLinear()Landroid/widget/LinearLayout;
    .locals 9

    .line 55
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getDiagramView()Lorg/telegram/ui/Components/StorageDiagramView;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initRootScrollView()Landroidx/core/widget/NestedScrollView;
    .locals 2

    .line 50
    new-instance v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 52
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getRootLinear()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private final setupBottomSheet()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    return-void
.end method

.method private final setupCategoryList()V
    .locals 6

    .line 61
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->data:Ljava/util/EnumMap;

    .line 211
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fork/enums/TelegramCacheType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fork/models/TelegramCacheData;

    .line 62
    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getDiagramView()Lorg/telegram/ui/Components/StorageDiagramView;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    .line 63
    invoke-virtual {v2}, Lorg/fork/enums/TelegramCacheType;->getColorKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->color:Ljava/lang/String;

    .line 64
    invoke-virtual {v1}, Lorg/fork/models/TelegramCacheData;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSize(J)V

    .line 65
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    invoke-virtual {v1, v3}, Lorg/fork/models/TelegramCacheData;->setClearViewData(Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    const-string v3, "cacheType"

    .line 66
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cacheData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->createCategoryItem(Lorg/fork/enums/TelegramCacheType;Lorg/fork/models/TelegramCacheData;)Lorg/telegram/ui/Cells/CheckBoxCell;

    move-result-object v1

    .line 67
    invoke-direct {p0}, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->getRootLinear()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final switchCheckBox(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->data:Ljava/util/EnumMap;

    .line 200
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/models/TelegramCacheData;

    invoke-virtual {v3}, Lorg/fork/models/TelegramCacheData;->getClearViewData()Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->isClear()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_2
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    .line 87
    invoke-virtual {p2}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->isClear()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    goto :goto_3

    .line 90
    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->isClear()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setClear(Z)V

    .line 91
    invoke-virtual {p2}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->isClear()Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lorg/fork/enums/TelegramCacheType;",
            "Lorg/fork/models/TelegramCacheData;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->data:Ljava/util/EnumMap;

    return-object v0
.end method

.method public final getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public final getOnProcess()Lorg/fork/utils/Callbacks$Callback2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fork/utils/Callbacks$Callback2<",
            "Ljava/util/List<",
            "Lorg/fork/enums/TelegramCacheType;",
            ">;",
            "Ljava/util/List<",
            "Lorg/fork/models/TelegramCacheData;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/fork/ui/dialog/ClearCacheBottomSheet;->onProcess:Lorg/fork/utils/Callbacks$Callback2;

    return-object v0
.end method
