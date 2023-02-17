.class Lorg/telegram/ui/Components/ChatActivityEnterView$14;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$DD6kxSzqpA0gJC7KljMMNKcoTYI(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->lambda$onCreateInputConnection$0(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ecdqhq3edjBc3xvlaJQRmBesHsU(Lorg/telegram/ui/Components/ChatActivityEnterView$14;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->lambda$onTouchEvent$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$GjtGDLW6B4Rta_RRMRUHT4DV3NU(Lorg/telegram/ui/Components/ChatActivityEnterView$14;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$H66b7jWnI-a6KKE32zF81XPLgDA(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->lambda$editPhoto$4(Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QA-ojxATFdMYn48-27sr9c5siDo(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Landroid/app/Activity;Landroid/net/Uri;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->lambda$editPhoto$5(Landroid/app/Activity;Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3wONf1ldsh5cMFC1W5SwSqhvl4(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->lambda$onCreateInputConnection$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;Landroid/app/Activity;)V
    .locals 0

    .line 2340
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$fragment:Lorg/telegram/ui/ChatActivity;

    iput-object p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$context:Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 2340
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method

.method private editPhoto(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 2510
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$fragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 2511
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$context:Landroid/app/Activity;

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Landroid/app/Activity;Landroid/net/Uri;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$editPhoto$4(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 2527
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$editPhoto$5(Landroid/app/Activity;Landroid/net/Uri;Ljava/io/File;)V
    .locals 12

    .line 2513
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 2514
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2517
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 2518
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2519
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 2521
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 2522
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 2523
    new-instance p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 2524
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2530
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreateInputConnection$0(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->send(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateInputConnection$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 8

    .line 2387
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastNMR1()Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    .line 2389
    :try_start_0
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0

    .line 2394
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p3

    const-string p4, "image/gif"

    invoke-virtual {p3, p4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p4, p3}, Lorg/telegram/messenger/SendMessagesHelper;->shouldSendWebPAsSticker(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 2401
    :cond_1
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->editPhoto(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 2395
    :cond_2
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 2398
    :cond_3
    invoke-direct {p0, p2, v1, v0, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->send(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V

    goto :goto_3

    .line 2396
    :cond_4
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    :goto_3
    return v1
.end method

.method private synthetic lambda$onTouchEvent$2()V
    .locals 1

    .line 2421
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3()V
    .locals 2

    .line 2438
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2439
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method

.method private openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2536
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2537
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2539
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Ljava/util/ArrayList;Ljava/io/File;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 2548
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2549
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    new-instance v9, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;

    invoke-direct {v9, p0, v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/io/File;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 2593
    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    move-object v5, p1

    .line 2549
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method private send(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 2367
    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v2, "image/gif"

    .line 2368
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v7, "image/gif"

    move-object/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v16, p4

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Landroidx/core/view/inputmethod/InputContentInfoCompat;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;)V

    goto :goto_0

    .line 2371
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p1

    move/from16 v15, p2

    move-object/from16 v17, p4

    invoke-static/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;ZILjava/lang/String;)V

    .line 2373
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2374
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->preventInput:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2459
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 2472
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2473
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->extendActionMode(Landroid/view/Menu;)Z

    :cond_0
    return-void
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 2598
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method protected onContextMenuClose()V
    .locals 1

    .line 2361
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2362
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onContextMenuClose()V

    :cond_0
    return-void
.end method

.method protected onContextMenuOpen()V
    .locals 1

    .line 2354
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onContextMenuOpen()V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6

    .line 2380
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "image/gif"

    const-string v2, "image/*"

    const-string v3, "image/jpg"

    const-string v4, "image/png"

    const-string v5, "image/webp"

    .line 2385
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 2386
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2405
    invoke-static {v0, p1, v2}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2407
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 2485
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2486
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->onMeasure(II)V

    .line 2487
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2488
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 2490
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 2346
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onScrollChanged(IIII)V

    .line 2347
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2348
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onEditTextScroll()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 2464
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->onSelectionChanged(II)V

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextSelectionChanged(II)V

    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3

    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2498
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2499
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2502
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->editPhoto(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2506
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2414
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2417
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_1

    .line 2419
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 2420
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 2424
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/ui/Components/CanvasButton;->setRect(IIII)V

    .line 2425
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2427
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 2428
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 2429
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 2430
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 2431
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2433
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 2434
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 2435
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2437
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;)V

    const-wide/16 v1, 0xc8

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 2442
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_1
    return v0

    .line 2447
    :cond_6
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2449
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return v1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 2603
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2606
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 2

    .line 2479
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x3e8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2480
    invoke-super {p0, p1}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOffsetY(F)V
    .locals 1

    .line 2611
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setOffsetY(F)V

    .line 2612
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2613
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
