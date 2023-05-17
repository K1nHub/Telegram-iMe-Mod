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

    .line 75
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

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    .line 117
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    .line 118
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    .line 239
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 240
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    .line 241
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    .line 242
    iput p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->setForType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->didSelectPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 896
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 897
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 898
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    .line 899
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 900
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 902
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 903
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    :cond_0
    return-void
.end method

.method private createChatAttachView()V
    .locals 7

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 468
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 469
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarPicker(IZ)V

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v3, Lorg/telegram/ui/Components/ImageUpdater$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ImageUpdater$2;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V

    .line 572
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 573
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

    .line 575
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

    .line 580
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    .line 584
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

    .line 596
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 597
    invoke-static {v1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v3, v6

    move-object v6, p1

    goto/16 :goto_2

    .line 598
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_7

    .line 599
    iget-object v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_5

    .line 600
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 602
    iget v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 603
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    .line 604
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 605
    iget v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 606
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v2, v6

    :cond_2
    if-eqz v2, :cond_3

    .line 611
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 613
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 614
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 615
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 616
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

    .line 619
    :cond_5
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 620
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

    .line 621
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v8, v3

    if-eqz v0, :cond_6

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0

    .line 626
    :cond_6
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 627
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 628
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 629
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

    .line 585
    :cond_8
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 586
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string v8, ""

    .line 587
    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 588
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 589
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 590
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 591
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v3, v4, v1, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 592
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

    .line 593
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v3, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 594
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v0, v3, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 595
    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    invoke-static {p1, v6, v7, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 633
    :goto_2
    invoke-direct {p0, v6, v3}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 308
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

    .line 323
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openVideoCamera()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    goto :goto_0

    .line 311
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 741
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    .line 745
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "photoPath"

    .line 747
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "photoUri"

    .line 749
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 751
    :cond_2
    :goto_0
    new-instance v2, Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PhotoCropActivity;-><init>(Landroid/os/Bundle;)V

    .line 752
    invoke-virtual {v2, p0}, Lorg/telegram/ui/PhotoCropActivity;->setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V

    .line 753
    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 755
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/high16 v1, 0x44480000    # 800.0f

    .line 756
    invoke-static {p1, p2, v1, v1, v0}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 757
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :goto_1
    return-void
.end method

.method private openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setOpenWithFrontFaceCamera(Z)V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 454
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 456
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    if-eqz p1, :cond_3

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 459
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->forUser:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    .line 460
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

    .line 824
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 825
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 826
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 827
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v1, v9

    goto :goto_0

    .line 828
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

    .line 829
    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v3, 0x43160000    # 150.0f

    const/16 v6, 0x96

    const/16 v7, 0x96

    move-object/from16 v1, p1

    .line 830
    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v2, "_"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 833
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

    .line 834
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

    .line 835
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6, v4, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :catchall_0
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_b

    .line 842
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 843
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

    .line 844
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    if-eqz v1, :cond_a

    if-eqz v8, :cond_8

    .line 845
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_8

    .line 846
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->uploadMarkupVideo:Z

    if-nez v1, :cond_5

    .line 847
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_3

    .line 848
    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(Z)V

    .line 850
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 852
    iget-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v11, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/4 v13, 0x0

    invoke-interface/range {v4 .. v13}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 853
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

    .line 854
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    :cond_4
    return-void

    .line 858
    :cond_5
    iput-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 859
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v10, 0x0

    cmp-long v2, v5, v10

    if-gez v2, :cond_6

    move-wide v5, v10

    .line 860
    :cond_6
    iget-wide v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    sub-long/2addr v10, v5

    long-to-double v5, v10

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v10

    iput-wide v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    .line 861
    iput-boolean v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    .line 862
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 863
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 864
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 865
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v8, v3}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 866
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 867
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_7

    .line 868
    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(Z)V

    .line 870
    :cond_7
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    goto :goto_1

    .line 872
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_9

    .line 873
    invoke-interface {v1, v4}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(Z)V

    .line 875
    :cond_9
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    .line 877
    :goto_1
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 878
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 879
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 880
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 881
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/high16 v5, 0x1000000

    invoke-virtual {v1, v2, v4, v3, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 884
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v6, :cond_b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 885
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

    .line 739
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 221
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 226
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    .line 228
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    :cond_2
    return-void
.end method

.method public didFinishEdit(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 892
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    .line 912
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingStarted:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 917
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_9

    :cond_1
    :goto_0
    return-void

    .line 919
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, p2, :cond_4

    .line 920
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 921
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 922
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 924
    :cond_3
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 925
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 926
    invoke-virtual {p0, p1, v2, v1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 927
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 928
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    if-ne p1, p2, :cond_5

    .line 929
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/ImageUpdater;->observers:[I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 930
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 931
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->gifStickerAvatarPreparingAlertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto/16 :goto_9

    .line 934
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-eq p1, p2, :cond_1b

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, v4, :cond_6

    goto/16 :goto_7

    .line 961
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, p2, :cond_8

    .line 962
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 963
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 964
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 965
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    .line 966
    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Long;

    .line 967
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 968
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    iput p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->onUploadProgressChanged(F)V

    goto/16 :goto_9

    .line 970
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_18

    sget v6, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-eq p1, v6, :cond_18

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-eq p1, v6, :cond_18

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne p1, v6, :cond_9

    goto/16 :goto_5

    .line 990
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne p1, p2, :cond_c

    .line 991
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 992
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p3, :cond_b

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p3, :cond_a

    goto :goto_2

    .line 995
    :cond_a
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 996
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {p1, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 997
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 998
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 999
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    goto/16 :goto_9

    :cond_b
    :goto_2
    return-void

    .line 1000
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    if-ne p1, p2, :cond_15

    .line 1001
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1002
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_14

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p2, :cond_d

    goto/16 :goto_3

    .line 1005
    :cond_d
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/String;

    .line 1006
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1007
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1008
    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v7, 0x0

    move-object v6, p2

    move-wide v10, v0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1f

    const/4 v0, 0x5

    .line 1010
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    .line 1011
    iget-wide v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    cmpl-double p3, v4, v0

    if-lez p3, :cond_e

    .line 1012
    iput-wide v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    .line 1015
    :cond_e
    iget-wide v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    invoke-static {p2, v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnailAtTime(Ljava/lang/String;J[IZ)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 1017
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    const-string v1, "delete file "

    if-eqz v0, :cond_10

    .line 1019
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_f

    .line 1020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1022
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1024
    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1026
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_11

    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1029
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
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

    if-eqz p3, :cond_13

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
    :cond_13
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

    :cond_14
    :goto_3
    return-void

    .line 1051
    :cond_15
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    if-ne p1, p2, :cond_1f

    .line 1052
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1053
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_16

    goto :goto_4

    .line 1056
    :cond_16
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

    long-to-int p1, p1

    int-to-long v4, p1

    const/high16 v6, 0x2000000

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    goto/16 :goto_9

    :cond_17
    :goto_4
    return-void

    .line 971
    :cond_18
    :goto_5
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/String;

    .line 972
    iput v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 974
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 975
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 976
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 977
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {p3, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 979
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eq p1, p2, :cond_1a

    if-ne p1, v0, :cond_19

    goto :goto_6

    .line 984
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 985
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz p1, :cond_1f

    .line 986
    invoke-interface {p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    goto/16 :goto_9

    .line 981
    :cond_1a
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    const/high16 p2, 0x44480000    # 800.0f

    invoke-static {p1, v2, p2, p2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 982
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_9

    .line 935
    :cond_1b
    :goto_7
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    .line 936
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 937
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-ne p1, p2, :cond_1d

    .line 939
    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    goto :goto_8

    .line 941
    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 942
    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-ne p1, p2, :cond_1d

    .line 944
    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 950
    :cond_1d
    :goto_8
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez p3, :cond_1f

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez p3, :cond_1f

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-nez p3, :cond_1f

    .line 951
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 952
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 953
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-ne p1, p2, :cond_1e

    .line 955
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_1e

    .line 956
    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-interface/range {v1 .. v10}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 959
    :cond_1e
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    :cond_1f
    :goto_9
    return-void
.end method

.method public dismissCurrentDialog(Landroid/app/Dialog;)Z
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 368
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

    .line 361
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

    .line 183
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    return v0
.end method

.method public isUploadingImage()Z
    .locals 1

    .line 216
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
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xd

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$anim;->alpha_in:I

    sget v0, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 802
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 804
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V

    .line 805
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 806
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_3

    .line 808
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ImageUpdater;->startCrop(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p3, 0xf

    if-ne p1, p3, :cond_7

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 815
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    goto :goto_2

    .line 795
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_6

    .line 797
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 799
    :cond_6
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_7
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    .line 696
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_1

    const/16 p3, 0x11

    if-ne p1, p3, :cond_0

    .line 698
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    .line 701
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onResume()V

    :cond_0
    return-void
.end method

.method public openCamera()V
    .locals 6

    const-string v0, "android.permission.CAMERA"

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 642
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

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 646
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/16 v3, 0x18

    const-string v4, "output"

    if-lt v1, v3, :cond_2

    .line 650
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

    .line 651
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 652
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 654
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 656
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    .line 658
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 660
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public openGallery()V
    .locals 4

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 716
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

    .line 717
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    .line 718
    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ImageUpdater$3;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    .line 735
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V
    .locals 9

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 258
    iput p4, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    .line 259
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 263
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_2

    .line 266
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

    .line 268
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

    .line 270
    :cond_3
    sget p4, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    const-string v4, "ChoosePhoto"

    invoke-static {v4, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 273
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    sget v6, Lorg/telegram/messenger/R$string;->ChooseTakePhoto:I

    const-string v7, "ChooseTakePhoto"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_camera:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v6, :cond_4

    .line 282
    sget v6, Lorg/telegram/messenger/R$string;->ChooseRecordVideo:I

    const-string v7, "ChooseRecordVideo"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_video:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_4
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromGallery:I

    const-string v7, "ChooseFromGallery"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    if-eqz v6, :cond_5

    .line 292
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromSearch:I

    const-string v7, "ChooseFromSearch"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_search:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    .line 297
    sget v2, Lorg/telegram/messenger/R$string;->DeletePhoto:I

    const-string v6, "DeletePhoto"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 303
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_7

    .line 304
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

    .line 307
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 327
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    .line 328
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 331
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    :cond_8
    :goto_2
    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 763
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V

    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 768
    new-instance v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v15

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->setOrientation(Landroid/util/Pair;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v1

    move/from16 v3, p4

    .line 769
    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move-object/from16 v3, p2

    .line 770
    iput-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 771
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 773
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    new-instance v6, Lorg/telegram/ui/Components/ImageUpdater$4;

    invoke-direct {v6, v0, v2}, Lorg/telegram/ui/Components/ImageUpdater$4;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method public openSearch()V
    .locals 12

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 380
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

    .line 381
    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$1;

    invoke-direct {v1, p0, v0, v10}, Lorg/telegram/ui/Components/ImageUpdater$1;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->getInitialSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/PhotoPickerActivity;->setInitialSearchString(Ljava/lang/String;)V

    .line 436
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method public openVideoCamera()V
    .locals 7

    const-string v0, "android.permission.CAMERA"

    .line 665
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 669
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

    .line 670
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 673
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/16 v3, 0x18

    const-string v4, "output"

    const/4 v5, 0x1

    if-lt v1, v3, :cond_2

    .line 677
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

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 679
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    .line 681
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const-string v1, "android.intent.extras.CAMERA_FACING"

    .line 683
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extras.LENS_FACING_FRONT"

    .line 684
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    .line 685
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.durationLimit"

    const/16 v3, 0xa

    .line 686
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    .line 689
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 691
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public processEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 9

    .line 144
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 151
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x44480000    # 800.0f

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    invoke-static {v0, v3, v4, v4, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 152
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const/4 v1, 0x0

    .line 153
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string v5, ""

    .line 154
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 155
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 156
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const-wide/16 v5, 0x0

    .line 157
    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 158
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v5, v6, v0, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 159
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

    .line 160
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v5, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 161
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v0, v5, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 162
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-static {p1, v3, v4, v4, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v3, v5

    .line 166
    :goto_2
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(Landroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V
    .locals 0

    .line 250
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

    .line 235
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    return-void
.end method

.method public setSearchAvailable(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    return-void
.end method

.method public setSearchAvailable(ZZ)V
    .locals 0

    .line 340
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    .line 341
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

    .line 345
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public showAvatarConstructor(Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method
