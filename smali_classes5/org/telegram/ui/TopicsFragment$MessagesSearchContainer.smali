.class Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "TopicsFragment.java"

# interfaces
.implements Lorg/telegram/ui/FilteredSearchView$UiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesSearchContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;,
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;,
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;
    }
.end annotation


# instance fields
.field canLoadMore:Z

.field chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

.field emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field isLoading:Z

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private keyboardSize:I

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field messagesEndRow:I

.field messagesHeaderRow:I

.field messagesIsLoading:Z

.field messagesStartRow:I

.field recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field rowCount:I

.field searchAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

.field searchContainer:Landroid/widget/FrameLayout;

.field searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field searchResultTopics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;"
        }
    .end annotation
.end field

.field searchRunnable:Ljava/lang/Runnable;

.field searchString:Ljava/lang/String;

.field private selectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field topicsEndRow:I

.field topicsHeaderRow:I

.field topicsStartRow:I

.field private viewPagerAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$HhnH17oMQ_AbCr9IG0B49CjSzjo(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$loadMessages$3(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VgEfVEo-UyiC3IEasPNcyYN9Jx8(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$searchMessages$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdcvuqUHvP6zGL_P6K2Z3oD4OAs(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$loadMessages$2(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEwkYpxoT-SaKhWYhgsuDL8jaZc(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 3

    .line 3197
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    .line 3198
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    const-string v0, "empty"

    .line 3171
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    .line 3173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    .line 3174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    .line 3396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    .line 3200
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    .line 3201
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$1;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    .line 3222
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 3223
    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment$1;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3224
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3225
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 3234
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$2;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3251
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v0, 0x7

    .line 3252
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 3253
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 3254
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 3256
    new-instance p1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 3257
    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v2, "NoResult"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3258
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3259
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 3260
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 3261
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 3263
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 3264
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 3265
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3266
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3267
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3269
    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 3270
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V

    .line 3272
    new-instance p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->viewPagerAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-void
.end method

.method static synthetic access$7700(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V
    .locals 0

    .line 3163
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->loadMessages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Landroid/view/View;ILjava/lang/String;Z)V
    .locals 0

    .line 3163
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$loadMessages$2(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    .line 3544
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3545
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    const/4 v1, 0x0

    .line 3546
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    .line 3547
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3548
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 3549
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move v2, v1

    .line 3551
    :goto_0
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3552
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3553
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$8900(Lorg/telegram/ui/TopicsFragment;)I

    move-result v6

    invoke-direct {v5, v6, v4, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 3554
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 3555
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3557
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3558
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    if-ge p1, v2, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->canLoadMore:Z

    goto :goto_1

    .line 3560
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->canLoadMore:Z

    .line 3563
    :goto_1
    iget p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    if-nez p1, :cond_3

    .line 3564
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 3566
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadMessages$3(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3543
    new-instance p3, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 3

    .line 3226
    instance-of p2, p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    if-eqz p2, :cond_0

    .line 3227
    check-cast p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    .line 3228
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v0, p2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TopicSearchCell;->getTopic()Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, p1, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    goto :goto_0

    .line 3229
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz p2, :cond_1

    .line 3230
    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 3231
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v0, p2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget-object v2, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getMessageId()I

    move-result p1

    invoke-static {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$searchMessages$1(Ljava/lang/String;)V
    .locals 5

    .line 3488
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3490
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3491
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3492
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3493
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3497
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3498
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3499
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3501
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3502
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3504
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 3507
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->loadMessages(Ljava/lang/String;)V

    return-void
.end method

.method private loadMessages(Ljava/lang/String;)V
    .locals 4

    .line 3520
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 3523
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 3524
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3525
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    const/16 v1, 0x14

    .line 3526
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 3527
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 3528
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3529
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 3531
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    .line 3543
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$8700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private search(Landroid/view/View;ILjava/lang/String;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v10, p3

    .line 3442
    iput-object v10, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    .line 3443
    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_0

    .line 3444
    invoke-direct {p0, v10}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchMessages(Ljava/lang/String;)V

    goto :goto_0

    .line 3445
    :cond_0
    instance-of v2, v1, Lorg/telegram/ui/FilteredSearchView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3446
    check-cast v1, Lorg/telegram/ui/FilteredSearchView;

    iget v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->keyboardSize:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    .line 3447
    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->viewPagerAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    move v3, p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    .line 3448
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v3, v3, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v3, v3

    sget-object v5, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v2, v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    aget-object v8, v5, v2

    const-wide/16 v5, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v11

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 3449
    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v2, :cond_2

    .line 3450
    check-cast v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->keyboardSize:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setKeyboardHeight(IZ)V

    .line 3451
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->search(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private searchMessages(Ljava/lang/String;)V
    .locals 3

    .line 3456
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3457
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3458
    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 3463
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    .line 3464
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->canLoadMore:Z

    .line 3465
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3466
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3467
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3469
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3470
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3471
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 3472
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_1

    .line 3473
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3477
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    return-void

    .line 3481
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    const/4 v0, 0x1

    .line 3484
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3485
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 3487
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 3509
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, -0x1

    .line 3572
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsHeaderRow:I

    .line 3573
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsStartRow:I

    .line 3574
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsEndRow:I

    .line 3575
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesHeaderRow:I

    .line 3576
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesStartRow:I

    .line 3577
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesEndRow:I

    const/4 v0, 0x0

    .line 3579
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    .line 3581
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3582
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsHeaderRow:I

    .line 3583
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsStartRow:I

    .line 3584
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    .line 3585
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsEndRow:I

    .line 3588
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3589
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesHeaderRow:I

    .line 3590
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesStartRow:I

    .line 3591
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    .line 3592
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesEndRow:I

    .line 3595
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public actionModeShowing()Z
    .locals 1

    .line 3400
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$8400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    return v0
.end method

.method public goToMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 3377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3378
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 3379
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3380
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "enc_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3381
    :cond_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "user_id"

    .line 3382
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 3384
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$8300(Lorg/telegram/ui/TopicsFragment;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3385
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_2

    const-string v4, "migrated_to"

    .line 3386
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3387
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    :cond_2
    neg-long v1, v1

    const-string v3, "chat_id"

    .line 3389
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3391
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3392
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3418
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3419
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 3420
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v4, p1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->messageId:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->dialogId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 3

    .line 3513
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3516
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v2

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public showActionMode()V
    .locals 1

    .line 3429
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$8600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    return-void
.end method

.method public toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V
    .locals 0

    .line 3405
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3406
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3409
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$8500(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :cond_1
    return-void
.end method
