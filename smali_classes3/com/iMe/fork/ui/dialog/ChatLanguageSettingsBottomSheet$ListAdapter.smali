.class final Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatLanguageSettingsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatLanguageSettingsBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatLanguageSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,223:1\n1#2:224\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getTextHeader$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getAutoTranslateRow$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_0

    .line 180
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 193
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v0, v1, :cond_0

    instance-of v1, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v1, :cond_0

    .line 196
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->language_settings_text_messages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 198
    :cond_0
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_1

    .line 199
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->ShowTranslateChatButton:I

    const-string v0, "ShowTranslateChatButton"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$isAutoTranslateEnabled$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_4

    .line 201
    :cond_1
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne v0, v1, :cond_9

    instance-of v0, p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0, p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getLangCode(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getTextIn$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v1

    if-ne p2, v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->language_settings_in_text_translate:I

    goto :goto_0

    .line 205
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->language_settings_out_text_translate:I

    .line 203
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 208
    sget v0, Lorg/telegram/messenger/R$string;->language_settings_app_language:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 210
    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->language_settings_selected_language:I

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {v6}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getTextTranslateLanguages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v8}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v7}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_2
    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getTextIn$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v4

    if-ne p2, v4, :cond_6

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getNewSettings(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled()Z

    move-result v4

    goto :goto_3

    .line 214
    :cond_6
    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getNewSettings(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled()Z

    move-result v4

    .line 216
    :goto_3
    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v5}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getTextOut$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v5

    if-ne p2, v5, :cond_7

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getAutoTranslateRow$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result p2

    const/4 v5, -0x1

    if-eq p2, v5, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    invoke-virtual {p1, v1, v0, v4, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    :cond_9
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 185
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 188
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setAutoTranslateRow$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    .line 160
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    .line 161
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setTextHeader$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    .line 162
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setTextIn$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    .line 163
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setTextOut$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    .line 164
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->isDialogTranslatable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->isTranslateDialogHidden(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$getRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->access$setAutoTranslateRow$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V

    :cond_0
    return-void
.end method
