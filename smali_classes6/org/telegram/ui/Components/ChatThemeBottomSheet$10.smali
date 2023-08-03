.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;
.super Ljava/lang/Object;
.source "ChatThemeBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->openGalleryForBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$47ca_jiNTcV9e2JeXBdOSsAAbfA(Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->lambda$didPressedButton$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$NYvf7hKQoJTo56UkwLpMLuIq8-s(Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->lambda$onWallpaperSelected$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didPressedButton$0()V
    .locals 1

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onWallpaperSelected$1()V
    .locals 1

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIZLjava/lang/String;Z)V
    .locals 0

    .line 1139
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    .line 1140
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1141
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1143
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 1149
    new-instance p1, Ljava/io/File;

    const/4 p3, 0x4

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5}, Ljava/security/SecureRandom;->nextInt()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ".jpg"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1150
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p3

    const/4 p4, 0x0

    .line 1151
    iget p5, p3, Landroid/graphics/Point;->x:I

    int-to-float p5, p5

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    const/4 p6, 0x1

    invoke-static {p2, p4, p5, p3, p6}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1152
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1153
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p5, 0x57

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1155
    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity;

    new-instance p4, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    const-string p5, ""

    invoke-direct {p4, p5, p1, p1}, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p3, p4, p2}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 1156
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    .line 1157
    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    .line 1161
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ThemePreviewActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1165
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$didSelectBot(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public synthetic doOnIdle(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$doOnIdle(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic needEnterComment()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$needEnterComment(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onCameraOpened()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onCameraOpened(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public onWallpaperSelected(Ljava/lang/Object;)V
    .locals 4

    .line 1171
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    .line 1172
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    .line 1173
    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    .line 1177
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method

.method public synthetic openAvatarsSearch()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZI)V

    return-void
.end method
