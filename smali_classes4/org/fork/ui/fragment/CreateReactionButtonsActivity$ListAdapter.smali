.class public final Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CreateReactionButtonsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateReactionButtonsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateReactionButtonsActivity.kt\norg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,756:1\n1726#2,3:757\n1549#2:760\n1620#2,3:761\n49#3:764\n65#3,16:765\n93#3,3:781\n283#4,2:784\n*S KotlinDebug\n*F\n+ 1 CreateReactionButtonsActivity.kt\norg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter\n*L\n436#1:757,3\n441#1:760\n441#1:761,3\n531#1:764\n531#1:765,16\n531#1:781,3\n660#1:784,2\n*E\n"
.end annotation


# instance fields
.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field final synthetic this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method public static synthetic $r8$lambda$IsWSOA7nw4id-NN_5jxBp5znndk(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->onCreateViewHolder$lambda$8$lambda$6(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j_90TflZ3IlZawH4HWbX6yZMFjw(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->onCreateViewHolder$lambda$8$lambda$7(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iput-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 429
    invoke-direct {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method public static final synthetic access$removeEmojiItem(Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;Lorg/fork/ui/view/MovingReactionCell;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->removeEmojiItem(Lorg/fork/ui/view/MovingReactionCell;)V

    return-void
.end method

.method private final getSectionPosition(Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;I)I
    .locals 1

    .line 639
    sget-object v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 640
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    goto :goto_0

    .line 641
    :cond_0
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    :goto_0
    sub-int/2addr p2, p1

    return p2
.end method

.method private static final onCreateViewHolder$lambda$8$lambda$6(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type org.fork.ui.view.MovingReactionCell"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/ui/view/MovingReactionCell;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-static {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListAdapter(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->removeUrlItem(I)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda$8$lambda$7(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-static {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type org.fork.ui.view.MovingReactionCell"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/fork/ui/view/MovingReactionCell;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 555
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-static {p0, p2, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$showURLButtonDialog(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/fork/ui/view/MovingReactionCell;)V

    return-void
.end method

.method private final removeEmojiItem(Lorg/fork/ui/view/MovingReactionCell;)V
    .locals 2

    .line 697
    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->isEmojiButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->getEmojiValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    .line 699
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    add-int/2addr v0, p1

    .line 700
    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 702
    :goto_0
    invoke-direct {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 703
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 704
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final removeUrlItem(I)V
    .locals 7

    .line 670
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lorg/fork/ui/view/MovingReactionCell;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/fork/ui/view/MovingReactionCell;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    .line 673
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 674
    iget-object v3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 675
    invoke-direct {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 676
    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    sub-int v2, p1, v2

    .line 677
    iget-object v3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v5}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v5

    iget-object v6, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v6}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v2

    iget-object v3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v3

    aput-object v1, v2, v3

    .line 680
    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 681
    invoke-virtual {v0}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 682
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/fork/ui/view/MovingReactionCell;

    if-eqz v1, :cond_3

    const-string v1, "holder1.itemView"

    .line 683
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    check-cast p1, Lorg/fork/ui/view/MovingReactionCell;

    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 685
    :cond_3
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 686
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 689
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 690
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method

.method private final updateHeader(I)Ljava/lang/String;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_create_a_reaction:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_create_button:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 666
    :cond_1
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_settings:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final updateRows()V
    .locals 6

    .line 645
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 646
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 647
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 648
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 649
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 650
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v5}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v0, v4}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 651
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 652
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 653
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 654
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    iget-object v5, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v5}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 655
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 656
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    const/16 v5, 0xc

    if-ge v2, v5, :cond_1

    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    invoke-static {v2, v5}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    :cond_1
    invoke-static {v0, v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 657
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 658
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setSettingsHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 659
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setSettingsButtonRowsTypeRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 660
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getDoneItem$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    const/4 v1, 0x4

    .line 283
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final addEmoji(Ljava/lang/String;)V
    .locals 1

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-direct {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 450
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 451
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 456
    :goto_0
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final addUrlAddress(ILjava/lang/String;)V
    .locals 3

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lorg/fork/ui/view/MovingReactionCell;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/fork/ui/view/MovingReactionCell;

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 478
    :cond_2
    invoke-virtual {v1, p2}, Lorg/fork/ui/view/MovingReactionCell;->addUrlAddress(Ljava/lang/String;)V

    .line 479
    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_4

    const/4 p2, 0x6

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 483
    :cond_3
    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p2

    invoke-virtual {v1}, Lorg/fork/ui/view/MovingReactionCell;->getUrlButton()Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v0

    aput-object v0, p2, p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final addUrlButton()V
    .locals 2

    .line 461
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 462
    invoke-direct {p0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 464
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 470
    :goto_0
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRequestFieldFocusAtPosition$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 471
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 472
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final getAllButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getButtonLine()I
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsRowsType$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getDialogTypeByPosition(I)Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;
    .locals 4

    .line 487
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v1, :cond_0

    if-gt v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    goto :goto_2

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    if-ge p1, v1, :cond_2

    if-gt v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    sget-object p1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->BUTTON:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public final getFixedEmotions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

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
    check-cast v2, Ljava/lang/String;

    .line 441
    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 627
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getSettingsHeaderRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto/16 :goto_9

    .line 628
    :cond_4
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v3

    if-ge p1, v3, :cond_5

    if-gt v0, p1, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    goto :goto_9

    .line 629
    :cond_6
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_5
    move v0, v2

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_6
    if-eqz v0, :cond_9

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    goto :goto_9

    .line 630
    :cond_9
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    :goto_7
    move v0, v2

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_7

    :cond_b
    move v0, v1

    :goto_8
    if-eqz v0, :cond_c

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_9

    .line 631
    :cond_c
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v3

    if-ge p1, v3, :cond_d

    if-gt v0, p1, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->URL_BUTTON:I

    goto :goto_9

    .line 632
    :cond_e
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    :goto_9
    return p1
.end method

.method public final isAllButtonsValid()Z
    .locals 5

    .line 435
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_6

    .line 1726
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v4

    goto :goto_3

    .line 1727
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    .line 436
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-nez v1, :cond_2

    move v0, v3

    :goto_3
    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    return v3
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 622
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 623
    :goto_0
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_4

    :goto_1
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p1, 0x1

    :goto_4
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 568
    instance-of v1, v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "holder.itemView"

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 569
    invoke-direct {p0, p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateHeader(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 571
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 572
    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    const-string v2, "format(format, *args)"

    if-ne p2, v1, :cond_2

    .line 573
    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x6

    if-le p2, v4, :cond_1

    .line 574
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_reaction_value_info:I

    invoke-interface {p2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_reaction_value_info_single:I

    invoke-interface {p2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 580
    :cond_2
    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p2

    rsub-int/lit8 p2, p2, 0xc

    if-le p2, v4, :cond_3

    .line 581
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_button_value_info:I

    invoke-interface {p2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_3
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_button_value_info_single:I

    invoke-interface {p2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 588
    :cond_4
    instance-of v1, v0, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_8

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x0

    const-string/jumbo v2, "windowBackgroundWhiteBlueText4"

    .line 589
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    .line 592
    :cond_5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-static {v2, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_3

    .line 594
    :cond_6
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "switchTrackChecked"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 595
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "checkboxCheck"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 596
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 598
    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsAddRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    if-ne p1, p2, :cond_7

    sget p1, Lorg/telegram/messenger/R$string;->chat_reaction_select_emoji:I

    goto :goto_2

    :cond_7
    sget p1, Lorg/telegram/messenger/R$string;->chat_reaction_create_button:I

    .line 597
    :goto_2
    invoke-interface {v1, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_3

    .line 601
    :cond_8
    instance-of v1, v0, Lorg/fork/ui/view/MovingReactionCell;

    if-eqz v1, :cond_b

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/fork/ui/view/MovingReactionCell;

    .line 602
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    if-ne p1, v2, :cond_9

    .line 603
    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lorg/fork/ui/view/MovingReactionCell;->setEmoji(Ljava/lang/String;Z)V

    goto :goto_3

    .line 605
    :cond_9
    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p1

    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    sub-int v2, p2, v2

    aget-object p1, p1, v2

    if-nez p1, :cond_a

    .line 606
    new-instance p1, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    const-string v2, ""

    invoke-direct {p1, v2, v2}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_a
    invoke-virtual {v0, p1}, Lorg/fork/ui/view/MovingReactionCell;->updateUrlButton(Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;)V

    .line 607
    invoke-static {v1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRequestFieldFocusAtPosition$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    if-ne p1, p2, :cond_c

    .line 608
    invoke-virtual {v0}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 610
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, -0x1

    .line 611
    invoke-static {v1, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRequestFieldFocusAtPosition$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    goto :goto_3

    .line 615
    :cond_b
    instance-of p1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_c

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 616
    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_button_position:I

    invoke-interface {p2, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsRowsType$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->getResource()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    const-string/jumbo v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 518
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 520
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 521
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 524
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    const-string v1, "context"

    const/4 v2, 0x1

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/fork/ui/view/MovingReactionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/fork/ui/view/MovingReactionCell;-><init>(Landroid/content/Context;Z)V

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 525
    invoke-virtual {p1, v2}, Lorg/fork/ui/view/MovingReactionCell;->setShowNextButton(Z)V

    .line 526
    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-wide/16 v4, 0x0

    new-instance v6, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;

    invoke-direct {v6, p2, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;-><init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_3
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->URL_BUTTON:I

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/fork/ui/view/MovingReactionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v2}, Lorg/fork/ui/view/MovingReactionCell;-><init>(Landroid/content/Context;Z)V

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 531
    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 80
    new-instance v1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;

    invoke-direct {v1, p2, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;-><init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 544
    invoke-virtual {p1, v2}, Lorg/fork/ui/view/MovingReactionCell;->setShowNextButton(Z)V

    .line 546
    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    invoke-virtual {p1}, Lorg/fork/ui/view/MovingReactionCell;->getLinkImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 558
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 516
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final swapElements(II)V
    .locals 4

    .line 493
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getDialogTypeByPosition(I)Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getSectionPosition(Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;I)I

    move-result v1

    .line 495
    invoke-direct {p0, v0, p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getSectionPosition(Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;I)I

    move-result v2

    .line 497
    sget-object v3, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    if-ne v0, v3, :cond_3

    .line 498
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_2

    if-gez v2, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 502
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 504
    :cond_3
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_5

    if-gez v2, :cond_4

    goto :goto_1

    .line 507
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_5
    :goto_1
    return-void
.end method
