.class public final synthetic Lorg/telegram/ui/Stories/recorder/PaintView$23$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$23$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView$23$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$23$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$23$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$23;->$r8$lambda$NNb-0rHNtdvrDojL07md4MKb974(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;)V

    return-void
.end method
