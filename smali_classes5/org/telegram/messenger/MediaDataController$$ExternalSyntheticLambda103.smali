.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$StickerSet;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;->f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;->f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda103;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$mWKNiMHIkTdHb0AEdOCGPmsEN4E(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$StickerSet;I)V

    return-void
.end method
