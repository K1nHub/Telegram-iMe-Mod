.class public final Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CreateReactionButtonsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateReactionButtonsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateReactionButtonsActivity.kt\ncom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1171:1\n1726#2,3:1172\n1549#2:1175\n1620#2,3:1176\n49#3:1179\n65#3,16:1180\n93#3,3:1196\n283#4,2:1199\n*S KotlinDebug\n*F\n+ 1 CreateReactionButtonsActivity.kt\ncom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter\n*L\n796#1:1172,3\n801#1:1175\n801#1:1176,3\n895#1:1179\n895#1:1180,16\n895#1:1196,3\n1064#1:1199,2\n*E\n"
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method public static synthetic $r8$lambda$Eclyx8s-l1SxgmvJsyMIZn8BhqU(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->onCreateViewHolder$lambda$8$lambda$6(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IgA0zBVqDTjffx_rtN_HRuxvnXM(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/fork/ui/view/MovingReactionCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->onCreateViewHolder$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/fork/ui/view/MovingReactionCell;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 786
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 785
    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 789
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method public static final synthetic access$removeEmojiItem(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;Lcom/iMe/fork/ui/view/MovingReactionCell;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->removeEmojiItem(Lcom/iMe/fork/ui/view/MovingReactionCell;)V

    return-void
.end method

.method private final getSectionPosition(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;I)I
    .locals 1

    .line 1041
    sget-object v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1042
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    goto :goto_0

    .line 1043
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    :goto_0
    sub-int/2addr p2, p1

    return p2
.end method

.method private static final onCreateViewHolder$lambda$8$lambda$6(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingReactionCell"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/MovingReactionCell;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 914
    :cond_0
    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->removeUrlItem(I)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/fork/ui/view/MovingReactionCell;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingReactionCell"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/fork/ui/view/MovingReactionCell;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 921
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-static {p0, p2, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$showURLButtonDialog(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILcom/iMe/fork/ui/view/MovingReactionCell;)V

    return-void
.end method

.method private final removeEmojiItem(Lcom/iMe/fork/ui/view/MovingReactionCell;)V
    .locals 2

    .line 1102
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->isEmojiButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getEmojiValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    .line 1104
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    add-int/2addr v0, p1

    .line 1105
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1107
    :goto_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 1108
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1109
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final removeUrlItem(I)V
    .locals 7

    .line 1075
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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
    instance-of v2, v0, Lcom/iMe/fork/ui/view/MovingReactionCell;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/iMe/fork/ui/view/MovingReactionCell;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    .line 1078
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1079
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1080
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 1081
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    sub-int v2, p1, v2

    .line 1082
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v5}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v5

    iget-object v6, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v6}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1083
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v3

    aput-object v1, v2, v3

    .line 1085
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1086
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 1087
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lcom/iMe/fork/ui/view/MovingReactionCell;

    if-eqz v1, :cond_3

    const-string v1, "holder1.itemView"

    .line 1088
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    check-cast p1, Lcom/iMe/fork/ui/view/MovingReactionCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 1090
    :cond_3
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1091
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1094
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1095
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method

.method private final updateHeader(I)Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_create_a_reaction:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_create_button:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1070
    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_settings:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final updateRows()V
    .locals 6

    .line 1047
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1048
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1049
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1050
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1051
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1052
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 1053
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v5}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1052
    :goto_0
    invoke-static {v0, v4}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1054
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1055
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1056
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1057
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v5}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1058
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1059
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 1060
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    const/16 v5, 0xc

    if-ge v2, v5, :cond_1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    invoke-static {v2, v5}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1059
    :cond_1
    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1061
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1062
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setSettingsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1063
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setSettingsButtonRowsTypeRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 1064
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getDoneItem$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

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

    .line 806
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 810
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 811
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 813
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 816
    :goto_0
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final addUrlAddress(ILjava/lang/String;)V
    .locals 3

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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
    instance-of v2, v0, Lcom/iMe/fork/ui/view/MovingReactionCell;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iMe/fork/ui/view/MovingReactionCell;

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 839
    :cond_2
    invoke-virtual {v1, p2}, Lcom/iMe/fork/ui/view/MovingReactionCell;->addUrlAddress(Ljava/lang/String;)V

    .line 840
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_4

    const/4 p2, 0x6

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 844
    :cond_3
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p2

    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getUrlButton()Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v0

    aput-object v0, p2, p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final addUrlButton()V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 822
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateRows()V

    .line 824
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 830
    :goto_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    .line 831
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 832
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

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
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getButtonLine()I
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsRowsType$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getDialogTypeByPosition(I)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;
    .locals 4

    .line 848
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

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

    sget-object p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    goto :goto_2

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    if-ge p1, v1, :cond_2

    if-gt v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    sget-object p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->BUTTON:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

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

    .line 801
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

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

    .line 801
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

    .line 931
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1029
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getSettingsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto/16 :goto_9

    .line 1030
    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v3

    if-ge p1, v3, :cond_5

    if-gt v0, p1, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    goto :goto_9

    .line 1031
    :cond_6
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_5
    move v0, v2

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_6
    if-eqz v0, :cond_9

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    goto :goto_9

    .line 1032
    :cond_9
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    :goto_7
    move v0, v2

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_7

    :cond_b
    move v0, v1

    :goto_8
    if-eqz v0, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_9

    .line 1033
    :cond_c
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v3

    if-ge p1, v3, :cond_d

    if-gt v0, p1, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->URL_BUTTON:I

    goto :goto_9

    .line 1034
    :cond_e
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    :goto_9
    return p1
.end method

.method public final isAllButtonsValid()Z
    .locals 5

    .line 795
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

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

    check-cast v1, Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    .line 796
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;->getUrl()Ljava/lang/String;

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

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;->getTitle()Ljava/lang/String;

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

    .line 1024
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1025
    :goto_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

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

    .line 934
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 935
    instance-of v1, v0, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "holder.itemView"

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 936
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->updateHeader(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 939
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 940
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    const-string v2, "format(format, *args)"

    if-ne p2, v1, :cond_2

    .line 941
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x6

    if-le p2, v4, :cond_1

    .line 942
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 943
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_reaction_value_info:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    .line 944
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 942
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_1
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 948
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_reaction_value_info_single:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    .line 949
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 947
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 954
    :cond_2
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p2

    rsub-int/lit8 p2, p2, 0xc

    if-le p2, v4, :cond_3

    .line 955
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 956
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_button_value_info:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    .line 957
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 955
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 960
    :cond_3
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 961
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_max_button_value_info_single:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    .line 962
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 960
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 969
    :cond_4
    instance-of v1, v0, Lorg/telegram/ui/Cells/TextCell;

    const/4 v5, -0x1

    if-eqz v1, :cond_8

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 970
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 972
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    .line 975
    :cond_5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-static {v2, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_3

    .line 977
    :cond_6
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 978
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 979
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 977
    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 981
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 982
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 983
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 981
    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 985
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 987
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 988
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    if-ne p1, p2, :cond_7

    sget p1, Lorg/telegram/messenger/R$string;->chat_reaction_select_emoji:I

    goto :goto_2

    :cond_7
    sget p1, Lorg/telegram/messenger/R$string;->chat_reaction_create_button:I

    .line 987
    :goto_2
    invoke-interface {v1, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 986
    invoke-virtual {v0, p1, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_3

    .line 993
    :cond_8
    instance-of v1, v0, Lcom/iMe/fork/ui/view/MovingReactionCell;

    if-eqz v1, :cond_b

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lcom/iMe/fork/ui/view/MovingReactionCell;

    .line 994
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    if-ne p1, v2, :cond_9

    .line 995
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lcom/iMe/fork/ui/view/MovingReactionCell;->setEmoji(Ljava/lang/String;Z)V

    goto :goto_3

    .line 998
    :cond_9
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p1

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v2

    sub-int v2, p2, v2

    aget-object p1, p1, v2

    if-nez p1, :cond_a

    .line 999
    new-instance p1, Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    const-string v2, ""

    invoke-direct {p1, v2, v2}, Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_a
    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->updateUrlButton(Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;)V

    .line 1004
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p1

    if-ne p1, p2, :cond_c

    .line 1005
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 1006
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1007
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1008
    invoke-static {v1, v5}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$setRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V

    goto :goto_3

    .line 1013
    :cond_b
    instance-of p1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_c

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1015
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_button_position:I

    invoke-interface {p2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1016
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsRowsType$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->getResource()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1014
    invoke-virtual {v0, p2, p1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 879
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 882
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 883
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 884
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 887
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    const-string v0, "context"

    const/4 v1, 0x1

    if-ne p2, p1, :cond_3

    new-instance p1, Lcom/iMe/fork/ui/view/MovingReactionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/iMe/fork/ui/view/MovingReactionCell;-><init>(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 888
    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->setShowNextButton(Z)V

    .line 889
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;

    invoke-direct {v5, p2, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$3$1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/fork/ui/view/MovingReactionCell;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    .line 894
    :cond_3
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->URL_BUTTON:I

    if-ne p2, p1, :cond_4

    new-instance p1, Lcom/iMe/fork/ui/view/MovingReactionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v1}, Lcom/iMe/fork/ui/view/MovingReactionCell;-><init>(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 895
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 80
    new-instance v2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;

    invoke-direct {v2, p2, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/fork/ui/view/MovingReactionCell;)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 908
    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->setShowNextButton(Z)V

    .line 910
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getDeleteImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getLinkImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lcom/iMe/fork/ui/view/MovingReactionCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 925
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 926
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 877
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final swapElements(II)V
    .locals 4

    .line 854
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getDialogTypeByPosition(I)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getSectionPosition(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;I)I

    move-result v1

    .line 856
    invoke-direct {p0, v0, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getSectionPosition(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;I)I

    move-result v2

    .line 858
    sget-object v3, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    if-ne v0, v3, :cond_3

    .line 859
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_2

    if-gez v2, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 863
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 865
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_5

    if-gez v2, :cond_4

    goto :goto_1

    .line 868
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_5
    :goto_1
    return-void
.end method
