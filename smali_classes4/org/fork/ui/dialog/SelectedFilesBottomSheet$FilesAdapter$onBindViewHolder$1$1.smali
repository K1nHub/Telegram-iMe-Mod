.class final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectedFilesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;I)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    iput p2, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    invoke-virtual {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;->getOnItemDeleteClick()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onBindViewHolder$1$1;->$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
