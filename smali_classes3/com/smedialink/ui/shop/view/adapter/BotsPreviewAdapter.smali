.class public final Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;
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
    value = "SMAP\nBotsPreviewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsPreviewAdapter.kt\ncom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1549#2:83\n1620#2,3:84\n*S KotlinDebug\n*F\n+ 1 BotsPreviewAdapter.kt\ncom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter\n*L\n50#1:83\n50#1:84,3\n*E\n"
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation
.end field

.field private final currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$QPTPey24QKRoeGlqz0jikd7adh0(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->onBindViewHolder$lambda$3$lambda$2(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apqoJMkngRnq5fl4VTlSlCzVU-g(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->onBindViewHolder$lambda$3$lambda$1(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;-><init>()V

    iput p1, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->currentAccount:I

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    return-void
.end method

.method private static final onBindViewHolder$lambda$3$lambda$1(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget p0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$3$lambda$2(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget p0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

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

    .line 74
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

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
    check-cast p1, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->onBindViewHolder(Lcom/smedialink/utils/common/ViewBindingAdapterHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/smedialink/utils/common/ViewBindingAdapterHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 41
    invoke-virtual {p1}, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;

    .line 42
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botAvatar:Landroid/widget/ImageView;

    const-string v1, "botAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/smedialink/bots/domain/model/ShopItem;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "botAvatar.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/smedialink/ui/smartpanel/extension/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    .line 43
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/smedialink/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-virtual {p2}, Lcom/smedialink/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

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
    check-cast v3, Lcom/smedialink/bots/domain/model/SmartTag;

    .line 50
    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/SmartTag;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "new"

    .line 50
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_1
    invoke-virtual {p2}, Lcom/smedialink/bots/domain/model/ShopItem;->getPrice()Ljava/lang/String;

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

    .line 57
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botStatus:Landroid/widget/TextView;

    const-string v3, "Free"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 59
    :cond_4
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botStatus:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/smedialink/bots/domain/model/ShopItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_4
    invoke-virtual {p2}, Lcom/smedialink/bots/domain/model/ShopItem;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v0

    sget-object v3, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    if-eq v0, v3, :cond_5

    .line 62
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botInstalledIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->botName:Landroid/widget/TextView;

    new-instance v0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;Lcom/smedialink/bots/domain/model/ShopItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smedialink/utils/common/ViewBindingAdapterHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smedialink/utils/common/ViewBindingAdapterHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/smedialink/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p2, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkShopItemGridBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p2
.end method

.method public final setContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsPreviewAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
