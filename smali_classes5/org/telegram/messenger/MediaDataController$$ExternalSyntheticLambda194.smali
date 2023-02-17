.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$2:I

    iput p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$3:I

    iput p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$4:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$2:I

    iget v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$3:I

    iget v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$4:I

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$7JDNf5ZQUGAK6yHyI-3hWdjljbQ(Lorg/telegram/messenger/MediaDataController;JIIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
