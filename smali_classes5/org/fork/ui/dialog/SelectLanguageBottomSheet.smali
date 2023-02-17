.class public final Lorg/fork/ui/dialog/SelectLanguageBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SelectLanguageBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/dialog/SelectLanguageBottomSheet$RootView;,
        Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;,
        Lorg/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;,
        Lorg/fork/ui/dialog/SelectLanguageBottomSheet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectLanguageBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectLanguageBottomSheet.kt\norg/fork/ui/dialog/SelectLanguageBottomSheet\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,416:1\n296#2,2:417\n764#3:419\n855#3,2:420\n817#3:422\n845#3,2:423\n*S KotlinDebug\n*F\n+ 1 SelectLanguageBottomSheet.kt\norg/fork/ui/dialog/SelectLanguageBottomSheet\n*L\n134#1:417,2\n164#1:419\n164#1:420,2\n164#1:422\n164#1:423,2\n*E\n"
.end annotation


# instance fields
.field private final bottomShadow$delegate:Lkotlin/Lazy;

.field private final cancelButton$delegate:Lkotlin/Lazy;

.field private filteredLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreLayout:Z

.field private isSearching:Z

.field private itemWidth:I

.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation
.end field

.field private final lastSelectLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private scrollOffsetY:I

.field private final searchView$delegate:Lkotlin/Lazy;

.field private final selectLanguageDelegate:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLangCode:Ljava/lang/String;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private shadowShowed:Z

.field private final topShadow$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$xoQkRQqa2ltDHZXvb7O4qNbaa9U(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->initCancelButton$lambda-3$lambda-2(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMsLc9ZCXigGl0q4tH9xJ_aIXjo(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->setupListeners$lambda-7$lambda-6(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectLanguageDelegate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 49
    iput-object p2, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->languages:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->selectedLangCode:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->selectLanguageDelegate:Lorg/fork/utils/Callbacks$Callback1;

    .line 55
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$topShadow$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$topShadow$2;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$searchView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$searchView$2;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->searchView$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listView$2;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listAdapter$2;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$bottomShadow$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$bottomShadow$2;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->bottomShadow$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$cancelButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$cancelButton$2;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->cancelButton$delegate:Lkotlin/Lazy;

    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->filteredLanguages:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getLastSelectionList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    .line 73
    new-instance p1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$RootView;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$RootView;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 75
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/4 v0, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x36

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object p2

    const/4 v1, -0x1

    const/16 v6, 0x30

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSearchView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;

    move-result-object p2

    const/4 p3, -0x1

    const/16 p4, 0x38

    const/16 v0, 0x30

    invoke-static {p3, p4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getBottomShadow()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getCancelButton()Landroid/widget/TextView;

    move-result-object p2

    const/16 p4, 0x50

    invoke-static {p3, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 81
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s1435040960(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s1435040960(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getCurrentItemsList(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getLastSelectionList(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getLastSelectionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListAdapter(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListAdapter()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s1435040960(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getTopShadow(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCancelButton(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->initCancelButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->initListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSearchView(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->initSearchView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Z)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->initShadow(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isSearching$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->isSearching:Z

    return p0
.end method

.method public static final synthetic access$isSelectedLanguagePosition(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;I)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->isSelectedLanguagePosition(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setFilteredLanguages$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Ljava/util/List;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->filteredLanguages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setItemWidth$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->itemWidth:I

    return-void
.end method

.method public static final synthetic access$setSearching$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->isSearching:Z

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getBottomShadow()Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->bottomShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCancelButton()Landroid/widget/TextView;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->cancelButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getCurrentItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->isSearching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->filteredLanguages:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSelectedList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final getLastSelectionList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    const-string v1, "lastSelectedLanguage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 168
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "-"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 169
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0
.end method

.method private final getListAdapter()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    return-object v0
.end method

.method private final getSearchView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->searchView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;

    return-object v0
.end method

.method private final getSelectedList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->languages:Ljava/util/List;

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    .line 164
    iget-object v4, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    invoke-virtual {v3}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->languages:Ljava/util/List;

    .line 817
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    .line 164
    iget-object v5, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    invoke-virtual {v4}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getTopShadow()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final initCancelButton()Landroid/widget/TextView;
    .locals 3

    .line 105
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const-string v1, "fonts/rmedium.ttf"

    .line 108
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "dialogBackground"

    .line 110
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "listSelectorSDK21"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "dialogTextBlue2"

    .line 112
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    new-instance v1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initCancelButton$lambda-3$lambda-2(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final initListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;
    .locals 3

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListAdapter()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;

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

    const-string v0, "dialogScrollGlow"

    .line 129
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    return-object v1
.end method

.method private final initSearchView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 102
    sget v0, Lorg/telegram/messenger/R$string;->translation_search_language:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SearchField;->setHint(Ljava/lang/String;)V

    return-object v2
.end method

.method private final initShadow(Z)Landroid/view/View;
    .locals 2

    .line 132
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v1, "dialogShadowLine"

    .line 133
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 296
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method private final isSelectedLanguagePosition(I)Z
    .locals 1

    .line 171
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    invoke-virtual {p1}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->selectedLangCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final runShadowAnimation(Z)V
    .locals 7

    .line 202
    iget-boolean v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->shadowShowed:Z

    if-eq v0, p1, :cond_3

    .line 203
    iput-boolean p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->shadowShowed:Z

    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 208
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 209
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p1, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 210
    new-instance v1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v1, p0, p1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$runShadowAnimation$1$1;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x96

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 227
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 228
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 208
    iput-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 194
    iput p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->scrollOffsetY:I

    .line 195
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 196
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSearchView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initSearchView$1;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 197
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    .line 139
    new-instance v1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$setupListeners$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$setupListeners$1$1;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 144
    new-instance v1, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda-7$lambda-6(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Landroid/view/View;I)V
    .locals 10

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getCurrentItemsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    invoke-virtual {p1}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->setSelectedLangCode(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSelectedLangCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 150
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    .line 151
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSelectedLangCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    const/4 p2, 0x0

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSelectedLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_0
    iget-object v1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->lastSelectLanguages:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, "-"

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setLastSelectedLanguage(Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListAdapter()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 159
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSelectLanguageDelegate()Lorg/fork/utils/Callbacks$Callback1;

    move-result-object p1

    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getSelectedLangCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 174
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->getListView()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-direct {p0, v1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->runShadowAnimation(Z)V

    .line 188
    :goto_0
    iget v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 189
    invoke-direct {p0, v1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->languages:Ljava/util/List;

    return-object v0
.end method

.method public final getSelectLanguageDelegate()Lorg/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->selectLanguageDelegate:Lorg/fork/utils/Callbacks$Callback1;

    return-object v0
.end method

.method public final getSelectedLangCode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->selectedLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setSelectedLangCode(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->selectedLangCode:Ljava/lang/String;

    return-void
.end method
