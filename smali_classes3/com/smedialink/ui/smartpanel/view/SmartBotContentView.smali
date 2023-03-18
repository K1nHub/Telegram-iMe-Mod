.class public final Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;
.super Landroid/widget/FrameLayout;
.source "SmartBotContentView.kt"

# interfaces
.implements Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;,
        Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartBotContentView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartBotContentView.kt\ncom/smedialink/ui/smartpanel/view/SmartBotContentView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n1#2:229\n*E\n"
.end annotation


# instance fields
.field private final content:Lcom/smedialink/ui/smartpanel/model/SmartBotTab;

.field private currentBotResponseType:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;

.field private final gifContextProvider:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

.field private final listViewLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private final textEmptyGif:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Xd1DGVUa2v4ZYiKVaMr9TYVFFcA(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->_init_$lambda$1(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smedialink/ui/smartpanel/model/SmartBotTab;Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;J)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentBotResponseType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->content:Lcom/smedialink/ui/smartpanel/model/SmartBotTab;

    .line 29
    iput-object p3, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->currentBotResponseType:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 38
    new-instance p3, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-direct {p3, p5, p6, p0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;-><init>(JLcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;)V

    iput-object p3, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    .line 39
    new-instance p5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p5, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 40
    new-instance p6, Landroid/widget/TextView;

    invoke-direct {p6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->textEmptyGif:Landroid/widget/TextView;

    .line 41
    new-instance v0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;-><init>(Landroid/content/Context;Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)V

    iput-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    .line 97
    new-instance v1, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;

    invoke-direct {v1, p0, p4}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;-><init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;)V

    iput-object v1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->gifContextProvider:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 138
    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->currentBotResponseType:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-virtual {p3, p2, v1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->setTextData(Lcom/smedialink/ui/smartpanel/model/SmartBotTab;Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V

    .line 139
    sget p2, Lorg/telegram/messenger/R$string;->chat_send_panel_neurobot_not_have_gifs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget p2, Lorg/telegram/messenger/R$color;->gray_message:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 141
    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x8

    .line 142
    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 144
    invoke-virtual {p5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    new-instance p1, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$1;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$1;-><init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)V

    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 162
    new-instance p1, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;)V

    invoke-virtual {p5, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 173
    new-instance p1, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;-><init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)V

    invoke-virtual {p5, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 184
    new-instance p1, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;-><init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    const/4 p1, -0x2

    const/16 p2, 0x11

    .line 194
    invoke-static {p1, p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 195
    invoke-static {p1, p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;Landroid/view/View;I)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-virtual {p2}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getMediaContentOffset()I

    move-result p2

    if-ge p3, p2, :cond_1

    .line 164
    iget-object p0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-virtual {p0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getTextContent()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 165
    invoke-interface {p1, p0, p3}, Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;->onTextAnswerSelected(Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;I)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object p2, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-virtual {p2}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getMediaContent()Ljava/util/List;

    move-result-object p2

    .line 168
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-virtual {v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getMediaContentOffset()I

    move-result v0

    sub-int/2addr p3, v0

    if-eqz p1, :cond_2

    .line 169
    iget-object p0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->gifContextProvider:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;

    invoke-interface {p1, p0, p2, p3}, Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;->onGifAnswerSelected(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/util/List;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic access$getListView$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method public static final synthetic access$getListViewAdapter$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    return-object p0
.end method

.method public static final synthetic access$getListViewLayoutManager$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method private final updateEmptyGifText(I)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->currentBotResponseType:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    sget-object v1, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->textEmptyGif:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->textEmptyGif:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->textEmptyGif:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-virtual {v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->onDestroy()V

    .line 200
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLoadGifComplete(I)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->updateEmptyGifText(I)V

    return-void
.end method

.method public final setBotResponseType(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V
    .locals 2

    const-string v0, "botResponseType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->currentBotResponseType:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 210
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->listViewAdapter:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->content:Lcom/smedialink/ui/smartpanel/model/SmartBotTab;

    invoke-virtual {v0, v1, p1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->setTextData(Lcom/smedialink/ui/smartpanel/model/SmartBotTab;Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V

    return-void
.end method
