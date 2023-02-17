.class public final synthetic Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

.field public final synthetic f$1:Lcom/smedialink/manager/common/MediaEditManager;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Lcom/smedialink/manager/common/MediaEditManager;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iput-object p2, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/manager/common/MediaEditManager;

    iput-boolean p3, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$2:Z

    iput p4, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v1, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/manager/common/MediaEditManager;

    iget-boolean v2, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$2:Z

    iget v3, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/smedialink/manager/common/MediaEditManager$openStickerEditor$1$1;->$r8$lambda$E9CM0PraBiaBKram9FQfBzLHDZ0(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Lcom/smedialink/manager/common/MediaEditManager;ZILjava/lang/String;I)V

    return-void
.end method
