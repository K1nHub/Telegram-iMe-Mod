.class final Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaEditManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/common/MediaEditManager;->setNftAvatar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $nftTokenUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/manager/common/MediaEditManager;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/common/MediaEditManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    iput-object p2, p0, Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;->$nftTokenUrl:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    invoke-static {v0}, Lcom/smedialink/manager/common/MediaEditManager;->access$getImageLoader(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;->$nftTokenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/smedialink/manager/common/MediaEditManager$setNftAvatar$1;->this$0:Lcom/smedialink/manager/common/MediaEditManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smedialink/manager/common/MediaEditManager;->access$setLoadingFileUrl$p(Lcom/smedialink/manager/common/MediaEditManager;Ljava/lang/String;)V

    return-void
.end method
