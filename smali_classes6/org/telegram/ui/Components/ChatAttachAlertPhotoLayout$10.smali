.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;
.super Ljava/lang/Object;
.source "ChatAttachAlertPhotoLayout.java"

# interfaces
.implements Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private outputFile:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private zoomingWas:Z


# direct methods
.method public static synthetic $r8$lambda$EA1GFUY7uj9gwTJWEoBX_um4HZI(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterReleased$3(Ljava/io/File;ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KVcZt3yddqYIXrNhybV95V87XpQ(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$j01Gy_i1KAlqe8YKM_kuEoyM96w(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$1(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7oxPFi_ATARQLUCo2fwlEZHBKQ(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$2()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$shutterLongPressed$0()V
    .locals 3

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2908(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$shutterLongPressed$1(Ljava/lang/String;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1117
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v3, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1120
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3502(Z)Z

    const/4 v3, 0x1

    .line 1123
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1124
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1125
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1126
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :try_start_1
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v15, v4

    goto :goto_0

    :catch_0
    move v5, v2

    :catch_1
    move v15, v2

    :goto_0
    move v14, v5

    .line 1129
    new-instance v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v7, 0x0

    sget v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v5, v8, -0x1

    sput v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    const-wide/16 v9, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v16, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v17}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move-wide/from16 v5, p2

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 1130
    iput v5, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 1131
    iput-object v1, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v5, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 1134
    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    .line 1135
    iput-boolean v2, v1, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1136
    iput v3, v1, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    .line 1138
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v1, v4, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$shutterLongPressed$2()V
    .locals 3

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$shutterReleased$3(Ljava/io/File;ZLjava/lang/Integer;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1174
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    if-eqz p1, :cond_2

    .line 1175
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1179
    :cond_0
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3502(Z)Z

    const/4 v1, 0x1

    .line 1182
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1183
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1184
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1185
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :try_start_1
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v14, v3

    goto :goto_0

    :catch_0
    move v4, v2

    :catch_1
    move v14, v2

    :goto_0
    move v13, v4

    .line 1188
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v6, 0x0

    sget v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v4, v7, -0x1

    sput v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    const-wide/16 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    :goto_1
    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 1189
    iput-boolean v1, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    .line 1190
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move/from16 v4, p2

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public onTranslationChanged(FF)Z
    .locals 5

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz v0, :cond_2

    move v0, p2

    goto :goto_2

    :cond_2
    move v0, p1

    .line 1201
    :goto_2
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 1202
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    const/4 v1, 0x0

    cmpg-float v4, v0, v1

    if-gez v4, :cond_5

    .line 1205
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZZ)V

    .line 1206
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    neg-float p2, v0

    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1207
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    return v2

    .line 1210
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-eqz v0, :cond_6

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    :cond_6
    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    cmpl-float v0, p2, v1

    if-nez v0, :cond_7

    .line 1214
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    .line 1216
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-nez v0, :cond_9

    if-nez p1, :cond_8

    cmpl-float p1, p2, v1

    if-eqz p1, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    return v2
.end method

.method public shutterCancel()V
    .locals 3

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 1149
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    .line 1151
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    .line 1152
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    return-void
.end method

.method public shutterLongPressed()Z
    .locals 13

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_9

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v2, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 1080
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_2

    .line 1082
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_9

    .line 1084
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 1087
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v4

    .line 1091
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v5, 0x1

    if-lt v1, v2, :cond_5

    .line 1092
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 1093
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    .line 1094
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v4

    :cond_5
    move v1, v4

    :goto_0
    const/16 v2, 0x1e

    const-wide/16 v6, 0x96

    const/4 v8, 0x0

    if-ge v1, v3, :cond_6

    .line 1099
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)[Landroid/widget/ImageView;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1102
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1103
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_1

    :cond_7
    move v1, v4

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    .line 1104
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1105
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2902(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I

    .line 1107
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3002(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1115
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1116
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_8

    move v9, v5

    goto :goto_2

    :cond_8
    move v9, v4

    :goto_2
    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    new-instance v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;)V

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->runHaptic()V

    return v5

    :cond_9
    :goto_3
    return v4
.end method

.method public shutterReleased()V
    .locals 8

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1160
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    .line 1162
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    return-void

    .line 1166
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1170
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->isSameTakePictureOrientation()Z

    move-result v1

    .line 1172
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v6, v6, Lorg/telegram/ui/ChatActivity;

    if-nez v6, :cond_5

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraSession;->setFlipFront(Z)V

    .line 1173
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;Z)V

    invoke-virtual {v5, v0, v3, v6, v7}, Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;ZLorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->startTakePictureAnimation(Z)V

    :cond_6
    :goto_3
    return-void
.end method
