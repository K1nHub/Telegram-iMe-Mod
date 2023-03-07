.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HintAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1387:1\n1#2:1388\n764#3:1389\n855#3,2:1390\n*S KotlinDebug\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter\n*L\n1059#1:1389\n1059#1:1390,2\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

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

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public static synthetic $r8$lambda$bcbR1VRyL5bYQiCp-GWKVb7f5_A(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/String;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchHintsFor$lambda-2(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/String;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fq_b6gS3SZ-De-pn7ANBtT9h6Bw(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Ljava/util/List;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchHintsFor$lambda-2$lambda-1(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Ljava/util/List;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->context:Landroid/content/Context;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1042
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->location:[I

    .line 1044
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchResult:Ljava/util/List;

    return-void
.end method

.method private static final searchHintsFor$lambda-2(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/String;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$editText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintWords$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1059
    invoke-static {v3, p1, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1060
    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1061
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1063
    :cond_2
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, v0, p0, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Ljava/util/List;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final searchHintsFor$lambda-2$lambda-1(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Ljava/util/List;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newSearchResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$editText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1065
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchResult:Ljava/util/List;

    .line 1066
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1067
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1068
    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    goto :goto_1

    .line 1070
    :cond_0
    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintEditText$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    move-result-object p1

    if-ne p1, p3, :cond_1

    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintPopupWindow(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    const/16 p1, 0x3e8

    .line 1072
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/high16 v0, -0x80000000

    .line 1071
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1075
    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintPopupLayout(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1076
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->location:[I

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1077
    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintLayoutManager$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1078
    :goto_0
    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintPopupWindow(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    .line 1079
    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getFragmentView$p$s1606076837(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    .line 1081
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->location:[I

    aget v0, v3, v0

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1082
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->location:[I

    const/4 v3, 0x1

    aget p0, p0, v3

    const/16 v3, 0x40

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr p0, v3

    .line 1078
    invoke-virtual {p1, v1, v2, v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1085
    :cond_3
    invoke-static {p2, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$setHintEditText$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/String;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchResult:Ljava/util/List;

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

    .line 1113
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 1114
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 1115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchResult:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 1102
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "actionBarDefaultSubmenuItem"

    .line 1103
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x10

    .line 1104
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, -0x2

    const/4 v0, -0x1

    .line 1105
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1100
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final searchHintsFor(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 6

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1051
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void

    .line 1054
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1055
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1056
    iput-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1058
    :cond_2
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1088
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Ljava/lang/String;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    iput-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchRunnable:Ljava/lang/Runnable;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-wide/16 v4, 0xc8

    .line 1058
    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method
