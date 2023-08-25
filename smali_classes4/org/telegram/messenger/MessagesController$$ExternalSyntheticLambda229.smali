.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$photos_Photos;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZJIILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$1:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$2:Z

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$3:J

    iput p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$4:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$5:I

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$6:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$1:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$2:Z

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$3:J

    iget v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$4:I

    iget v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$5:I

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda229;->f$6:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$oNU2W6bFx2DPtXAb_qTQRTUw4Qg(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZJIILjava/util/ArrayList;)V

    return-void
.end method
