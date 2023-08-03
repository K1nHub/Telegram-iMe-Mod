.class public final Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SelectNetworkBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;,
        Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$RootView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectNetworkBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNetworkBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectNetworkBottomSheet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,462:1\n350#2,7:463\n*S KotlinDebug\n*F\n+ 1 SelectNetworkBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectNetworkBottomSheet\n*L\n64#1:463,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;


# instance fields
.field private final actionBar$delegate:Lkotlin/Lazy;

.field private final actionBarHeight$delegate:Lkotlin/Lazy;

.field private final currentNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

.field private filteredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreLayout:Z

.field private isSearching:Z

.field private itemWidth:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation
.end field

.field private scrollOffsetY:I

.field private final selectNetworkDelegate:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation
.end field

.field private selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private final topShadow$delegate:Lkotlin/Lazy;

.field private final underlay$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$YShJrl5JEgLUGTEa8-Rju6fBw7Q(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->setupListeners$lambda$9$lambda$8(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 51
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->currentNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 52
    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->networks:Ljava/util/List;

    .line 53
    iput-object p4, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->selectNetworkDelegate:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 57
    sget-object p1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$actionBarHeight$2;->INSTANCE:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$actionBarHeight$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->actionBarHeight$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$topShadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$topShadow$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$actionBar$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$actionBar$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->actionBar$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$underlay$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$underlay$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->underlay$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 68
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->filteredNetworks:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getActionBarHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result p1

    .line 78
    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$RootView;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$RootView;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    const/4 p3, 0x0

    .line 79
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getUnderlay()Landroid/widget/FrameLayout;

    move-result-object p3

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    const/4 p4, -0x1

    const/16 v0, 0x30

    invoke-static {p4, p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p3

    .line 96
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/4 v0, -0x1

    .line 95
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 101
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->setupListeners()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;-><init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static final synthetic access$getActionBarHeight(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getActionBarHeight()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s-983463646(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s-983463646(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->itemWidth:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworks$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->networks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getSelectedNetwork$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s-983463646(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;I)I
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTopShadow(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Landroid/view/View;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initActionBar(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Landroid/view/View;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->initShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUnderlay(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->initUnderlay()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isSearching$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->isSearching:Z

    return p0
.end method

.method public static final synthetic access$setFilteredNetworks$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Ljava/util/List;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->filteredNetworks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->itemWidth:I

    return-void
.end method

.method public static final synthetic access$setSearching$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->isSearching:Z

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->actionBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method private final getActionBarHeight()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->actionBarHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getCurrentItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->isSearching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->filteredNetworks:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->networks:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method private final getCurrentNetworkPosition()I
    .locals 4

    .line 64
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 352
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 64
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->currentNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getTopShadow()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getUnderlay()Landroid/widget/FrameLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->underlay$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 6

    .line 113
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 115
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 116
    sget v2, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 118
    sget v3, Lcom/iMe/common/IdFabric$Menu;->SEARCH:I

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    .line 119
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 122
    sget v4, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_search_hint:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 123
    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 126
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 127
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 128
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchCursorColor(I)V

    .line 129
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 130
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$initListView$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Landroid/content/Context;)V

    .line 146
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 147
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 148
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 149
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v0, 0x1

    .line 150
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 151
    iput-boolean v0, v1, Lorg/telegram/ui/Components/RecyclerListView;->useLayoutPositionOnClick:Z

    .line 152
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    return-object v1
.end method

.method private final initShadow()Landroid/view/View;
    .locals 6

    .line 156
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 158
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/high16 v4, -0x1000000

    const/16 v5, 0x19

    .line 160
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    .line 157
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 164
    invoke-static {v0, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method

.method private final initUnderlay()Landroid/widget/FrameLayout;
    .locals 2

    .line 134
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 135
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static final newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)",
            "Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private final runShadowAnimation(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 248
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 251
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    .line 252
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    .line 255
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v4

    .line 256
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    aput v6, v2, v0

    .line 254
    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v0

    .line 253
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$runShadowAnimation$1$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 251
    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_6
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 236
    iput p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->scrollOffsetY:I

    .line 237
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 238
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getUnderlay()Landroid/widget/FrameLayout;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 239
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 240
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 168
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 176
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v1, Lcom/iMe/common/IdFabric$Menu;->SEARCH:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$1$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    .line 176
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 202
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$2$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$setupListeners$2$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 208
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$9$lambda$8(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;Landroid/view/View;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getCurrentNetworkPosition()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 213
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getCurrentNetworkPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 214
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 216
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->selectNetworkDelegate:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {p1, p0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 223
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 228
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v0, :cond_1

    const/4 v1, 0x1

    .line 229
    :cond_1
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->runShadowAnimation(Z)V

    .line 230
    iget v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->scrollOffsetY:I

    if-eq v0, v2, :cond_2

    .line 231
    invoke-direct {p0, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
