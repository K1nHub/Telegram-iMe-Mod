.class public Lorg/telegram/ui/Components/ImageUpdater;
.super Ljava/lang/Object;
.source "ImageUpdater.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;,
        Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
    }
.end annotation


# static fields
.field private static final observers:[I


# instance fields
.field private bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private canSelectVideo:Z

.field private canceled:Z

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private clearAfterUpdate:Z

.field private convertingVideo:Lorg/telegram/messenger/MessageObject;

.field private currentAccount:I

.field private currentImageProgress:F

.field public currentPicturePath:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

.field private finalPath:Ljava/lang/String;

.field private forUser:Z

.field private forceDarkTheme:Z

.field private gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVideo:Z

.field private openWithFrontfaceCamera:Z

.field public parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private searchAvailable:Z

.field public final setForType:I

.field private showingFromDialog:Z

.field private smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private supportEmojiMarkup:Z

.field private type:I

.field private uploadAfterSelect:Z

.field private uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private uploadingImage:Ljava/lang/String;

.field private uploadingVideo:Ljava/lang/String;

.field private useAttachMenu:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private videoPath:Ljava/lang/String;

.field private videoTimestamp:D


# direct methods
.method public static synthetic $r8$lambda$z-q-WilH86uji2a-Jl2l4BEmxmM(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ImageUpdater;->lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZ0wFt2jcoQEQM3nkx6VR3B5qeo(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 73
    sget v1, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingStarted:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    return-void
.end method

.method public constructor <init>(ZIZ)V
    .locals 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    .line 115
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    .line 116
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    .line 232
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 233
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    .line 234
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    .line 235
    iput p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->setForType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->didSelectPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 902
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 903
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 904
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    .line 905
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 906
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 909
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    :cond_0
    return-void
.end method

.method private createChatAttachView()V
    .locals 7

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 461
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 462
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarPicker(IZ)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v3, Lorg/telegram/ui/Components/ImageUpdater$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ImageUpdater$2;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V

    .line 565
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SetPhotoFor:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "SetPhotoFor"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SuggestPhotoFor:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "SuggestPhotoFor"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private didSelectPhotos(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    .line 577
    iget-boolean v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x44480000    # 800.0f

    if-nez v1, :cond_8

    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 589
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 590
    invoke-static {v1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v3, v6

    move-object v6, p1

    goto/16 :goto_2

    .line 591
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_7

    .line 592
    iget-object v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_5

    .line 593
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 595
    iget v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 596
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    .line 597
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 598
    iget v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 599
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v2, v6

    :cond_2
    if-eqz v2, :cond_3

    .line 604
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 606
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 607
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 608
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 609
    iget-object v7, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, p1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v11, "jpg"

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_4
    move-object p1, v6

    goto :goto_0

    .line 612
    :cond_5
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v8, "jpg"

    invoke-static {v1, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    .line 616
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v8, v3

    if-eqz v0, :cond_6

    .line 617
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0

    .line 619
    :cond_6
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 620
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 621
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 622
    iget-object v7, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v8, p1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x1

    const-string v11, "jpg"

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    :cond_7
    move-object v3, v6

    goto :goto_2

    .line 578
    :cond_8
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 579
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string v8, ""

    .line 580
    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 581
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 582
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 583
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 584
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v3, v4, v1, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 585
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_avatar.mp4"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 586
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v3, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 587
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v0, v3, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 588
    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    invoke-static {p1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 626
    :goto_2
    invoke-direct {p0, v6, v3}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 301
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openVideoCamera()V

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 734
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "photoPath"

    .line 740
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "photoUri"

    .line 742
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 744
    :cond_2
    :goto_0
    new-instance v2, Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PhotoCropActivity;-><init>(Landroid/os/Bundle;)V

    .line 745
    invoke-virtual {v2, p0}, Lorg/telegram/ui/PhotoCropActivity;->setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V

    .line 746
    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 748
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/high16 v1, 0x44480000    # 800.0f

    .line 749
    invoke-static {p1, p2, v1, v1, v0}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 750
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :goto_1
    return-void
.end method

.method private openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setOpenWithFrontFaceCamera(Z)V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 447
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 449
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    if-eqz p1, :cond_3

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 452
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->forUser:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_4
    :goto_0
    return-void
.end method

.method private processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    .line 830
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 831
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 832
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 833
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v1, v9

    goto :goto_0

    .line 834
    :cond_1
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :goto_0
    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x44480000    # 800.0f

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/16 v7, 0x140

    move-object/from16 v1, p1

    .line 835
    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v3, 0x43160000    # 150.0f

    const/16 v6, 0x96

    const/16 v7, 0x96

    move-object/from16 v1, p1

    .line 836
    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v2, "_"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 839
    :try_start_0
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "@50_50"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6, v4, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 846
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_b

    .line 848
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 850
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    if-eqz v1, :cond_a

    if-eqz v8, :cond_8

    .line 851
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_8

    .line 852
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->uploadMarkupVideo:Z

    if-nez v1, :cond_5

    .line 853
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_3

    .line 854
    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(Z)V

    .line 856
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 858
    iget-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v11, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/4 v13, 0x0

    invoke-interface/range {v4 .. v13}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 859
    iget-object v14, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-wide v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-wide/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    invoke-interface/range {v14 .. v23}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 860
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    :cond_4
    return-void

    .line 864
    :cond_5
    iput-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 865
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v10, 0x0

    cmp-long v2, v5, v10

    if-gez v2, :cond_6

    move-wide v5, v10

    .line 866
    :cond_6
    iget-wide v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    sub-long/2addr v10, v5

    long-to-double v5, v10

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v10

    iput-wide v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    .line 867
    iput-boolean v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    .line 868
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 869
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 870
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 871
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v8, v3}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 872
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 873
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_7

    .line 874
    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(Z)V

    .line 876
    :cond_7
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    goto :goto_2

    .line 878
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_9

    .line 879
    invoke-interface {v1, v4}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(Z)V

    .line 881
    :cond_9
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    .line 883
    :goto_2
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 884
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 885
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 886
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 887
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/high16 v5, 0x1000000

    invoke-virtual {v1, v2, v4, v3, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 890
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v6, :cond_b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 891
    iget-object v12, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/4 v15, 0x0

    invoke-interface/range {v6 .. v15}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    :cond_b
    return-void
.end method

.method private startCrop(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 732
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 173
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 214
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 219
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    .line 221
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    :cond_2
    return-void
.end method

.method public didFinishEdit(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 898
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    .line 918
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingStarted:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 923
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 924
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_9

    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, p2, :cond_4

    .line 926
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 927
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 928
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 930
    :cond_3
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 931
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 932
    invoke-virtual {p0, p1, v2, v1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 933
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 934
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    if-ne p1, p2, :cond_5

    .line 935
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 936
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 937
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto/16 :goto_9

    .line 940
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-eq p1, p2, :cond_19

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, v4, :cond_6

    goto/16 :goto_7

    .line 967
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, p2, :cond_8

    .line 968
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 969
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 970
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 971
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    .line 972
    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Long;

    .line 973
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 974
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    iput p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->onUploadProgressChanged(F)V

    goto/16 :goto_9

    .line 976
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_16

    sget v6, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-eq p1, v6, :cond_16

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-eq p1, v6, :cond_16

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne p1, v6, :cond_9

    goto/16 :goto_5

    .line 996
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne p1, p2, :cond_c

    .line 997
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 998
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p3, :cond_b

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p3, :cond_a

    goto :goto_2

    .line 1001
    :cond_a
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 1002
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {p1, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1003
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1004
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1005
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    goto/16 :goto_9

    :cond_b
    :goto_2
    return-void

    .line 1006
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    if-ne p1, p2, :cond_13

    .line 1007
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1008
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_12

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p2, :cond_d

    goto/16 :goto_3

    .line 1011
    :cond_d
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/String;

    .line 1012
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1013
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1014
    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v7, 0x0

    move-object v6, p2

    move-wide v10, v0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1d

    const/4 v0, 0x5

    .line 1016
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    .line 1017
    iget-wide v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    cmpl-double p3, v4, v0

    if-lez p3, :cond_e

    .line 1018
    iput-wide v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    .line 1021
    :cond_e
    iget-wide v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v4

    double-to-long v0, v0

    invoke-static {p2, v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnailAtTime(Ljava/lang/String;J[IZ)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 1023
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1025
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1027
    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1029
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v6, 0x44480000    # 800.0f

    const/16 v7, 0x50

    const/4 v8, 0x0

    const/16 v9, 0x140

    const/16 v10, 0x140

    move-object v4, p3

    .line 1031
    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x43160000    # 150.0f

    const/16 v9, 0x96

    const/16 v10, 0x96

    .line 1032
    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz p3, :cond_11

    .line 1035
    :try_start_0
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {p3, v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@50_50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4, v0, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    :catchall_0
    :cond_11
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1045
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1046
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1047
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 1048
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 1049
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_9

    :cond_12
    :goto_3
    return-void

    .line 1051
    :cond_13
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    if-ne p1, p2, :cond_1d

    .line 1052
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1053
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_14

    goto :goto_4

    .line 1056
    :cond_14
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 1057
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide p1, p1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    long-to-int p2, p1

    int-to-long v4, p2

    const/high16 v6, 0x2000000

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    goto/16 :goto_9

    :cond_15
    :goto_4
    return-void

    .line 977
    :cond_16
    :goto_5
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/String;

    .line 978
    iput v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 980
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 981
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 982
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 983
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {p3, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 985
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eq p1, p2, :cond_18

    if-ne p1, v0, :cond_17

    goto :goto_6

    .line 990
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 991
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz p1, :cond_1d

    .line 992
    invoke-interface {p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    goto/16 :goto_9

    .line 987
    :cond_18
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    const/high16 p2, 0x44480000    # 800.0f

    invoke-static {p1, v2, p2, p2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 988
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_9

    .line 941
    :cond_19
    :goto_7
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 943
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-ne p1, p2, :cond_1b

    .line 945
    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    goto :goto_8

    .line 947
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 948
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-ne p1, p2, :cond_1b

    .line 950
    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 956
    :cond_1b
    :goto_8
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez p3, :cond_1d

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez p3, :cond_1d

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-nez p3, :cond_1d

    .line 957
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 958
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 959
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-ne p1, p2, :cond_1c

    .line 961
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_1c

    .line 962
    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-interface/range {v1 .. v10}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 965
    :cond_1c
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    :cond_1d
    :goto_9
    return-void
.end method

.method public dismissCurrentDialog(Landroid/app/Dialog;)Z
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return v0

    :cond_0
    return v1
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrentImageProgress()F
    .locals 1

    .line 1074
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    return v0
.end method

.method public isUploadingImage()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    .line 790
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$anim;->alpha_in:I

    sget v0, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 791
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 794
    :try_start_0
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-direct {p1, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p3, "Orientation"

    .line 795
    invoke-virtual {p1, p3, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    const/16 p3, 0x8

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10e

    goto :goto_1

    :cond_2
    const/16 p1, 0x5a

    goto :goto_1

    :cond_3
    const/16 p1, 0xb4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 808
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 810
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, p1, v2}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 812
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/16 v0, 0xe

    if-ne p1, v0, :cond_7

    if-eqz p3, :cond_6

    .line 814
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 817
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ImageUpdater;->startCrop(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/16 p3, 0xf

    if-ne p1, p3, :cond_a

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 820
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 821
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    goto :goto_4

    .line 784
    :cond_8
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_9

    .line 786
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 788
    :cond_9
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_a
    :goto_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    .line 689
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_1

    const/16 p3, 0x11

    if-ne p1, p3, :cond_0

    .line 691
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 692
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    .line 694
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onResume()V

    :cond_0
    return-void
.end method

.method public openCamera()V
    .locals 6

    const-string v0, "android.permission.CAMERA"

    .line 631
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 635
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 639
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/16 v3, 0x18

    const-string v4, "output"

    if-lt v1, v3, :cond_2

    .line 643
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".provider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 644
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 645
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 647
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    .line 651
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 653
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public openGallery()V
    .locals 4

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 709
    :cond_1
    new-instance v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR_VIDEO:I

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(IZZLorg/telegram/ui/ChatActivity;)V

    .line 710
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    .line 711
    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ImageUpdater$3;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    .line 728
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V
    .locals 9

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 251
    iput p4, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    .line 252
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    if-eqz v1, :cond_1

    .line 253
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 256
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_2

    .line 259
    sget p4, Lorg/telegram/messenger/R$string;->SetPhotoFor:I

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v5, v4, v0

    const-string v5, "SetPhotoFor"

    invoke-static {v5, p4, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    :cond_2
    if-ne p4, v2, :cond_3

    .line 261
    sget p4, Lorg/telegram/messenger/R$string;->SuggestPhotoFor:I

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v5, v4, v0

    const-string v5, "SuggestPhotoFor"

    invoke-static {v5, p4, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    .line 263
    :cond_3
    sget p4, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    const-string v4, "ChoosePhoto"

    invoke-static {v4, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 266
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    sget v6, Lorg/telegram/messenger/R$string;->ChooseTakePhoto:I

    const-string v7, "ChooseTakePhoto"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_camera:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v6, :cond_4

    .line 275
    sget v6, Lorg/telegram/messenger/R$string;->ChooseRecordVideo:I

    const-string v7, "ChooseRecordVideo"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_video:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    .line 277
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromGallery:I

    const-string v7, "ChooseFromGallery"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    if-eqz v6, :cond_5

    .line 285
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromSearch:I

    const-string v7, "ChooseFromSearch"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_search:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    .line 290
    sget v2, Lorg/telegram/messenger/R$string;->DeletePhoto:I

    const-string v6, "DeletePhoto"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 296
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    .line 297
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 300
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 320
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    .line 321
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 322
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 324
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    const-string p3, "dialogTextRed2"

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    const-string p4, "dialogRedIcon"

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    :cond_8
    :goto_2
    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 15

    move-object v0, p0

    .line 756
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 757
    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v1

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move/from16 v3, p4

    .line 758
    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move-object/from16 v3, p2

    .line 759
    iput-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 760
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 762
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    new-instance v6, Lorg/telegram/ui/Components/ImageUpdater$4;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/Components/ImageUpdater$4;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method public openSearch()V
    .locals 12

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 373
    new-instance v11, Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    move-object v1, v11

    move-object v4, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    .line 374
    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$1;

    invoke-direct {v1, p0, v0, v10}, Lorg/telegram/ui/Components/ImageUpdater$1;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->getInitialSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/PhotoPickerActivity;->setInitialSearchString(Ljava/lang/String;)V

    .line 429
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method public openVideoCamera()V
    .locals 7

    const-string v0, "android.permission.CAMERA"

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 662
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 666
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/16 v3, 0x18

    const-string v4, "output"

    const/4 v5, 0x1

    if-lt v1, v3, :cond_2

    .line 670
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 671
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    .line 674
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const-string v1, "android.intent.extras.CAMERA_FACING"

    .line 676
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extras.LENS_FACING_FRONT"

    .line 677
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    .line 678
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.durationLimit"

    const/16 v3, 0xa

    .line 679
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    .line 682
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 684
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public processEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 9

    .line 142
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 149
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x44480000    # 800.0f

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    invoke-static {v0, v3, v4, v4, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 150
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const/4 v1, 0x0

    .line 151
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string v5, ""

    .line 152
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 153
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 154
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const-wide/16 v5, 0x0

    .line 155
    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 156
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v5, v6, v0, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 157
    iget-object v0, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v1, Ljava/io/File;

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_avatar.mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v5, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 159
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v0, v5, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 160
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-static {p1, v3, v4, v4, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v3, v5

    .line 164
    :goto_2
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-void
.end method

.method public setForceDarkTheme(Z)V
    .locals 0

    .line 1062
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    return-void
.end method

.method public setOpenWithFrontfaceCamera(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    return-void
.end method

.method public setSearchAvailable(Z)V
    .locals 0

    .line 329
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    return-void
.end method

.method public setSearchAvailable(ZZ)V
    .locals 0

    .line 333
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    .line 334
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    return-void
.end method

.method public setShowingFromDialog(Z)V
    .locals 0

    .line 1066
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    return-void
.end method

.method public setUploadAfterSelect(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method
