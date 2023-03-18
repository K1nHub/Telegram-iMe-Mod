.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;
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

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

.field public final synthetic f$9:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZJLorg/telegram/tgnet/TLRPC$TL_messages_getMessages;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$4:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$5:Z

    iput-boolean p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$6:Z

    iput-wide p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$7:J

    iput-object p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$8:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    iput-object p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$9:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$4:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$5:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$6:Z

    iget-wide v7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$7:J

    iget-object v9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$8:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    iget-object v10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$9:Ljava/util/concurrent/CountDownLatch;

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$qPoeLHoH5scOK_ChD7JpwelkXzU(Lorg/telegram/messenger/MediaDataController;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZJLorg/telegram/tgnet/TLRPC$TL_messages_getMessages;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
