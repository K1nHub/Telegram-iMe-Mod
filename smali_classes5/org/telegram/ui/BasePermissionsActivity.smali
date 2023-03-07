.class public Lorg/telegram/ui/BasePermissionsActivity;
.super Landroid/app/Activity;
.source "BasePermissionsActivity.java"


# instance fields
.field protected currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$PG_ukfJ3ivRohvA--3TiT4euYUc(Lorg/telegram/ui/BasePermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->lambda$createPermissionErrorAlert$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$createPermissionErrorAlert$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 111
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showPermissionErrorAlert(ILjava/lang/String;)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->createPermissionErrorAlert(ILjava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected checkPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, v0, [I

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    .line 49
    :cond_1
    array-length v1, p3

    const/4 v2, 0x1

    if-lez v1, :cond_2

    aget v1, p3, v0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x68

    if-ne p1, v3, :cond_4

    if-eqz v1, :cond_3

    .line 53
    sget-object p1, Lorg/telegram/ui/GroupCallActivity;->groupCallInstance:Lorg/telegram/ui/GroupCallActivity;

    if-eqz p1, :cond_1a

    .line 54
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->enableCamera()V

    goto/16 :goto_8

    .line 57
    :cond_3
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->VoipNeedCameraPermission:I

    const-string p3, "VoipNeedCameraPermission"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    const/4 v3, 0x4

    const/16 v4, 0x97

    if-eq p1, v3, :cond_17

    if-ne p1, v4, :cond_5

    goto/16 :goto_6

    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    if-nez v1, :cond_6

    .line 68
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_contacts:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoContactsSharing:I

    const-string p3, "PermissionNoContactsSharing"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    return v0

    .line 71
    :cond_6
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto/16 :goto_8

    :cond_7
    const/4 v3, 0x3

    const-string v4, "PermissionNoCameraWithHint"

    const/16 v5, 0x96

    if-eq p1, v3, :cond_c

    if-ne p1, v5, :cond_8

    goto :goto_3

    :cond_8
    const/16 p2, 0x12

    if-eq p1, p2, :cond_b

    const/16 p2, 0x13

    if-eq p1, p2, :cond_b

    const/16 p2, 0x14

    if-eq p1, p2, :cond_b

    const/16 p2, 0x16

    if-eq p1, p2, :cond_b

    const/16 p2, 0x22

    if-ne p1, p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1a

    .line 100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    if-eqz v1, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    goto :goto_1

    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    :goto_1
    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    :goto_2
    if-nez v1, :cond_1a

    .line 97
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraWithHint:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 76
    :cond_c
    :goto_3
    array-length v1, p2

    array-length v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_4
    if-ge v3, v1, :cond_11

    .line 77
    aget-object v8, p2, v3

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 78
    aget v6, p3, v3

    if-nez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_5

    .line 79
    :cond_e
    aget-object v8, p2, v3

    const-string v9, "android.permission.CAMERA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 80
    aget v7, p3, v3

    if-nez v7, :cond_f

    const/4 v7, 0x1

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    :cond_10
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    if-ne p1, v5, :cond_13

    if-eqz v6, :cond_12

    if-nez v7, :cond_13

    .line 84
    :cond_12
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraMicVideo:I

    const-string p3, "PermissionNoCameraMicVideo"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto :goto_8

    :cond_13
    if-nez v6, :cond_14

    .line 86
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_microphone:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoAudioWithHint:I

    const-string p3, "PermissionNoAudioWithHint"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto :goto_8

    :cond_14
    if-nez v7, :cond_15

    .line 88
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraWithHint:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto :goto_8

    .line 90
    :cond_15
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    if-eqz p1, :cond_16

    .line 91
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    :cond_16
    return v0

    :cond_17
    :goto_6
    if-nez v1, :cond_19

    .line 61
    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_folder:I

    if-ne p1, v4, :cond_18

    sget p1, Lorg/telegram/messenger/R$string;->PermissionNoStorageAvatar:I

    const-string p3, "PermissionNoStorageAvatar"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 62
    :cond_18
    sget p1, Lorg/telegram/messenger/R$string;->PermissionStorageWithHint:I

    const-string p3, "PermissionStorageWithHint"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 61
    :goto_7
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto :goto_8

    .line 64
    :cond_19
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    :cond_1a
    :goto_8
    return v2
.end method

.method protected createPermissionErrorAlert(ILjava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4

    .line 106
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "dialogTopBackground"

    .line 107
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 108
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string v0, "PermissionOpenSettings"

    .line 109
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/BasePermissionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BasePermissionsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/BasePermissionsActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string v0, "ContactsPermissionAlertNotNow"

    .line 118
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    return-object p1
.end method
