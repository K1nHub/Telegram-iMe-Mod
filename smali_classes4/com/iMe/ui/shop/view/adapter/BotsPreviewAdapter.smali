.class public final Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;
.source "BotsPreviewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter<",
        "Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotsPreviewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsPreviewAdapter.kt\ncom/iMe/ui/shop/view/adapter/BotsPreviewAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1549#2:98\n1620#2,3:99\n*S KotlinDebug\n*F\n+ 1 BotsPreviewAdapter.kt\ncom/iMe/ui/shop/view/adapter/BotsPreviewAdapter\n*L\n63#1:98\n63#1:99,3\n*E\n"
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation
.end field

.field private final currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$QjuyGKxAvps8oba9TkLlONZHFlA(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->onBindViewHolder$lambda$3$lambda$2(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o69JKAX6uaN69SehovTabR9NwS0(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->onBindViewHolder$lambda$3$lambda$1(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;-><init>()V

    .line 19
    iput p1, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->currentAccount:I

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    return-void
.end method

.method private static final onBindViewHolder$lambda$3$lambda$1(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget p0, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 80
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$3$lambda$2(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget p0, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 84
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/iMe/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->onBindViewHolder(Lcom/iMe/utils/common/ViewBindingAdapterHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/iMe/utils/common/ViewBindingAdapterHolder;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/bots/domain/model/ShopItem;

    .line 51
    invoke-virtual {p1}, Lcom/iMe/utils/common/ViewBindingAdapterHolder;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;

    .line 52
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botAvatar:Landroid/widget/ImageView;

    const-string v1, "botAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 53
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    .line 56
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 57
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/bots/domain/model/SmartTag;

    .line 63
    invoke-virtual {v3}, Lcom/iMe/bots/domain/model/SmartTag;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "new"

    .line 63
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_1
    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botStatus:Landroid/widget/TextView;

    const-string v3, "Free"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 72
    :cond_4
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botStatus:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_4
    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getStatus()Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v0

    sget-object v3, Lcom/iMe/bots/data/model/BotStatus;->PAID:Lcom/iMe/bots/data/model/BotStatus;

    if-eq v0, v3, :cond_5

    .line 75
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    new-instance v0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iMe/utils/common/ViewBindingAdapterHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iMe/utils/common/ViewBindingAdapterHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/iMe/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p2, Lcom/iMe/utils/common/ViewBindingAdapterHolder;

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;

    move-result-object p1

    .line 37
    invoke-direct {p2, p1}, Lcom/iMe/utils/common/ViewBindingAdapterHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p2
.end method

.method public final setContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
