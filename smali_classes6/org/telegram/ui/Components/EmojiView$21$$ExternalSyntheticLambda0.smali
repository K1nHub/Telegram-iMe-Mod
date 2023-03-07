.class public final synthetic Lorg/telegram/ui/Components/EmojiView$21$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$21;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$21$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/EmojiView$21;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/EmojiView$21;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$21;->$r8$lambda$Gl4W6eV2P0xAj1Yuo4uj5-F9Dhw(Lorg/telegram/ui/Components/EmojiView$21;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result p1

    return p1
.end method
