.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$10:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:J

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZJLorg/telegram/tgnet/TLRPC$TL_channels_getMessages;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$2:Z

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$3:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$4:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$5:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$6:Z

    iput-boolean p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$7:Z

    iput-wide p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$8:J

    iput-object p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$9:Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    iput-object p13, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$10:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$1:J

    iget-boolean v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$2:Z

    iget-object v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$3:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$4:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$5:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$6:Z

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$7:Z

    iget-wide v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$8:J

    iget-object v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$9:Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    iget-object v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda200;->f$10:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$IcGArBpiSaAVOLm2s6hJXEV7zIU(Lorg/telegram/messenger/MediaDataController;JZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZJLorg/telegram/tgnet/TLRPC$TL_channels_getMessages;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
