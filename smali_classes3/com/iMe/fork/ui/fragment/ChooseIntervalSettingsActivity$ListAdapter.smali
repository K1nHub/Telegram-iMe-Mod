.class final Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseIntervalSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseIntervalSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,274:1\n11335#2:275\n11670#2,3:276\n37#3,2:279\n*S KotlinDebug\n*F\n+ 1 ChooseIntervalSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter\n*L\n221#1:275\n221#1:276,3\n221#1:279,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$bhG3wqhEoz_XiO4aT346jbGwTlU(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->onCreateViewHolder$lambda$4$lambda$3(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private static final onCreateViewHolder$lambda$4$lambda$3(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervals(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)[Lcom/iMe/fork/enums/Interval;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setInterval(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;Lcom/iMe/fork/enums/Interval;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervalHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getEnableInfoRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervalChooserRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    goto :goto_0

    .line 208
    :cond_3
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
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
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result p2

    .line 234
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_1

    .line 237
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getType()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object p2

    sget-object v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-ne p2, v2, :cond_0

    .line 238
    sget p2, Lorg/telegram/messenger/R$string;->backup_settings_save_auto:I

    .line 237
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 239
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$isMainSwitchEnabled(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z

    move-result v0

    .line 237
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 238
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 241
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, v0, :cond_3

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_3

    .line 242
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getType()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object p2

    sget-object v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-ne p2, v2, :cond_2

    .line 243
    sget p2, Lorg/telegram/messenger/R$string;->backup_auto_settings_interval_chooser_header:I

    .line 242
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 246
    :cond_3
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, v0, :cond_6

    instance-of p2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz p2, :cond_6

    .line 247
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 248
    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$isMainSwitchEnabled(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc

    .line 251
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 253
    :cond_4
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->getType()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object v0

    sget-object v3, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-ne v0, v2, :cond_5

    .line 254
    sget v0, Lorg/telegram/messenger/R$string;->backup_auto_settings_enable_item_hint:I

    .line 253
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 254
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 213
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    goto/16 :goto_1

    .line 215
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 216
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 218
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 219
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SLIDE_CHOOSE:I

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    .line 220
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getSelectedInterval(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Lcom/iMe/fork/enums/Interval;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getIntervals(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)[Lcom/iMe/fork/enums/Interval;

    move-result-object v1

    .line 11335
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 221
    invoke-virtual {v6}, Lcom/iMe/fork/enums/Interval;->getNameResId()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    .line 11671
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 221
    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    goto :goto_1

    .line 226
    :cond_4
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-ne p2, p1, :cond_5

    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 227
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 229
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 186
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 187
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setEnableInfoRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 188
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$isMainSwitchEnabled(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 190
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalChooserRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    .line 193
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->access$setIntervalChooserRow$p(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    :goto_0
    return-void
.end method
