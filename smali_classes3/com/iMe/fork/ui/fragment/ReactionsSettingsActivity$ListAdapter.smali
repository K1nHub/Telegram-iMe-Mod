.class final Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ReactionsSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getMessagePopupRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    goto :goto_0

    .line 264
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)Z

    move-result v0

    .line 286
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 287
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v1, v2, :cond_0

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 291
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_8

    .line 292
    sget p2, Lorg/telegram/messenger/R$string;->EnableReactions:I

    const-string v1, "EnableReactions"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 296
    :cond_0
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_2

    .line 297
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 298
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    if-nez p2, :cond_1

    .line 299
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    sget p2, Lorg/telegram/messenger/R$string;->settings_reactions_enable_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto/16 :goto_2

    .line 303
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 304
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 305
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto/16 :goto_2

    .line 309
    :cond_2
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    const/4 v2, 0x1

    if-ne v1, p2, :cond_4

    instance-of p2, p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz p2, :cond_4

    .line 310
    sget-object p2, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    const-string v3, "selectedDialogTypesForMessagePopupReactions"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToTitles(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 311
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 312
    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 313
    sget v2, Lorg/telegram/messenger/R$string;->settings_tools_message_popup_reactions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, ", "

    .line 314
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 315
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->common_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 312
    :goto_0
    invoke-virtual {p1, v2, p2, v1, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 320
    :cond_4
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v1, p2, :cond_8

    instance-of p2, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p2, :cond_8

    .line 321
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 322
    sget v1, Lorg/telegram/messenger/R$string;->DoubleTapSetting:I

    const-string v5, "DoubleTapSetting"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 323
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v0

    const-string v1, "valueBackupImageView"

    if-eqz v0, :cond_5

    .line 324
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 325
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 328
    sget v0, Lorg/telegram/messenger/R$string;->common_off:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setValue(Ljava/lang/String;)V

    .line 330
    :goto_1
    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getCurrentAccount$p$s645086140(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 332
    :cond_6
    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getCurrentAccount$p$s645086140(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez v5, :cond_7

    return-void

    :cond_7
    const-string p2, "MediaDataController.getI\u2026                ?: return"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object p2, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v3

    .line 335
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 336
    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v6, 0x1

    const-string v2, "100_100"

    const-string v4, "webp"

    .line 335
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 271
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    goto :goto_0

    .line 273
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 274
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 275
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 277
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 278
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 281
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setMessagePopupRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    .line 244
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setQuickReactionRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    .line 245
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    .line 246
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    .line 247
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    .line 248
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setMessagePopupRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    .line 250
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->access$setQuickReactionRow$p(Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;I)V

    :cond_0
    return-void
.end method
