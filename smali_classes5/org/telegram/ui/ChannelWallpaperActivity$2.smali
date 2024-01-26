.class Lorg/telegram/ui/ChannelWallpaperActivity$2;
.super Ljava/lang/Object;
.source "ChannelWallpaperActivity.java"

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelWallpaperActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$2;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$2;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->isDark()Z

    move-result v0

    return v0
.end method

.method public supportsAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public switchDayNight(Z)V
    .locals 2

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$2;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$600(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$2;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$700(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->toggle()V

    .line 375
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$2;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity$2;->isDark()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ChannelWallpaperActivity;->setForceDark(ZZ)V

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$2;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateColors()V

    return-void
.end method
