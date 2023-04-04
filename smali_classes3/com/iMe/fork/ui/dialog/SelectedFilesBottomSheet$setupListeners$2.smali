.class final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectedFilesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getFiles$p(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 161
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$getListAdapter(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->getOnFilesChangedAction()Lcom/iMe/fork/utils/Callbacks$Callback1;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    return-void
.end method
