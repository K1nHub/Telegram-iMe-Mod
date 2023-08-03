.class public final Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SelectFabsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectFabsBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFabsBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectFabsBottomSheet\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,183:1\n1#2:184\n62#3,4:185\n*S KotlinDebug\n*F\n+ 1 SelectFabsBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectFabsBottomSheet\n*L\n130#1:185,4\n*E\n"
.end annotation


# instance fields
.field private final bottomShadow$delegate:Lkotlin/Lazy;

.field private final fabs$delegate:Lkotlin/Lazy;

.field private itemWidth:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final listener:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;>;"
        }
    .end annotation
.end field

.field private final saveButton$delegate:Lkotlin/Lazy;

.field private final selectedFabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4zjvqVzB7NJ3MTtWGJyeLr6TOlI(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->lambda$2$lambda$1(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KcU4apiqs6TfP8NdkpLVYaJWSK8(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->setupListeners$lambda$7(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPLfcRA4dcwfIFdpEvYZeZ4Xbyw(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->setupListeners$lambda$8(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 32
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    .line 33
    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->listener:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 37
    sget-object p2, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$fabs$2;->INSTANCE:Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$fabs$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->fabs$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$listView$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$listAdapter$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$bottomShadow$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$bottomShadow$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->bottomShadow$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$saveButton$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$saveButton$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->saveButton$delegate:Lkotlin/Lazy;

    .line 45
    sget p2, Lorg/telegram/messenger/R$string;->create_folder_change_fab_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 47
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$1;

    invoke-direct {p2, p1, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$1;-><init>(Landroid/content/Context;Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x30

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getBottomShadow()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/16 v2, 0x50

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object p1

    const/4 p3, -0x1

    const/16 v0, 0x30

    const/16 v1, 0x50

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 47
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getFabs(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)Ljava/util/List;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getFabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->itemWidth:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSaveButton(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->initSaveButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->initShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->itemWidth:I

    return-void
.end method

.method private final addOrEditSelectedFab(Lcom/iMe/storage/domain/model/filters/FilterFab;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final getBottomShadow()Landroid/view/View;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->bottomShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getFabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->fabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getSaveButton()Landroid/widget/TextView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->saveButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 62
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v2, 0x2

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    const/16 v2, 0xa

    .line 69
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 70
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$initListView$1$1;

    invoke-direct {v1}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$initListView$1$1;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object v0
.end method

.method private final initSaveButton()Landroid/widget/TextView;
    .locals 4

    .line 84
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const-string v2, "fonts/rmedium.ttf"

    .line 87
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget v2, Lorg/telegram/messenger/R$string;->Save:I

    const-string v3, "Save"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private final initShadow()Landroid/view/View;
    .locals 2

    .line 80
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static final lambda$2$lambda$1(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->updateLimitsUI()V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$7(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;Landroid/view/View;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getFabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 98
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "null cannot be cast to non-null type com.iMe.fork.ui.view.CircleCheckCell"

    .line 101
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/CircleCheckCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/CircleCheckCell;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setChecked(Z)V

    .line 102
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->addOrEditSelectedFab(Lcom/iMe/storage/domain/model/filters/FilterFab;)V

    .line 103
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->updateLimitsUI()V

    return-void
.end method

.method private static final setupListeners$lambda$8(Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->listener:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSortedSet(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final updateLimitsUI()V
    .locals 10

    .line 120
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_3

    .line 63
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "getChildAt(index)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v8, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 132
    invoke-virtual {v7, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 134
    :cond_1
    iget-object v8, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->getFabs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 135
    invoke-virtual {v7, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final getSelectedFabs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;->selectedFabs:Ljava/util/Set;

    return-object v0
.end method
