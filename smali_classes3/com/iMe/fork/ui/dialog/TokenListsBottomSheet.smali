.class public final Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "TokenListsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;,
        Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenListsBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenListsBottomSheet.kt\ncom/iMe/fork/ui/dialog/TokenListsBottomSheet\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,377:1\n68#2,4:378\n40#2:382\n56#2:383\n75#2:384\n*S KotlinDebug\n*F\n+ 1 TokenListsBottomSheet.kt\ncom/iMe/fork/ui/dialog/TokenListsBottomSheet\n*L\n81#1:378,4\n81#1:382\n81#1:383\n81#1:384\n*E\n"
.end annotation


# instance fields
.field private final actionBar$delegate:Lkotlin/Lazy;

.field private final actionBarHeight$delegate:Lkotlin/Lazy;

.field private ignoreLayout:Z

.field private itemWidth:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final onInfoClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private scrollOffsetY:I

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private final tokenLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final topShadow$delegate:Lkotlin/Lazy;

.field private final underlay$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenLists"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onInfoClickAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 46
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->tokenLists:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->onInfoClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 51
    sget-object p1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$actionBarHeight$2;->INSTANCE:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$actionBarHeight$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->actionBarHeight$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$topShadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$topShadow$2;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$actionBar$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$actionBar$2;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->actionBar$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$underlay$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$underlay$2;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->underlay$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 64
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getActionBarHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result p1

    .line 65
    new-instance p2, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    const/4 p3, 0x0

    .line 66
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getUnderlay()Landroid/widget/FrameLayout;

    move-result-object p3

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    const/4 v0, -0x1

    const/16 v1, 0x30

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    .line 68
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getTopShadow(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/view/View;

    move-result-object p3

    const/4 v0, -0x1

    .line 83
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    .line 82
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 65
    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 89
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s-844605672(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s-844605672(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->itemWidth:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnInfoClickAction$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Lcom/iMe/fork/utils/Callbacks$Callback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->onInfoClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s-844605672(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getThemedColor(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;I)I
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTokenLists$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->tokenLists:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTopShadow(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/view/View;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initActionBar(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/view/View;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->initShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUnderlay(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->initUnderlay()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setItemWidth$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->itemWidth:I

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->actionBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method private final getActionBarHeight()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->actionBarHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getTopShadow()Landroid/view/View;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getUnderlay()Landroid/widget/FrameLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->underlay$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 5

    .line 101
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 103
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 104
    sget v2, Lorg/telegram/messenger/R$string;->token_lists_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    sget v3, Lcom/iMe/common/IdFabric$Menu;->INFO:I

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 106
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 107
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 108
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$initListView$1;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 126
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 127
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 129
    iput-boolean v0, v1, Lorg/telegram/ui/Components/RecyclerListView;->useLayoutPositionOnClick:Z

    .line 130
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    return-object v1
.end method

.method private final initShadow()Landroid/view/View;
    .locals 6

    .line 134
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 136
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/high16 v4, -0x1000000

    const/16 v5, 0x19

    .line 138
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    .line 135
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 142
    invoke-static {v0, v5, v4, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-object v0
.end method

.method private final initUnderlay()Landroid/widget/FrameLayout;
    .locals 2

    .line 112
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final runShadowAnimation(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

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

    .line 195
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 198
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    .line 199
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    .line 202
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v4

    .line 203
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    aput v6, v2, v0

    .line 201
    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v0

    .line 200
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 208
    new-instance v0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$runShadowAnimation$1$1;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 198
    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_6
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 183
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->scrollOffsetY:I

    .line 184
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 185
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getUnderlay()Landroid/widget/FrameLayout;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 187
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$1;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 154
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$2;-><init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->runShadowAnimation(Z)V

    .line 177
    :goto_0
    iget v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 178
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
