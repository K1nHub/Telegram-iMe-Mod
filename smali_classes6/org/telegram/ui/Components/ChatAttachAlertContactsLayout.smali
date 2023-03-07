.class public Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertContactsLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;,
        Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private ignoreLayout:Z

.field private layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

.field private searchField:Lorg/telegram/ui/Components/SearchField;

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$GuDBNlqL9e-OGRP2wgdQmtjZWTk(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_dzE84aA5Hs_HMdzqrm_eKPaAKo(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sH6JAkCaTUdJUCOTKbtt-LI9Ll8(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->lambda$getThemeDescriptions$2()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 283
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

    .line 285
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->frameLayout:Landroid/widget/FrameLayout;

    const-string v0, "dialogBackground"

    .line 286
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 288
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    .line 331
    sget v1, Lorg/telegram/messenger/R$string;->SearchFriends:I

    const-string v2, "SearchFriends"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SearchField;->setHint(Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance p1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, p3}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 335
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v1, Lorg/telegram/messenger/R$string;->NoContacts:I

    const-string v4, "NoContacts"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/16 v8, 0x34

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$2;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 345
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$3;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v4, 0x9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setBind(Z)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v0, "dialogScrollGlow"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 423
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result p3

    invoke-direct {p1, v2, p3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 p3, 0x3a

    .line 424
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 425
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    const-string p2, "dialogShadowLine"

    .line 426
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 428
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 429
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v2, p3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 434
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->getCurrentTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->updateEmptyView()V

    return-void
.end method

.method private getCurrentTop()I
    .locals 4

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 548
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_1

    .line 550
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    sub-int/2addr v3, v1

    return v3

    :cond_1
    const/16 v0, -0x3e8

    return v0
.end method

.method private synthetic lambda$getThemeDescriptions$2()V
    .locals 5

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 976
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 977
    instance-of v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    if-eqz v4, :cond_0

    .line 978
    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 374
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

    if-ne v2, v3, :cond_0

    .line 375
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 377
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 378
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    if-ltz v1, :cond_4

    if-gez v2, :cond_1

    goto :goto_3

    .line 382
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 389
    instance-of v2, v1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_3

    .line 390
    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 391
    iget-object v2, v1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    .line 392
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 393
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_1

    .line 395
    :cond_2
    iget-object v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 396
    iget-object v2, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    :goto_1
    move-object v9, v1

    move-object v14, v2

    move-object v13, v3

    goto :goto_2

    .line 399
    :cond_3
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 400
    new-instance v2, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v2}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 401
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 402
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 403
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iput-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object v9, v2

    move-object v13, v3

    move-object v14, v4

    .line 407
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/PhonebookShareAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    move-object/from16 v15, p1

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 408
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhonebookShareAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V

    .line 412
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_4
    :goto_3
    return-void
.end method

.method private runShadowAnimation(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 513
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    .line 518
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 520
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    .line 521
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p1, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    aput v6, v1, v0

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 600
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 601
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 595
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 562
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p2, :cond_0

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCurrentItemTop()I
    .locals 4

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v2, :cond_2

    .line 453
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    .line 455
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->runShadowAnimation(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 457
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->runShadowAnimation(Z)V

    move v0, v3

    .line 459
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->frameLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/16 v1, 0xc

    .line 460
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->getListTopPadding()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 972
    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V

    .line 984
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 986
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->frameLayout:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "dialogBackground"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->shadow:Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "dialogShadowLine"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SearchField;->getSearchBackground()Landroid/view/View;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v8, 0x0

    const-string v9, "dialogSearchBackground"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/SearchField;

    const/16 v21, 0x0

    aput-object v2, v15, v21

    const-string v2, "searchIconImageView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v20, "dialogSearchIcon"

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/SearchField;

    aput-object v4, v3, v21

    const-string v4, "clearSearchImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "dialogSearchIcon"

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SearchField;->getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v13

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v19, "dialogSearchText"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SearchField;->getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v23

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v29, "dialogSearchHint"

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SearchField;->getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v13

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const-string v19, "featuredStickers_addedIcon"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v29, "emptyListPlaceholder"

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v19, "progressCircle"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v29, "dialogScrollGlow"

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v19, "listSelectorSDK21"

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v21

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const-string v29, "divider"

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v9, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    aput-object v2, v15, v21

    const-string v2, "nameTextView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-string v20, "dialogTextGray2"

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v9, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    aput-object v1, v4, v21

    const-string v1, "statusTextView"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const-string v13, "dialogTextGray2"

    move-object v1, v12

    move-object v8, v10

    const/4 v14, 0x1

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v14, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    aput-object v4, v3, v21

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v26, 0x0

    const-string v29, "avatar_text"

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, "avatar_backgroundRed"

    move-object v1, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v8, "avatar_backgroundOrange"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v8, "avatar_backgroundViolet"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v8, "avatar_backgroundGreen"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v8, "avatar_backgroundCyan"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v8, "avatar_backgroundBlue"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v8, "avatar_backgroundPink"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v11
.end method

.method public onDestroy()V
    .locals 2

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 583
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 584
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    const/16 p1, 0x8

    .line 486
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 487
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_1

    .line 489
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 492
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p2, p2, 0x2

    move p1, p2

    .line 494
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 496
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 497
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->ignoreLayout:Z

    .line 498
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v2, p1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 499
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->ignoreLayout:Z

    :cond_2
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 505
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 471
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
