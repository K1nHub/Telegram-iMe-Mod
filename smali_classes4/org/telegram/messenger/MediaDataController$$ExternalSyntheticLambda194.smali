.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda194;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$jb5fKKLPGvEj3vAcUdsG14iufHY(Lorg/telegram/messenger/MediaDataController;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
