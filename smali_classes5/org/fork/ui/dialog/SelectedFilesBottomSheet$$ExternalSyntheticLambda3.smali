.class public final synthetic Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda3;->f$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda3;->f$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
