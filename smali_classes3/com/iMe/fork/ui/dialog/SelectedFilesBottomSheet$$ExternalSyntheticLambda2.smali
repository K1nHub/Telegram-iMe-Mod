.class public final synthetic Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

.field public final synthetic f$2:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$2:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$$ExternalSyntheticLambda2;->f$2:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;

    invoke-static {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;->$r8$lambda$XR2jF7Mb0uMezJawC_hAKcP2qt4(Ljava/io/File;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FileItem;Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V

    return-void
.end method
