.class public final Lorg/fork/ui/dialog/ForwardCloudBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;,
        Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;,
        Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;,
        Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Companion;
    }
.end annotation


# instance fields
.field private final forwardCloudDelegate:Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

.field private ignoreLayout:Z

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private scrollOffsetY:I

.field private final shadow$delegate:Lkotlin/Lazy;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private final titleTextView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9qUoEtAUqHeu9xsfLchsiQ5qOJQ(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->initListView$lambda-5$lambda-4$lambda-3(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$D3kOnMEmj4LhUVhwoJi2A89fCSQ(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->initListView$lambda-5$lambda-4(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V
    .locals 7

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forwardCloudDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 40
    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 41
    iput-object p2, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->forwardCloudDelegate:Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    .line 45
    new-instance p1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$titleTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$titleTextView$2;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$shadow$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$shadow$2;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->shadow$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$listView$2;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 54
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v1, v0, p2}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 56
    new-instance p1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V

    .line 57
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x1

    const/16 v1, 0x32

    const/4 v4, 0x0

    const/16 v5, 0x28

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getCurrentAccount$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListAdapter()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getShadow(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/view/View;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s23216452(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->initListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/view/View;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->initShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getListAdapter()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    return-object v0
.end method

.method private final getShadow()Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->shadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 4

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V

    const/16 v0, 0xe

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 100
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListAdapter()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 103
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/16 v2, 0xa

    .line 104
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v0, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const-string v0, "dialogScrollGlow"

    .line 105
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 106
    new-instance v0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;

    invoke-direct {v0, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 111
    new-instance v0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v1
.end method

.method private static final initListView$lambda-5$lambda-4(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/view/View;I)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListAdapter()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->getAlbumId(I)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    new-instance p2, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p2}, Lorg/telegram/ui/ChannelCreateActivity;->newInstanceInAlbumMode(Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChannelCreateActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 117
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getForwardCloudDelegate()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->onAlbumCreatorOpened()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getForwardCloudDelegate()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static final initListView$lambda-5$lambda-4$lambda-3(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getForwardCloudDelegate()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    return-void
.end method

.method private final initShadow()Landroid/view/View;
    .locals 2

    .line 84
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v1, "dialogShadowLine"

    .line 88
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 4

    .line 71
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 73
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const-string v1, "dialogLinkSelection"

    .line 74
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 75
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x10

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    sget v1, Lorg/telegram/messenger/R$string;->cloud_albums_bottom_sheet_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "dialogTextBlack"

    .line 78
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "dialogTextLink"

    .line 80
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v1, 0x12

    .line 81
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private final runShadowAnimation(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 155
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 157
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 159
    :cond_3
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 160
    :goto_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x96

    .line 161
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    .line 162
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p1, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 163
    new-instance v1, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v1, p0, p1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;-><init>(Lorg/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 180
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 160
    iput-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_6
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 126
    iput p1, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->scrollOffsetY:I

    .line 127
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 128
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 129
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 134
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 139
    invoke-direct {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 144
    invoke-direct {p0, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->runShadowAnimation(Z)V

    .line 148
    :goto_0
    iget v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 149
    invoke-direct {p0, v1}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getForwardCloudDelegate()Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->forwardCloudDelegate:Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    return-object v0
.end method

.method public final getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method
