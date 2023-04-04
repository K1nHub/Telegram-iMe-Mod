.class public Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachRestrictedLayout.java"


# instance fields
.field private final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private gridExtraSpace:I

.field public final id:I

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;


# direct methods
.method public constructor <init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 33
    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 34
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->id:I

    .line 35
    new-instance p2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p4}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 36
    sget v1, Lorg/telegram/messenger/R$string;->NoPhotos:I

    const-string v2, "NoPhotos"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0x10

    .line 38
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 39
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget v1, Lorg/telegram/messenger/R$raw;->media_forbidden:I

    const/16 v2, 0x96

    invoke-virtual {p2, v1, v2, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    .line 42
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x7

    .line 44
    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getRestrictedErrorText(Lorg/telegram/tgnet/TLRPC$Chat;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/16 p1, 0x12

    .line 46
    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getRestrictedErrorText(Lorg/telegram/tgnet/TLRPC$Chat;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const/16 p1, 0x13

    .line 48
    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getRestrictedErrorText(Lorg/telegram/tgnet/TLRPC$Chat;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x16

    .line 50
    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getRestrictedErrorText(Lorg/telegram/tgnet/TLRPC$Chat;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 54
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x2

    .line 55
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 57
    new-instance p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 59
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 p3, 0x30

    .line 83
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p1, p2, p2, p2, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 84
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 90
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;)I
    .locals 0

    .line 24
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->gridExtraSpace:I

    return p0
.end method


# virtual methods
.method public getCurrentItemTop()I
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    if-ltz v0, :cond_2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 110
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0x32

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/16 v1, 0xc

    .line 112
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->getListTopPadding()I

    move-result v0

    const/4 v1, 0x4

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

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

.method public onPreMeasure(II)V
    .locals 3

    .line 136
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPreMeasure(II)V

    .line 137
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    sub-int p1, p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 138
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->gridExtraSpace:I

    if-eq v1, p1, :cond_0

    .line 139
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->gridExtraSpace:I

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 143
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v1, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 146
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/16 p2, 0x34

    .line 148
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    .line 152
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
