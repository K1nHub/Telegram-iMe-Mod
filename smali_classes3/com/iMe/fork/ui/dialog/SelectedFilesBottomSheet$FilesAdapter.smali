.class final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilesAdapter"
.end annotation


# instance fields
.field private onItemDeleteClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 500
    sget-object p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;->INSTANCE:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onItemDeleteClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOnItemDeleteClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onItemDeleteClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.ui.dialog.SelectedFilesBottomSheet.FileView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 511
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;I)V

    invoke-virtual {p1, v0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->setupView(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileView;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setOnItemDeleteClick(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onItemDeleteClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
