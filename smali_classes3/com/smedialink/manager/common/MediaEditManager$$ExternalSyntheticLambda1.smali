.class public final synthetic Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/manager/common/MediaEditManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public final synthetic f$3:D

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/manager/common/MediaEditManager;

    iput-object p2, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-wide p4, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$3:D

    iput-object p6, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object p8, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$6:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/manager/common/MediaEditManager;

    iget-object v1, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v2, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-wide v3, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$3:D

    iget-object v5, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v7, p0, Lcom/smedialink/manager/common/MediaEditManager$$ExternalSyntheticLambda1;->f$6:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static/range {v0 .. v7}, Lcom/smedialink/manager/common/MediaEditManager;->$r8$lambda$CL6abSI2vI247RQNkSaRmDRZHX0(Lcom/smedialink/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method
