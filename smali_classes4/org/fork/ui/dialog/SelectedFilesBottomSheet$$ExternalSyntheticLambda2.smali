.class public final synthetic Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

.field public final synthetic f$1:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    iput-object p2, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$1:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$0:Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    iget-object v1, p0, Lorg/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$1:Lorg/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/SelectedFilesBottomSheet;->$r8$lambda$1kPAsSXxs8b_95LlGrMnByfdL_k(Lorg/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lorg/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method
