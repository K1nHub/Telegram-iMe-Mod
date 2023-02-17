.class final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;
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

.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 383
    sget-object p1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;->INSTANCE:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onItemDeleteClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

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

    .line 383
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onItemDeleteClick:Lkotlin/jvm/functions/Function1;

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

    .line 392
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 393
    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    new-instance v1, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;

    invoke-direct {v1, p0, p2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;-><init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;I)V

    invoke-virtual {p1, v0, v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;->setupView(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 380
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileView;-><init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/content/Context;)V

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

    .line 383
    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onItemDeleteClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
