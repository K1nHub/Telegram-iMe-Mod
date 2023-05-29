.class final Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectLanguageBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 352
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    goto :goto_0

    .line 353
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$isSelectedLanguagePosition(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;I)Z

    move-result p1

    if-nez p1, :cond_0

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

    .line 366
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$getLastSelectionList(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 368
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type com.iMe.ui.contacts.view.TextCellWithRightImage"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    .line 369
    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v2}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 370
    invoke-static {v1, p2}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$isSelectedLanguagePosition(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->setRightIconVisible(Z)V

    .line 371
    sget p2, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->setRightIcon(II)V

    goto :goto_1

    .line 373
    :cond_1
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    if-ne v1, p2, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "null cannot be cast to non-null type com.iMe.fork.ui.dialog.SelectLanguageBottomSheet.EmptyView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;->getAnimationView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    const-string v0, "context"

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$EmptyView;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x1

    const/16 v0, 0x96

    .line 359
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 361
    :cond_0
    new-instance p1, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x17

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;-><init>(Landroid/content/Context;IZ)V

    .line 356
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
