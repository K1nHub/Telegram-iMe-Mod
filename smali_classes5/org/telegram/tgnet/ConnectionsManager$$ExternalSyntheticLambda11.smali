.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/RequestDelegate;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/RequestDelegateTimestamp;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/tgnet/RequestDelegate;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iput-wide p5, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/tgnet/RequestDelegate;

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iget-wide v4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;->f$4:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$ib71F1q99ToFRubQ9aGPYJxbSKQ(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V

    return-void
.end method
