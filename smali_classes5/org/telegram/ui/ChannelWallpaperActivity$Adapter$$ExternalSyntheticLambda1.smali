.class public final synthetic Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Ljava/lang/String;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    iput-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    return-void
.end method


# virtual methods
.method public final didSetNewBackground(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;->$r8$lambda$vR90mOxBCqDCRZQKpO9dN8i8FSA(Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;Ljava/lang/String;Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method
