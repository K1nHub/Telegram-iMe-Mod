.class public final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 224
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->access$updateLayout(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method
