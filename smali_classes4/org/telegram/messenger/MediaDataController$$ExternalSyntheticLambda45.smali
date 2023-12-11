.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JILorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$2:I

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$3:Lorg/telegram/tgnet/TLRPC$Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$2:I

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda45;->f$3:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$95CjpSv5S0f9QjFvoU7mgyLjIeE(Lorg/telegram/messenger/MediaDataController;JILorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method
