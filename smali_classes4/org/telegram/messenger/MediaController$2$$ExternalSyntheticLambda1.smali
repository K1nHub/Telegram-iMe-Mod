.class public final synthetic Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController$2;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController$2;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/MediaController$2;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;->f$1:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/MediaController$2;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;->f$1:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController$2;->$r8$lambda$Qch3lgW2DDid1vB46sgCw05oJjo(Lorg/telegram/messenger/MediaController$2;Ljava/nio/ByteBuffer;)V

    return-void
.end method
