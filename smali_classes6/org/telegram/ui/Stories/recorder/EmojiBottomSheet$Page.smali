.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;
.super Landroid/widget/FrameLayout;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;
    }
.end annotation


# instance fields
.field public adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

.field public currentType:I

.field public layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

.field private lockTop:F

.field private resetOnce:Z

.field public searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

.field public spanCount:I

.field public tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$ZFkEO6HSvnzmC0fTGdw6T7gR0RY(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lambda$new$1(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adySSdjYpCNjyPmbauTcIhE8fO4(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 13

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 132
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 127
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->spanCount:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 264
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->resetOnce:Z

    .line 134
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    .line 135
    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->spanCount:I

    invoke-direct {v2, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 212
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x0

    .line 213
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    const-wide/16 v1, 0xdc

    .line 214
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 215
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v1, 0xa0

    .line 216
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 217
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    .line 222
    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->setOnSearchQuery(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/4 v2, -0x2

    const/16 v3, 0x30

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZILjava/lang/Runnable;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 p1, 0x24

    .line 261
    invoke-static {v1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)F
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;F)F
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    return p1
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->resetOnce:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 6

    if-gez p2, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$2600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$2600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 153
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$2700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    if-lt p2, v1, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$2700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    if-nez v0, :cond_3

    .line 154
    instance-of p2, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_3

    .line 155
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_4

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result p1

    invoke-static {p1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    return-void

    .line 163
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 166
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1702(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1402(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I

    .line 225
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public atTop()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bind(I)V
    .locals 5

    .line 306
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x5

    if-nez p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->spanCount:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 308
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->resetOnce:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->ignoreTextChange:Z

    .line 313
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->ignoreTextChange:Z

    .line 315
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(I)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToSelected()V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1502(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$1600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 330
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$1000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    .line 333
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    return-void
.end method

.method public lockTop()F
    .locals 2

    .line 280
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->top()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/16 v1, 0x34

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x66

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 300
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public top()F
    .locals 6

    .line 266
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 269
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 272
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 273
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    const/16 v2, 0x66

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public updateTops()V
    .locals 4

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->top()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/16 v2, 0x34

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->setBounds(FF)V

    return-void
.end method
