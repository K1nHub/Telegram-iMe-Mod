.class public final synthetic Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelWallpaperActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->$r8$lambda$y7Equxz1EHqMJa4uVdCt7KUY2Js(Lorg/telegram/ui/ChannelWallpaperActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method
