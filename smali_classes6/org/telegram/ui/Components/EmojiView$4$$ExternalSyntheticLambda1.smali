.class public final synthetic Lorg/telegram/ui/Components/EmojiView$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$4;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$EmojiStatus;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$4;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$4$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/EmojiView$4;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$4$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$4$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/EmojiView$4;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$4$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$4;->$r8$lambda$Rk5iDC8hS9IxIIvOns5h0ezdzho(Lorg/telegram/ui/Components/EmojiView$4;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    return-void
.end method
