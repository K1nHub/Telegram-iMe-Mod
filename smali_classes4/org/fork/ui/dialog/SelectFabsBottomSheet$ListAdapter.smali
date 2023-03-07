.class final Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectFabsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/SelectFabsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/SelectFabsBottomSheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectFabsBottomSheet;->access$getFabs(Lorg/fork/ui/dialog/SelectFabsBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/CircleCheckCell;

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    .line 168
    invoke-static {v0}, Lorg/fork/ui/dialog/SelectFabsBottomSheet;->access$getFabs(Lorg/fork/ui/dialog/SelectFabsBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    const-string v1, "chats_actionBackground"

    .line 169
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;->iconResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;Z)I

    move-result v2

    invoke-static {p2}, Lcom/smedialink/utils/extentions/model/filter/FilterFabExtKt;->nameResId(Lcom/smedialink/storage/domain/model/filters/FilterFab;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(fab.nameResId())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/fork/ui/view/CircleCheckCell;->setData(IILjava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lorg/fork/ui/dialog/SelectFabsBottomSheet;->getSelectedFabs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/CircleCheckCell;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 154
    iget-object p2, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 156
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 153
    new-instance v1, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter$onCreateViewHolder$1;

    iget-object v2, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-direct {v1, v2, p2, v0}, Lorg/fork/ui/dialog/SelectFabsBottomSheet$ListAdapter$onCreateViewHolder$1;-><init>(Lorg/fork/ui/dialog/SelectFabsBottomSheet;Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
