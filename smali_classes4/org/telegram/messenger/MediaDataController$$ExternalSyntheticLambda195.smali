.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JIIIIIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$2:I

    iput p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$3:I

    iput p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$4:I

    iput p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$5:I

    iput p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$6:I

    iput p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$7:I

    iput-boolean p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$8:Z

    iput p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$9:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$2:I

    iget v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$3:I

    iget v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$4:I

    iget v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$5:I

    iget v7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$6:I

    iget v8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$7:I

    iget-boolean v9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$8:Z

    iget v10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda195;->f$9:I

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$k5gMQI8AfQ1mJSIA31ELWDKfY8Y(Lorg/telegram/messenger/MediaDataController;JIIIIIIZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
