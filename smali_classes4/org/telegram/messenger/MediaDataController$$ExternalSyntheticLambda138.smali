.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILjava/lang/String;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$3:I

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$4:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$5:Z

    iput-object p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$6:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$3:I

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$4:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$5:Z

    iget-object v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda138;->f$6:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$qdGlvlrIki-0O8oo0BPH8EG7Thk(Lorg/telegram/messenger/MediaDataController;ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ILjava/lang/String;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method
