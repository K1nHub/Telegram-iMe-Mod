.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda212;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$AJBYCN3HHa7tQb-k1biYep7OU3M(Lorg/telegram/messenger/MediaDataController;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
