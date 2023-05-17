.class public final Lcom/iMe/ui/topics/TopicsAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;,
        Lcom/iMe/ui/topics/TopicsAlert$RootView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicsAlert.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsAlert.kt\ncom/iMe/ui/topics/TopicsAlert\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n304#2,2:410\n1855#3,2:412\n*S KotlinDebug\n*F\n+ 1 TopicsAlert.kt\ncom/iMe/ui/topics/TopicsAlert\n*L\n102#1:410,2\n195#1:412,2\n*E\n"
.end annotation


# instance fields
.field private final bottomShadow$delegate:Lkotlin/Lazy;

.field private final callback:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field

.field private final createTopicButton$delegate:Lkotlin/Lazy;

.field private final deleteOrCloseButton$delegate:Lkotlin/Lazy;

.field private final dialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreLayout:Z

.field private itemWidth:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private scrollOffsetY:I

.field private final selectTopicTitleTextView$delegate:Lkotlin/Lazy;

.field private selectedTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private shadowShowed:Z

.field private final topShadow$delegate:Lkotlin/Lazy;

.field private final topics$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$5taDFdwUX7iGf6XBmHcqsGs-9QU(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/topics/TopicsAlert;->setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQxjTFLz90yCFnF44WegUnpv3hw(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/topics/TopicsAlert;->initBottomButton$lambda$9$lambda$7(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jq_JSIrOVD8ZHTjDgQaiAOlwV-8(Lcom/iMe/ui/topics/TopicsAlert;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/topics/TopicsAlert;->initBottomButton$lambda$9$lambda$6$lambda$5$lambda$4(Lcom/iMe/ui/topics/TopicsAlert;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJkWOwCQyS3iTKi1CSTSpkTrs_U(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/topics/TopicsAlert;->initBottomButton$lambda$9$lambda$6(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$riZHx5zFIgYa64y4h6bGRbIY2CI(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/topics/TopicsAlert;->initBottomButton$lambda$9$lambda$8(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 55
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 56
    iput-object p2, p0, Lcom/iMe/ui/topics/TopicsAlert;->dialogIds:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/iMe/ui/topics/TopicsAlert;->callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 61
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$topics$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$topics$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->topics$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$topShadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$topShadow$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->topShadow$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$listView$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->listView$delegate:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$listAdapter$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->listAdapter$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$bottomShadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$bottomShadow$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->bottomShadow$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$selectTopicTitleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$selectTopicTitleTextView$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectTopicTitleTextView$delegate:Lkotlin/Lazy;

    .line 67
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$deleteOrCloseButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$deleteOrCloseButton$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->deleteOrCloseButton$delegate:Lkotlin/Lazy;

    .line 68
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$createTopicButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$createTopicButton$2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->createTopicButton$delegate:Lkotlin/Lazy;

    .line 77
    invoke-static {p2}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    sget-object p1, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p1, p3}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectedTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 80
    :cond_0
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$RootView;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$RootView;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 82
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopShadow()Landroid/view/View;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object p2

    const/4 v1, -0x1

    const/16 v6, 0x30

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getBottomShadow()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/16 v2, 0x50

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getSelectTopicTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, -0x1

    const/16 v0, 0x32

    const/16 v1, 0x30

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getDeleteOrCloseButton()Landroid/widget/TextView;

    move-result-object p2

    const/16 p3, 0x53

    const/4 v0, -0x2

    invoke-static {v0, v1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getCreateTopicButton()Landroid/widget/TextView;

    move-result-object p2

    const/16 p3, 0x55

    invoke-static {v0, v1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getItemWidth$p(Lcom/iMe/ui/topics/TopicsAlert;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->itemWidth:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListAdapter()Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/ui/topics/TopicsAlert$initListView$1;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lcom/iMe/ui/topics/TopicsAlert;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getSelectedTopic$p(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectedTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getThemedColor(Lcom/iMe/ui/topics/TopicsAlert;I)I
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTopShadow(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTopics(Lcom/iMe/ui/topics/TopicsAlert;)Ljava/util/List;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initBottomButton(Lcom/iMe/ui/topics/TopicsAlert;Z)Landroid/widget/TextView;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/iMe/ui/topics/TopicsAlert;->initBottomButton(Z)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/ui/topics/TopicsAlert$initListView$1;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->initListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSelectTopicTitleTextView(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/widget/TextView;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->initSelectTopicTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lcom/iMe/ui/topics/TopicsAlert;Z)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/iMe/ui/topics/TopicsAlert;->initShadow(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setItemWidth$p(Lcom/iMe/ui/topics/TopicsAlert;I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->itemWidth:I

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lcom/iMe/ui/topics/TopicsAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/iMe/ui/topics/TopicsAlert;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->updateLayout()V

    return-void
.end method

.method private final getBottomShadow()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->bottomShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCreateTopicButton()Landroid/widget/TextView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->createTopicButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getDeleteOrCloseButton()Landroid/widget/TextView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->deleteOrCloseButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    return-object v0
.end method

.method private final getSelectTopicTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectTopicTitleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTopShadow()Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->topShadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->topics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final initBottomButton(Z)Landroid/widget/TextView;
    .locals 3

    .line 143
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/16 v1, 0x12

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/16 v2, 0x11

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p1, :cond_0

    .line 151
    sget p1, Lorg/telegram/messenger/R$string;->Create:I

    const-string v1, "Create"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectedTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-nez p1, :cond_1

    .line 164
    sget p1, Lorg/telegram/messenger/R$string;->Close:I

    const-string v1, "Close"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 172
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    new-instance p1, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method private static final initBottomButton$lambda$9$lambda$6(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 155
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity;

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert;->dialogIds:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    .line 156
    new-instance v1, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/FilterCreateActivity;->setDoneCallback(Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    .line 155
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final initBottomButton$lambda$9$lambda$6$lambda$5$lambda$4(Lcom/iMe/ui/topics/TopicsAlert;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final initBottomButton$lambda$9$lambda$7(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static final initBottomButton$lambda$9$lambda$8(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 176
    sget-object p1, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->dialogIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(J)V

    .line 177
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectedTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-interface {p1, v0, p0}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final initListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;
    .locals 4

    .line 106
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/ui/topics/TopicsAlert$initListView$1;-><init>(Lcom/iMe/ui/topics/TopicsAlert;Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 115
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListAdapter()Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 118
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v0, 0x1

    .line 119
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 120
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 121
    new-instance v0, Lcom/iMe/ui/topics/TopicsAlert$initListView$2$1;

    invoke-direct {v0}, Lcom/iMe/ui/topics/TopicsAlert$initListView$2$1;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object v1
.end method

.method private final initSelectTopicTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 131
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/16 v1, 0x12

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 134
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x10

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 136
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    sget v1, Lorg/telegram/messenger/R$string;->topics_select:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-object v0
.end method

.method private final initShadow(Z)Landroid/view/View;
    .locals 2

    .line 101
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 304
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final runShadowAnimation(Z)V
    .locals 7

    .line 233
    iget-boolean v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->shadowShowed:Z

    if-eq v0, p1, :cond_3

    .line 234
    iput-boolean p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->shadowShowed:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopShadow()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 239
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v0, [Landroid/animation/Animator;

    .line 240
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopShadow()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    if-eqz p1, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    aput v6, v0, v1

    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    new-instance v0, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/topics/TopicsAlert$runShadowAnimation$1$1;-><init>(Lcom/iMe/ui/topics/TopicsAlert;Z)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 257
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 258
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 239
    iput-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 225
    iput p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->scrollOffsetY:I

    .line 226
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 227
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getSelectTopicTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/iMe/ui/topics/TopicsAlert$setupListeners$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/topics/TopicsAlert$setupListeners$1$1;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 190
    new-instance v1, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/iMe/ui/topics/TopicsAlert$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/topics/TopicsAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/topics/TopicsAlert;Landroid/view/View;I)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert;->selectedTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 195
    iget-object p2, p0, Lcom/iMe/ui/topics/TopicsAlert;->dialogIds:Ljava/util/List;

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 196
    sget-object v2, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v2, v3}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->addTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 199
    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsAlert;->callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz p0, :cond_3

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p2, p1}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 205
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/topics/TopicsAlert;->setScrollOffsetY(I)V

    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsAlert;->getListView()Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 215
    invoke-direct {p0, v1}, Lcom/iMe/ui/topics/TopicsAlert;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 217
    invoke-direct {p0, v0}, Lcom/iMe/ui/topics/TopicsAlert;->runShadowAnimation(Z)V

    .line 219
    :goto_0
    iget v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 220
    invoke-direct {p0, v1}, Lcom/iMe/ui/topics/TopicsAlert;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method
