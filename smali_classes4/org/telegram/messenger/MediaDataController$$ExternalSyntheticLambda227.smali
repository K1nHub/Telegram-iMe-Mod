.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Z

.field public final synthetic f$6:J

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

.field public final synthetic f$8:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZJLorg/telegram/tgnet/TLRPC$TL_messages_getMessages;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$4:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$5:Z

    iput-wide p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$6:J

    iput-object p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$7:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    iput-object p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$8:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$4:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$5:Z

    iget-wide v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$6:J

    iget-object v8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$7:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    iget-object v9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda227;->f$8:Ljava/util/concurrent/CountDownLatch;

    move-object v10, p1

    move-object v11, p2

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$fU0nTjc-uHPHB4esBBOo263Xysk(Lorg/telegram/messenger/MediaDataController;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZJLorg/telegram/tgnet/TLRPC$TL_messages_getMessages;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
