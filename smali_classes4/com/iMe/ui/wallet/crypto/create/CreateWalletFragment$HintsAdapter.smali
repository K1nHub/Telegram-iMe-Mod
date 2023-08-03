.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HintsAdapter"
.end annotation


# instance fields
.field private final location:[I

.field private searchResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1104
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1107
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->location:[I

    .line 1108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->searchResult:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/String;
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->searchResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->searchResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 1170
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 1171
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->searchResult:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 1158
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1159
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x10

    .line 1160
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, -0x2

    const/4 v0, -0x1

    .line 1161
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final searchMnemonicWordsSuggestions(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 2

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    goto :goto_0

    .line 1117
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$setSearchingHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    .line 1118
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchMnemonicWordsSuggestions(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final showMnemonicWordsSuggestions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->searchResult:Ljava/util/List;

    .line 1124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1125
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->searchResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1126
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    goto/16 :goto_0

    .line 1128
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getSearchingHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintPopupWindow(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    const/16 p1, 0x3e8

    .line 1130
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/high16 v0, -0x80000000

    .line 1129
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1133
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintPopupLayout(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1134
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getSearchingHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->location:[I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1135
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintLayoutManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1136
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintPopupWindow(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    .line 1137
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getFragmentView$p$s1606076837(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    .line 1139
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->location:[I

    aget v0, v3, v0

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1140
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->location:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x40

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1136
    invoke-virtual {p1, v1, v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1143
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$getSearchingHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$setHintEditText$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    :goto_0
    return-void
.end method
