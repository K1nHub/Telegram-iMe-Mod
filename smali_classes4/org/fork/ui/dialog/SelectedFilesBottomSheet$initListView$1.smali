.class public final Lorg/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SelectedFilesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->initListView()Lorg/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    .line 108
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$initListView$1;->this$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->access$getIgnoreLayout$p(Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
