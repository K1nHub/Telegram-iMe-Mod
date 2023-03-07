.class public final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 150
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$setupListeners$1$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {p1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$updateLayout(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method
