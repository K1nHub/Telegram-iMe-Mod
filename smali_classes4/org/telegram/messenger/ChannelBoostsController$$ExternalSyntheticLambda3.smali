.class public final synthetic Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChannelBoostsController;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChannelBoostsController;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/ChannelBoostsController;

    iput-object p2, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/exoplayer2/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/ChannelBoostsController;

    iget-object v1, p0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/exoplayer2/util/Consumer;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/ChannelBoostsController;->$r8$lambda$vo5zdiLBQWZ0ZLpJWBxr0kN1tQ8(Lorg/telegram/messenger/ChannelBoostsController;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
