.class final Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BotSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/shop/BotSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/shop/BotSettingsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 162
    invoke-static {p1}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$updateRows(Lcom/smedialink/ui/shop/BotSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getRowCount$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getAutoBotsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_6

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getEnableBotsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getAutoBotsInPersonalChatsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getAutoBotsInGroupsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getShowOftenUsedRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_6

    .line 172
    :cond_7
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    :goto_6
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

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

    .line 190
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 192
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_1

    .line 195
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_automatic_response_header:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 197
    :cond_1
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v1, v2, :cond_5

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getEnableBotsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lorg/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/NeuroBotsController;->isNeuroBotsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getAutoBotsInPersonalChatsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_chats_automatic_response_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lorg/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getAutoBotsInGroupsRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_groups_automatic_response_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lorg/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-static {v1}, Lcom/smedialink/ui/shop/BotSettingsActivity;->access$getShowOftenUsedRow$p(Lcom/smedialink/ui/shop/BotSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->neurobots_settings_often_used_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNeuroBotsController()Lorg/fork/controller/NeuroBotsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    const-string v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 180
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 181
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 183
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 184
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/smedialink/ui/shop/BotSettingsActivity$ListAdapter;->this$0:Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 186
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 177
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
