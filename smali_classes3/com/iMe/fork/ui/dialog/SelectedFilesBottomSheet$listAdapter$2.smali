.class final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectedFilesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;
    .locals 2

    .line 71
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listAdapter$2;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$listAdapter$2;->invoke()Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    move-result-object v0

    return-object v0
.end method
