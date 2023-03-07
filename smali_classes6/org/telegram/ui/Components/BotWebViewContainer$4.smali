.class Lorg/telegram/ui/Components/BotWebViewContainer$4;
.super Landroid/webkit/WebChromeClient;
.source "BotWebViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotWebViewContainer;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPermissionsDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lorg/telegram/ui/Components/BotWebViewContainer;


# direct methods
.method public static synthetic $r8$lambda$SmZArWQXHbVcaU4R7PI-_mHK34g(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lambda$onPermissionRequest$5(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YWg5ljD8BXc6PvQ-ng0BBwL07BY(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lambda$onPermissionRequest$4(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJS6YMi8gnum3ZBe99N_CJ_1LaA(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lambda$onPermissionRequest$3(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jCH0D0wMXJmJtjFN0WyyJ1pH_bU(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lambda$onGeolocationPermissionsShowPrompt$0(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIKYFb6BScsgvpIotXFUtJbdXlQ(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lambda$onGeolocationPermissionsShowPrompt$1(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uESfNkWjQLAhb0k1-3tK6VKWrb4(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lambda$onPermissionRequest$2(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onGeolocationPermissionsShowPrompt$0(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 360
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 361
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1402(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onGeolocationPermissionsShowPrompt$1(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 358
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 359
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1300(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 366
    invoke-interface {p1, p2, p3, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$2(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 406
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 407
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1402(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$3(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 404
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 405
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1300(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$4(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 428
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 429
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1402(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$5(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 426
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 427
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1300(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 9

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 351
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1100(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestGeolocationPermission:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v8}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/R$string;->BotWebViewRequestGeolocationPermissionWithHint:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v8}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    move-object v6, v0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 370
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 11

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    .line 390
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 391
    aget-object v0, v0, v1

    .line 393
    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 394
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void

    .line 398
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v3, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 400
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1100(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const-string v3, "android.permission.RECORD_AUDIO"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$raw;->permission_request_microphone:I

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestMicrophonePermission:I

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v9}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestMicrophonePermissionWithHint:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v9}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v1

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 418
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1100(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const-string v3, "android.permission.CAMERA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestCameraPermission:I

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v9}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestCameraPermissionWithHint:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v9}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v1

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer$4;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 440
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->lastPermissionsDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$900(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroidx/core/util/Consumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$900(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroidx/core/util/Consumer;

    move-result-object p1

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 319
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$800(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$800(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/webkit/ValueCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$802(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 329
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/16 v1, 0xbb8

    if-lt p2, v0, :cond_2

    .line 330
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 332
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.OPENABLE"

    .line 333
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "*/*"

    .line 334
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    sget p3, Lorg/telegram/messenger/R$string;->BotWebViewFileChooserTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
