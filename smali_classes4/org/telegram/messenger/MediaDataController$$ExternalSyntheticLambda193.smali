.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda193;->f$3:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$4IG-qXk_q87ANdcyLLK1V3RiKeA(Lorg/telegram/messenger/MediaDataController;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
