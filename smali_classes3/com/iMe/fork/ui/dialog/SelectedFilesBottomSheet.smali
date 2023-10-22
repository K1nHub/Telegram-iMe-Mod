.class public final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;,
        Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;,
        Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;,
        Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$RootView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectedFilesBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectedFilesBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectedFilesBottomSheet\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,660:1\n304#2,2:661\n1620#3,3:663\n36#4:666\n1#5:667\n*S KotlinDebug\n*F\n+ 1 SelectedFilesBottomSheet.kt\ncom/iMe/fork/ui/dialog/SelectedFilesBottomSheet\n*L\n190#1:661,2\n194#1:663,3\n278#1:666\n*E\n"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final bottomShadow$delegate:Lkotlin/Lazy;

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreLayout:Z

.field private itemWidth:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final onFilesChangedAction:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final saveButton$delegate:Lkotlin/Lazy;

.field private scrollOffsetY:I

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private shadowShowed:Z

.field private final titleTextView$delegate:Lkotlin/Lazy;

.field private final topShadow$delegate:Lkotlin/Lazy;

.field private final uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$K-dPFjhoyUJCaiyTZU60Ue3Cwjk(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->setupListeners$lambda$8$lambda$7(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMgnFAbJgEP-tl-GF-NLdnaSdfE(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->openFile$lambda$16$lambda$13$lambda$12(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$POWEi4dDmFT02M94eI1wjMMlWdc(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->openFile$lambda$16(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XR2jF7Mb0uMezJawC_hAKcP2qt4(Ljava/io/File;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->openFile$lambda$16$lambda$15$lambda$14(Ljava/io/File;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uris"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFilesChangedAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 60
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->activity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->uris:Ljava/util/List;

    .line 62
    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->onFilesChangedAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 66
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$titleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$titleTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    .line 67
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$topShadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$topShadow$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    .line 68
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 69
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$bottomShadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$bottomShadow$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->bottomShadow$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$saveButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$saveButton$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->saveButton$delegate:Lkotlin/Lazy;

    .line 71
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->files:Ljava/util/List;

    .line 80
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$RootView;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$RootView;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/4 v0, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x36

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 84
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, -0x1

    const/16 v0, 0x38

    const/16 v1, 0x30

    .line 96
    invoke-static {p3, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object p2

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v6, 0x36

    const/4 v7, 0x0

    const/16 v8, 0x30

    .line 100
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 98
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getBottomShadow()Landroid/view/View;

    move-result-object p2

    .line 114
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    const/16 v4, 0x50

    const/4 v6, 0x0

    .line 112
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x50

    .line 124
    invoke-static {p3, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 122
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 131
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->setupListeners()V

    .line 132
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->mapUrisToUi()V

    .line 134
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object p1

    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;)V

    const-wide/16 v0, 0x96

    .line 133
    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s652855256(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)I
    .locals 0

    .line 59
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s652855256(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)I
    .locals 0

    .line 59
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getFiles$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->files:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->itemWidth:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s652855256(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getThemedColor(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)I
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTopShadow(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/view/View;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->initListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSaveButton(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->initSaveButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Z)Landroid/view/View;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->initShadow(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->itemWidth:I

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getBottomShadow()Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->bottomShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    return-object v0
.end method

.method private final getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    return-object v0
.end method

.method private final getSaveButton()Landroid/widget/TextView;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->saveButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTopShadow()Landroid/view/View;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->topShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final initListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 181
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 183
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v0, 0x1

    .line 184
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 185
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    return-object v1
.end method

.method private final initSaveButton()Landroid/widget/TextView;
    .locals 3

    .line 159
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const-string v1, "fonts/rmedium.ttf"

    .line 162
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    .line 166
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    .line 164
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    const-string v2, "Save"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private final initShadow(Z)Landroid/view/View;
    .locals 2

    .line 188
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 189
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 304
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 147
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/16 v1, 0x17

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 150
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x10

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 152
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    sget v1, Lorg/telegram/messenger/R$string;->multiple_files_sending_selected:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-object v0
.end method

.method private final mapUrisToUi()V
    .locals 9

    .line 194
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->uris:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->files:Ljava/util/List;

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Landroid/net/Uri;

    .line 195
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    .line 202
    new-instance v3, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    const-string v4, ""

    invoke-direct {v3, v2, v4, v4}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string v4, "ApplicationLoader.applic\u2026_STRING\n                )"

    .line 195
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 209
    new-instance v4, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    const-string v5, "_display_name"

    .line 211
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(getColumnIndex\u2026bleColumns.DISPLAY_NAME))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "_size"

    .line 213
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(getColumnIndex(OpenableColumns.SIZE))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    .line 212
    :goto_1
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "formatFileSize(\n        \u2026 0L\n                    )"

    .line 213
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {v4, v2, v5, v6}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .line 1621
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final openFile(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;)V
    .locals 2

    .line 250
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final openFile$lambda$16(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 6

    const-string v0, "$fileItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 251
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 253
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 256
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "ApplicationLoader.applic\u2026    ?: return@runCatching"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 260
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 261
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v5, 0x0

    .line 262
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 263
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 268
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 254
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 269
    new-instance v3, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 273
    :cond_4
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v0, Lkotlin/Unit;

    .line 274
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;-><init>(Ljava/io/File;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private static final openFile$lambda$16$lambda$13$lambda$12(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 271
    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ThrowableExtKt;->showToast(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final openFile$lambda$16$lambda$15$lambda$14(Ljava/io/File;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 2

    const-string v0, "$file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fileItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fromFile(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p2, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->activity:Landroid/app/Activity;

    .line 280
    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 275
    invoke-static {p0, p1, v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    return-void
.end method

.method private final runShadowAnimation(Z)V
    .locals 7

    .line 316
    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->shadowShowed:Z

    if-eq v0, p1, :cond_3

    .line 317
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->shadowShowed:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 322
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v0, [Landroid/animation/Animator;

    .line 325
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v4

    .line 326
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    if-eqz p1, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    aput v6, v0, v1

    .line 324
    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    .line 323
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 330
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$runShadowAnimation$1$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Z)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 346
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 347
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 322
    iput-object v2, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 308
    iput p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->scrollOffsetY:I

    .line 309
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 310
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 311
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final setupListeners()V
    .locals 8

    .line 223
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 229
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 233
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->setOnItemDeleteClick(Lkotlin/jvm/functions/Function1;)V

    .line 243
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;

    invoke-direct {v5, p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$3;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/view/View;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->files:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->openFile(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;)V

    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 288
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 293
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 298
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 300
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->runShadowAnimation(Z)V

    .line 302
    :goto_0
    iget v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 303
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getOnFilesChangedAction()Lcom/iMe/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->onFilesChangedAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-object v0
.end method
