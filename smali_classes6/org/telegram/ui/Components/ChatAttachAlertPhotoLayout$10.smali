.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;
.super Ljava/lang/Object;
.source "ChatAttachAlertPhotoLayout.java"

# interfaces
.implements Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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
.method public static synthetic $r8$lambda$KVcZt3yddqYIXrNhybV95V87XpQ(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$PGlkiI7Dw8iyE52VL7PMk2NH09Y(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterReleased$3(Ljava/io/File;Z)V

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

    .line 993
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$shutterLongPressed$0()V
    .locals 3

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2708(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$shutterLongPressed$1(Ljava/lang/String;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1033
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1036
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3302(Z)Z

    const/4 v3, 0x1

    .line 1039
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1040
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1041
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1042
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :try_start_1
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v15, v4

    move v14, v5

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    :catch_1
    move v14, v5

    const/4 v15, 0x0

    .line 1045
    :goto_0
    new-instance v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v7, 0x0

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3410()I

    move-result v8

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

    long-to-int v6, v5

    .line 1046
    iput v6, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 1047
    iput-object v1, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 1048
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v5, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1049
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 1050
    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    .line 1051
    iput-boolean v2, v1, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1052
    iput v3, v1, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    .line 1054
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v1, v4, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$shutterLongPressed$2()V
    .locals 3

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$shutterReleased$3(Ljava/io/File;Z)V
    .locals 16

    move-object/from16 v1, p0

    .line 1090
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2302(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    if-eqz p1, :cond_4

    .line 1091
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    .line 1096
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    .line 1097
    invoke-virtual {v0, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    goto :goto_0

    :cond_3
    const/16 v0, 0xb4

    :goto_0
    move v10, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1110
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    .line 1112
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3302(Z)Z

    .line 1115
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1116
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1117
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1118
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1119
    :try_start_2
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v13, v0

    move v12, v4

    goto :goto_2

    :catch_1
    const/4 v4, 0x0

    :catch_2
    move v12, v4

    const/4 v13, 0x0

    .line 1121
    :goto_2
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3410()I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 1122
    iput-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    .line 1123
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move/from16 v4, p2

    invoke-virtual {v3, v0, v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public onTranslationChanged(FF)Z
    .locals 5

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 1134
    :goto_2
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    const/4 v1, 0x0

    cmpg-float v4, v0, v1

    if-gez v4, :cond_5

    .line 1138
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZZ)V

    .line 1139
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    neg-float p2, v0

    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1140
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    return v2

    .line 1143
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-eqz v0, :cond_6

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    :cond_6
    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    cmpl-float v0, p2, v1

    if-nez v0, :cond_7

    .line 1147
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    .line 1149
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-nez v0, :cond_9

    if-nez p1, :cond_8

    cmpl-float p1, p2, v1

    if-eqz p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    return v2
.end method

.method public shutterCancel()V
    .locals 3

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 1065
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    .line 1067
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    .line 1068
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
    .locals 12

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_7

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 1003
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1004
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

    .line 1007
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1e

    const-wide/16 v5, 0x96

    const/4 v7, 0x0

    if-ge v0, v3, :cond_4

    .line 1015
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)[Landroid/widget/ImageView;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    .line 1020
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1032
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraView;)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->runHaptic()V

    return v2

    :cond_7
    :goto_3
    return v4
.end method

.method public shutterReleased()V
    .locals 7

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1076
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    .line 1078
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1083
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

    .line 1086
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

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->isSameTakePictureOrientation()Z

    move-result v1

    .line 1088
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
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/camera/CameraSession;->setFlipFront(Z)V

    .line 1089
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;Z)V

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2302(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->startTakePictureAnimation()V

    :cond_6
    :goto_2
    return-void
.end method
