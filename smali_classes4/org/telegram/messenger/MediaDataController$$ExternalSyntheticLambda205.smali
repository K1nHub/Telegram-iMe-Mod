.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

.field public final synthetic f$9:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZJLorg/telegram/tgnet/TLRPC$TL_channels_getMessages;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$2:Z

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$3:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$4:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$5:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$6:Z

    iput-wide p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$7:J

    iput-object p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$8:Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    iput-object p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$9:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$1:J

    iget-boolean v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$2:Z

    iget-object v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$3:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$4:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$5:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$6:Z

    iget-wide v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$7:J

    iget-object v11, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$8:Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    iget-object v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda205;->f$9:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v1 .. v14}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$_JivjLqvkC8dpb2pZvwhDjx5vm0(Lorg/telegram/messenger/MediaDataController;JZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZJLorg/telegram/tgnet/TLRPC$TL_channels_getMessages;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
