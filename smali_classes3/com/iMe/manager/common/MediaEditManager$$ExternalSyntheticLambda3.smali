.class public final synthetic Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/common/MediaEditManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/manager/common/MediaEditManager;

    iput-object p2, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object p4, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$3:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/manager/common/MediaEditManager;

    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, p0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;->f$3:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/iMe/manager/common/MediaEditManager;->$r8$lambda$OIjDt5H4v_PmYa4WJ-j7Zq1igGs(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
