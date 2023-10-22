.class public final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;,
        Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;,
        Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
    }
.end annotation


# instance fields
.field private final forwardCloudDelegate:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

.field private ignoreLayout:Z

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private scrollOffsetY:I

.field private final shadow$delegate:Lkotlin/Lazy;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private final titleTextView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8TN-0AE2tum-c4xJXC3BdnSLpzE(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->initListView$lambda$5$lambda$4(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xhiQPHvvrhZQnEVN7qyfGQYQS2k(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->initListView$lambda$5$lambda$4$lambda$3(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V
    .locals 7

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forwardCloudDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 49
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 50
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->forwardCloudDelegate:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    .line 54
    new-instance p1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$titleTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$titleTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$shadow$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$shadow$2;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->shadow$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 63
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v0, 0x64

    .line 64
    invoke-virtual {p1, p2, v1, v0, p2}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 66
    new-instance p1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object p2

    .line 71
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 69
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 81
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, -0x1

    const/16 v1, 0x32

    const/4 v4, 0x0

    const/16 v5, 0x28

    .line 93
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 91
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getCurrentAccount$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getShadow(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/view/View;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->initListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadow(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/view/View;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->initShadow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setShadowAnimation$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    return-object v0
.end method

.method private final getShadow()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->shadow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;
    .locals 4

    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V

    const/16 v0, 0xe

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 135
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/16 v2, 0xa

    .line 139
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v0, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 140
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 141
    new-instance v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$2$1;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 146
    new-instance v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v1
.end method

.method private static final initListView$lambda$5$lambda$4(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/view/View;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->getAlbumId(I)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    invoke-static {p2}, Lorg/telegram/ui/ChannelCreateActivity;->newInstanceInAlbumMode(Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChannelCreateActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 152
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->forwardCloudDelegate:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    invoke-interface {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->onAlbumCreatorOpened()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->forwardCloudDelegate:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    .line 156
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static final initListView$lambda$5$lambda$4$lambda$3(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->forwardCloudDelegate:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;

    invoke-interface {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    return-void
.end method

.method private final initShadow()Landroid/view/View;
    .locals 4

    .line 119
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 4

    .line 106
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 108
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 109
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLinkSelection:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 110
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x10

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    sget v1, Lorg/telegram/messenger/R$string;->cloud_albums_bottom_sheet_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v1, 0x12

    .line 116
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

    .line 189
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

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

    .line 192
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 195
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    .line 196
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    .line 197
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    aput v6, v2, v0

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 198
    new-instance v0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$runShadowAnimation$1$1;-><init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 195
    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_6
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 1

    .line 161
    iput p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->scrollOffsetY:I

    .line 162
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 164
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->runShadowAnimation(Z)V

    .line 183
    :goto_0
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 184
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
