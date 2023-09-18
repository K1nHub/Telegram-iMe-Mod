.class public final synthetic Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/ResultCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ResultCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$WallPaper;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/tgnet/ResultCallback;

    iput-wide p2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/tgnet/ResultCallback;

    iget-wide v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$WallPaper;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->$r8$lambda$bzfNy4ixZNMhTQ1AUKKnc-5MapE(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/tgnet/TLRPC$WallPaper;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/tgnet/ResultCallback$-CC;->$default$onError(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
