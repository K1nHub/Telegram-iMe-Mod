.class final Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseIntervalSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseIntervalSettingsActivity.kt\norg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,286:1\n11328#2:287\n11663#2,3:288\n37#3:291\n36#3,3:292\n*S KotlinDebug\n*F\n+ 1 ChooseIntervalSettingsActivity.kt\norg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter\n*L\n228#1:287\n228#1:288,3\n228#1:291\n228#1:292,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$qM0SLZyvGb2aaDwZexcvXcL4ZZE(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->onCreateViewHolder$lambda-4$lambda-3(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 186
    invoke-virtual {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-4$lambda-3(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-static {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervals(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)[Lorg/fork/enums/Interval;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setInterval(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;Lorg/fork/enums/Interval;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervalHeaderRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getEnableInfoRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervalChooserRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    goto :goto_0

    .line 215
    :cond_3
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
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
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result p2

    .line 241
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v0, :cond_2

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_2

    .line 244
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getType()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object p2

    sget-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_1

    if-ne p2, v2, :cond_0

    .line 246
    sget p2, Lorg/telegram/messenger/R$string;->topics_catalog_update_auto:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 245
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->backup_settings_save_auto:I

    .line 244
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 247
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$isMainSwitchEnabled(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z

    move-result v0

    .line 244
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 249
    :cond_2
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne p2, v0, :cond_5

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_5

    .line 250
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getType()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object p2

    sget-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_3

    .line 252
    sget p2, Lorg/telegram/messenger/R$string;->topics_catalog_auto_update_settings_interval_chooser_header:I

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 251
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->backup_auto_settings_interval_chooser_header:I

    .line 250
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 255
    :cond_5
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, v0, :cond_9

    instance-of p2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz p2, :cond_9

    .line 256
    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 257
    invoke-static {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$isMainSwitchEnabled(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z

    move-result v0

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc

    .line 260
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_3

    .line 262
    :cond_6
    invoke-virtual {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->getType()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object v0

    sget-object v5, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    .line 264
    sget v0, Lorg/telegram/messenger/R$string;->topics_catalog_auto_update_settings_enable_item_hint:I

    goto :goto_2

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 263
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->backup_auto_settings_enable_item_hint:I

    .line 262
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 183
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 220
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 221
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 222
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    const-string/jumbo v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 224
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 225
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 226
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    .line 227
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    invoke-static {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getSelectedInterval(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Lorg/fork/enums/Interval;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervals(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)[Lorg/fork/enums/Interval;

    move-result-object v1

    .line 11328
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 228
    invoke-virtual {v6}, Lorg/fork/enums/Interval;->getNameResId()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    .line 229
    new-instance v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 232
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 233
    :cond_4
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-ne p2, p1, :cond_5

    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 234
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 236
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 218
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 192
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 193
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setEnableRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 194
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setEnableInfoRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 195
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$isMainSwitchEnabled(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalHeaderRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 197
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalChooserRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalHeaderRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 200
    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalChooserRow$p(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    :goto_0
    return-void
.end method
