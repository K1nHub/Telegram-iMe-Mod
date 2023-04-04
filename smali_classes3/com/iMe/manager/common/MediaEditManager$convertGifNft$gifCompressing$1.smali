.class public final Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;
.super Ljava/lang/Object;
.source "MediaEditManager.kt"

# interfaces
.implements Lcom/otaliastudios/gif/GIFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/common/MediaEditManager;->convertGifNft(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $avatarPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/manager/common/MediaEditManager;


# direct methods
.method constructor <init>(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;->this$0:Lcom/iMe/manager/common/MediaEditManager;

    iput-object p2, p0, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;->$avatarPath:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGIFCompressionCanceled()V
    .locals 0

    return-void
.end method

.method public onGIFCompressionCompleted()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;->this$0:Lcom/iMe/manager/common/MediaEditManager;

    invoke-static {v0}, Lcom/iMe/manager/common/MediaEditManager;->access$getLoadingAlertDialog(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 182
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;->this$0:Lcom/iMe/manager/common/MediaEditManager;

    invoke-static {v0}, Lcom/iMe/manager/common/MediaEditManager;->access$getImageUpdater(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;->$avatarPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onGIFCompressionFailed(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ThrowableExtKt;->showToast(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onGIFCompressionProgress(D)V
    .locals 0

    return-void
.end method
