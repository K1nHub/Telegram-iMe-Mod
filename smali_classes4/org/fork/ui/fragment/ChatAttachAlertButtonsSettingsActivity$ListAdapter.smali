.class final Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertButtonsSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertButtonsSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertButtonsSettingsActivity.kt\norg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,252:1\n1#2:253\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 185
    invoke-virtual {p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getButtonsSectionRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getEnableBotsRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_0

    .line 210
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$needDivider(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z

    move-result v0

    .line 234
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 235
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    if-eqz v2, :cond_1

    .line 238
    iget-object v1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    check-cast p1, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    .line 239
    invoke-virtual {v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fork/enums/ChatAttachAlertButton;

    .line 240
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, p2, v1, v0}, Lorg/fork/ui/view/ChatAttachAlertButtonCell;->setButton(Lorg/fork/enums/ChatAttachAlertButton;ZZ)V

    goto :goto_1

    .line 244
    :cond_1
    sget p2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v1, p2, :cond_2

    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p2, :cond_2

    .line 245
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->chat_attach_alert_bot_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getNewSuggest$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 182
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    const-string v0, "parentActivity"

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/fork/ui/view/DialogTypeTopicsBar;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/fork/enums/DialogType;->values()[Lorg/fork/enums/DialogType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v1

    .line 220
    new-instance v2, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v3, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {v2, v3, p0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;)V

    .line 216
    invoke-direct {p1, p2, v0, v1, v2}, Lorg/fork/ui/view/DialogTypeTopicsBar;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/fork/enums/DialogType;Lkotlin/jvm/functions/Function1;)V

    .line 220
    iget-object p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {p2, p1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setTopicsBar$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lorg/fork/ui/view/DialogTypeTopicsBar;)V

    goto :goto_0

    .line 221
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    const-string/jumbo v1, "windowBackgroundWhite"

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertButtonCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/fork/ui/view/ChatAttachAlertButtonCell;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 224
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 225
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 229
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 192
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 193
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setButtonsStartRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 194
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 195
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setButtonsEndRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 196
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setButtonsSectionRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 197
    iget-object v0, p0, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setEnableBotsRow$p(Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    return-void
.end method
