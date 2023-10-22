.class public final synthetic Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChannelBoostsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lcom/google/android/exoplayer2/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChannelBoostsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/ChannelBoostsController;

    iput-object p2, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/exoplayer2/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/ChannelBoostsController;

    iget-object v1, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/exoplayer2/util/Consumer;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->$r8$lambda$gIzPGCoeSNtV8-lyyZaFSsDVaR0(Lorg/telegram/messenger/ChannelBoostsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method
