.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;
.super Lorg/telegram/ui/Components/EmojiTabsStrip;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:I


# direct methods
.method public static synthetic $r8$lambda$sJ5EwaNEcVPhmBiQJ-osiyoJ8VI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->lambda$onTabClickLong$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZILjava/lang/Runnable;Landroid/content/Context;I)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 519
    iput-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-object/from16 v0, p8

    iput-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->val$context:Landroid/content/Context;

    move/from16 v0, p9

    iput v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->val$type:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiTabsStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZILjava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onTabClickLong$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 533
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSuggestPremiumReactionsEmoji(Z)V

    .line 534
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method protected onTabClick(I)Z
    .locals 4

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 560
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->val$type:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_2

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$602(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)[Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_stickers:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    :goto_0
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1, v3, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZZ)V

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return v3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :cond_3
    if-lez p1, :cond_4

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 577
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v2, -0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$1300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$1300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :cond_5
    return v3
.end method

.method protected onTabClickLong(I)Z
    .locals 4

    .line 527
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->emoji_premium_title_off_alert:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->emoji_premium_title_on_alert:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->emoji_premium_message_off_alert:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->emoji_premium_message_on_alert:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->settings_emoji_premium_suggest_sets:I

    .line 530
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 531
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/SelectAnimatedEmojiDialog$3$$ExternalSyntheticLambda0;

    .line 532
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 536
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 539
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 541
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClickLong(I)Z

    move-result p1

    return p1
.end method

.method protected onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 591
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_1
    return-void
.end method
