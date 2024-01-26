.class public final synthetic Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelWallpaperActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->$r8$lambda$6h1JCDGqacxX7KwXeBFkBnuZzac(Lorg/telegram/ui/ChannelWallpaperActivity;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method
