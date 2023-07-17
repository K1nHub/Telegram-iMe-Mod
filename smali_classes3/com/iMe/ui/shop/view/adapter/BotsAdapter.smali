.class public final Lcom/iMe/ui/shop/view/adapter/BotsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;
.source "BotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/shop/view/adapter/BotsAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter<",
        "Lorg/telegram/messenger/databinding/ForkShopItemListBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsAdapter.kt\ncom/iMe/ui/shop/view/adapter/BotsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1549#2:122\n1620#2,3:123\n*S KotlinDebug\n*F\n+ 1 BotsAdapter.kt\ncom/iMe/ui/shop/view/adapter/BotsAdapter\n*L\n51#1:122\n51#1:123,3\n*E\n"
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
.method public static synthetic $r8$lambda$0U0nrbY0AvU8OPgeJggxWkBYZ3w(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->onBindViewHolder$lambda$5$lambda$2(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8sgoK-a7IuINHty9zNiKpZcyIyw(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->onBindViewHolder$lambda$5$lambda$4(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ATkwXtjs70444vWuU0hQ2mVfeI0(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->onBindViewHolder$lambda$5$lambda$1(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fr8eiLwAXrrOur_OTvcP-dgq9fM(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->onBindViewHolder$lambda$5$lambda$3(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;-><init>()V

    iput p1, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->currentAccount:I

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->content:Ljava/util/List;

    return-void
.end method

.method private static final onBindViewHolder$lambda$5$lambda$1(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget p0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->currentAccount:I

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

.method private static final onBindViewHolder$lambda$5$lambda$2(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget p0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->currentAccount:I

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

.method private static final onBindViewHolder$lambda$5$lambda$3(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget p0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->currentAccount:I

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

.method private static final onBindViewHolder$lambda$5$lambda$4(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget p0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->botButtonClicked:I

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

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->content:Ljava/util/List;

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

    .line 24
    check-cast p1, Lcom/iMe/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->onBindViewHolder(Lcom/iMe/utils/common/ViewBindingAdapterHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/iMe/utils/common/ViewBindingAdapterHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkShopItemListBinding;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/bots/domain/model/ShopItem;

    .line 45
    invoke-virtual {p1}, Lcom/iMe/utils/common/ViewBindingAdapterHolder;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;

    .line 46
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botAvatar:Landroid/widget/ImageView;

    const-string v1, "botAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 47
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botName:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botDescription:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/bots/domain/model/SmartTag;

    .line 51
    invoke-virtual {v2}, Lcom/iMe/bots/domain/model/SmartTag;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "new"

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botNewLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botNewLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x40800000    # 4.0f

    .line 58
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 59
    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getStatus()Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v2

    sget-object v3, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "shopButton"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 82
    :pswitch_0
    iget-object v2, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    .line 77
    :pswitch_1
    iget-object v2, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/telegram/messenger/R$color;->colorShopButtonTextDisable:I

    invoke-static {v2, v5}, Lcom/iMe/ui/shop/util/TextViewExtKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    .line 73
    :pswitch_2
    iget-object v2, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lorg/telegram/messenger/R$color;->colorShopButtonTextDisable:I

    invoke-static {v2, v4}, Lcom/iMe/ui/shop/util/TextViewExtKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 69
    :pswitch_3
    iget-object v1, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$color;->colorShopButtonTextLight:I

    invoke-static {v1, v2}, Lcom/iMe/ui/shop/util/TextViewExtKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 70
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 65
    :pswitch_4
    iget-object v1, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$color;->colorShopButtonTextLight:I

    invoke-static {v1, v2}, Lcom/iMe/ui/shop/util/TextViewExtKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 66
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 61
    :pswitch_5
    iget-object v1, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$color;->colorShopButtonTextLight:I

    invoke-static {v1, v2}, Lcom/iMe/ui/shop/util/TextViewExtKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 62
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 87
    :goto_2
    iget-object v1, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getStatus()Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    .line 95
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_6
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_enable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 94
    :pswitch_7
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_disable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 93
    :pswitch_8
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_status_downloading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 92
    :pswitch_9
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_update:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 90
    :pswitch_a
    invoke-virtual {p2}, Lcom/iMe/bots/domain/model/ShopItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Free"

    goto :goto_3

    .line 91
    :pswitch_b
    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_bot_action_download:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_2
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botName:Landroid/widget/TextView;

    new-instance v1, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->botDescription:Landroid/widget/TextView;

    new-instance v1, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->shopButton:Lme/grantland/widget/AutofitTextView;

    new-instance v0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/shop/view/adapter/BotsAdapter;Lcom/iMe/bots/domain/model/ShopItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iMe/utils/common/ViewBindingAdapterHolder;

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
            "Lorg/telegram/messenger/databinding/ForkShopItemListBinding;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/iMe/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/databinding/ForkShopItemListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkShopItemListBinding;

    move-result-object p1

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

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
