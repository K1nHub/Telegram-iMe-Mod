.class public Lcom/iMe/ui/recognition/PhotoView$$State$ShowPhotoObjectsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "PhotoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/recognition/PhotoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowPhotoObjectsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/recognition/PhotoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final recognizedInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/recognition/PhotoView$$State;Ljava/lang/String;)V
    .locals 1

    .line 211
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showPhotoObjectsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 213
    iput-object p2, p0, Lcom/iMe/ui/recognition/PhotoView$$State$ShowPhotoObjectsDialogCommand;->recognizedInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/recognition/PhotoView;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/iMe/ui/recognition/PhotoView$$State$ShowPhotoObjectsDialogCommand;->recognizedInfo:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/recognition/PhotoView;->showPhotoObjectsDialog(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 207
    check-cast p1, Lcom/iMe/ui/recognition/PhotoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/recognition/PhotoView$$State$ShowPhotoObjectsDialogCommand;->apply(Lcom/iMe/ui/recognition/PhotoView;)V

    return-void
.end method
