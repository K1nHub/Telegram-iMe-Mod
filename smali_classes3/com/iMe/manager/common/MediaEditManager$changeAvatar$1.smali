.class final Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaEditManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/common/MediaEditManager;->changeAvatar(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
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
.field final synthetic $reqId:I

.field final synthetic this$0:Lcom/iMe/manager/common/MediaEditManager;


# direct methods
.method constructor <init>(Lcom/iMe/manager/common/MediaEditManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;->this$0:Lcom/iMe/manager/common/MediaEditManager;

    iput p2, p0, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;->$reqId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;->this$0:Lcom/iMe/manager/common/MediaEditManager;

    invoke-static {v0}, Lcom/iMe/manager/common/MediaEditManager;->access$getParentFragment$p(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;->$reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method
