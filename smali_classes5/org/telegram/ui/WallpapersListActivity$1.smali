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

    .line 470
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 473
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity;

    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    const-string v2, ""

    invoke-direct {v1, v2, p1, p1}, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 474
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$000(Lorg/telegram/ui/WallpapersListActivity;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$000(Lorg/telegram/ui/WallpapersListActivity;)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    new-instance p2, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/WallpapersListActivity;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    .line 478
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$1;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public needOpenColorPicker()V
    .locals 0

    return-void
.end method
