.class public final synthetic Lorg/telegram/ui/Components/EmojiView$25$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$25;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$25;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/EmojiView$25;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$25$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/EmojiView$25;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$25;->$r8$lambda$1ho_Evlm97cCkq2nE0UXHpAH0P4(Lorg/telegram/ui/Components/EmojiView$25;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result p1

    return p1
.end method
