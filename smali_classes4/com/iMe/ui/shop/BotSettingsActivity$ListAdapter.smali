.class final Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BotSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/shop/BotSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/BotSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/shop/BotSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 299
    invoke-static {p1}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$updateRows(Lcom/iMe/ui/shop/BotSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getRowCount$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getAutoBotsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_6

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getEnableBotsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getAutoBotsInPersonalChatsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getAutoBotsInGroupsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    :goto_4
    move v1, v2

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getShowOftenUsedRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_6

    .line 309
    :cond_7
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    :goto_6
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x1

    .line 334
    invoke-virtual {p0, v0}, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 336
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_1

    .line 339
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_automatic_response_header:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 342
    :cond_1
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v1, v2, :cond_5

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_5

    .line 343
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getEnableBotsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 344
    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 345
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled()Z

    move-result v1

    .line 343
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getAutoBotsInPersonalChatsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 351
    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_chats_automatic_response_enable_item_title:I

    .line 350
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 352
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats()Z

    move-result v1

    .line 349
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getAutoBotsInGroupsRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 356
    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_groups_automatic_response_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 357
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups()Z

    move-result v1

    .line 355
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/iMe/ui/shop/BotSettingsActivity;->access$getShowOftenUsedRow$p(Lcom/iMe/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 362
    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_often_used_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 363
    iget-object v1, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled()Z

    move-result v1

    .line 361
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 318
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 321
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 322
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 325
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/iMe/ui/shop/BotSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 327
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
