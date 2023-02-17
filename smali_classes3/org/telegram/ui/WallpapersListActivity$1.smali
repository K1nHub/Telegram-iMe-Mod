.class Lorg/telegram/ui/WallpapersListActivity$1;
.super Ljava/lang/Object;
.source "WallpapersListActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersListActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersListActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersListActivity;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    .locals 4

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity;

    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    const-string v3, ""

    invoke-direct {v2, v3, p1, p1}, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public needOpenColorPicker()V
    .locals 0

    return-void
.end method
