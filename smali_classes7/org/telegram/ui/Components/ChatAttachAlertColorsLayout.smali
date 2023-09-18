.class public Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertColorsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

.field public gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private itemSize:I

.field private itemsPerRow:I

.field layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field wallpaperConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p1, 0x50

    .line 27
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    .line 37
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$1;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 60
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 62
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 65
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 66
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p3, -0x1

    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 94
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$3;

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 119
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)I
    .locals 0

    .line 24
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)I
    .locals 0

    .line 24
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    return p0
.end method


# virtual methods
.method public getCurrentItemTop()I
    .locals 4

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    const v0, 0x7fffffff

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x7

    .line 161
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 162
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-lt v0, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 165
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->getListTopPadding()I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getKoin(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getMvpDelegate(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreMeasure(II)V
    .locals 6

    .line 184
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 185
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v2, v0, :cond_1

    .line 187
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 189
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    .line 191
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xc

    .line 194
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    div-int/2addr p1, v0

    .line 195
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    if-eq v0, p1, :cond_2

    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    mul-int/2addr v1, p1

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/2addr p1, v0

    sub-int/2addr v0, v5

    .line 201
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    sub-int p1, p2, p1

    .line 202
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 204
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v1, p1, :cond_3

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    .line 207
    :cond_3
    div-int/2addr p2, v2

    mul-int/lit8 p1, p2, 0x2

    :goto_1
    const/16 p2, 0x34

    .line 209
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, p1

    .line 213
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 2

    .line 283
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->SelectColor:I

    const-string v1, "SelectColor"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->wallpaperConsumer:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateColors(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/WallpapersListActivity;->fillDefaultColors(Ljava/util/ArrayList;Z)V

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
