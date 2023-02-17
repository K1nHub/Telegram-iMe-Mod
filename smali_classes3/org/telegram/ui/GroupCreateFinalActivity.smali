.class public Lorg/telegram/ui/GroupCreateFinalActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;,
        Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private canToggleTopics:Z

.field private chatType:I

.field private createAfterUpload:Z

.field private currentGroupCreateAddress:Ljava/lang/String;

.field private currentGroupCreateLocation:Landroid/location/Location;

.field private delegate:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private donePressed:Z

.field private editText:Lorg/telegram/ui/Components/EditTextEmoji;

.field private editTextContainer:Landroid/widget/FrameLayout;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingButtonIcon:Landroid/widget/ImageView;

.field private forImport:Z

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private inputVideoPath:Ljava/lang/String;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nameToSet:Ljava/lang/String;

.field popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private reqId:I

.field private selectedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private ttlPeriod:I

.field private videoTimestamp:D


# direct methods
.method public static synthetic $r8$lambda$7RzEMS2b6YF89zyZHxMJ1KeBOHw(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L6v0L2MbeRtW43vIFdGv0ICarBI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Rdfc6N2ZEFXEA07nZRmQAK8l8zU(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UT_liod6HO9b8Ock3BJTQM0aDgM(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$accaHDFYUUwCdZh8KhI6ZYAdwx0(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJ3g04Q69vd4dhhNbNtIvEXT6nE(Lorg/telegram/ui/GroupCreateFinalActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jylO2Au9jGP4ZLB4jDq1ihAP9ws(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$didUploadPhoto$8(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLrS0gjJChIUKaoJhqjezIHtuPE(Lorg/telegram/ui/GroupCreateFinalActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$getThemeDescriptions$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$no7EmOxlIkvMNVZZYUDZcDKUqaE(Lorg/telegram/ui/GroupCreateFinalActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$onFragmentCreate$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rfXpiMwztg5Q_7EUOyvCcoQlP_Q(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GroupCreateFinalActivity;->lambda$createView$6(Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const-string v0, "chatType"

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    .line 142
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v0, "address"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateAddress:Ljava/lang/String;

    const-string v0, "location"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateLocation:Landroid/location/Location;

    const-string v0, "forImport"

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->forImport:Z

    const-string v0, "title"

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    const-string v0, "canToggleTopics"

    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->canToggleTopics:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupCreateFinalActivity;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupCreateFinalActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->canToggleTopics:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GroupCreateFinalActivity;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->ttlPeriod:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/GroupCreateFinalActivity;I)I
    .locals 0

    .line 84
    iput p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->ttlPeriod:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/GroupCreateFinalActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/view/View;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private static synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$2()V
    .locals 4

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 470
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 471
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 472
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 473
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideoPath:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const-wide/16 v1, 0x0

    .line 475
    iput-wide v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->videoTimestamp:D

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 476
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->showAvatarProgress(ZZ)V

    .line 477
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v0, v0, v3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/DialogInterface;)V
    .locals 1

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 4

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    .line 564
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateLocation:Landroid/location/Location;

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {p2, p3, p4}, Landroid/location/Location;->setLatitude(D)V

    .line 565
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateLocation:Landroid/location/Location;

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p2, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 566
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateAddress:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;IFF)V
    .locals 7

    .line 557
    instance-of p2, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p2, :cond_1

    .line 558
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 561
    :cond_0
    new-instance p2, Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 562
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/LocationActivity;->setDialogId(J)V

    .line 563
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 568
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 570
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    .line 571
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 574
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$9;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 588
    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->ttlPeriod:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->updateItems(I)V

    .line 590
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, p2, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x1

    .line 591
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v2, 0xdc

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 597
    iget-object v0, p2, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x3e8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, p3

    float-to-int p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p1, p4

    iget-object p2, p2, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, p3, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 11

    .line 631
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 635
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    .line 637
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 639
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 642
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z

    goto :goto_0

    .line 649
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->showEditDoneProgress(Z)V

    .line 650
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    iget-boolean v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->forImport:Z

    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateLocation:Landroid/location/Location;

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateAddress:Ljava/lang/String;

    iget v9, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->ttlPeriod:I

    move-object v10, p0

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MessagesController;->createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLandroid/location/Location;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    :goto_0
    return-void
.end method

.method private synthetic lambda$didUploadPhoto$8(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 14

    move-object v10, p0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p7

    .line 706
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v1, p8

    .line 707
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 708
    iget-object v1, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v2, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v3, "50_50"

    invoke-virtual {v1, v0, v3, v2, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 709
    invoke-direct {p0, v12, v13}, Lorg/telegram/ui/GroupCreateFinalActivity;->showAvatarProgress(ZZ)V

    goto :goto_1

    .line 692
    :cond_1
    :goto_0
    iput-object v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 693
    iput-object v1, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 694
    iput-object v2, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-object/from16 v0, p4

    .line 695
    iput-object v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideoPath:Ljava/lang/String;

    move-wide/from16 v0, p5

    .line 696
    iput-wide v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->videoTimestamp:D

    .line 697
    iget-boolean v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z

    if-eqz v0, :cond_3

    .line 698
    iget-object v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->delegate:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;

    if-eqz v0, :cond_2

    .line 699
    invoke-interface {v0}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;->didStartChatCreation()V

    .line 701
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget v4, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    iget-boolean v5, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->forImport:Z

    iget-object v6, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateLocation:Landroid/location/Location;

    iget-object v7, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->currentGroupCreateAddress:Ljava/lang/String;

    iget v8, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->ttlPeriod:I

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLandroid/location/Location;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I

    .line 703
    :cond_3
    invoke-direct {p0, v13, v12}, Lorg/telegram/ui/GroupCreateFinalActivity;->showAvatarProgress(ZZ)V

    .line 704
    iget-object v0, v10, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$9()V
    .locals 5

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1096
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1097
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v4, :cond_0

    .line 1098
    check-cast v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 176
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesStorage;->getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private showAvatarProgress(ZZ)V
    .locals 8

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 729
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 732
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 734
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v0, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v2

    .line 737
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 736
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v1, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v0, v6, v2

    .line 742
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    .line 741
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 744
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 745
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity$11;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    if-eqz p1, :cond_4

    .line 767
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 770
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 772
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showEditDoneProgress(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 865
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    return-void

    .line 868
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 869
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 871
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x6

    const-string v8, "alpha"

    const-string v9, "scaleY"

    const v10, 0x3dcccccd    # 0.1f

    const-string v11, "scaleX"

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_2

    .line 873
    iget-object v15, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v15, v14}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 874
    iget-object v15, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v14}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 875
    iget-object v15, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v3, v13, [F

    aput v10, v3, v14

    .line 876
    invoke-static {v2, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v7, v14

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v3, v13, [F

    aput v10, v3, v14

    .line 877
    invoke-static {v2, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v7, v13

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v3, v13, [F

    aput v5, v3, v14

    .line 878
    invoke-static {v2, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v7, v6

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v3, v13, [F

    aput v12, v3, v14

    .line 879
    invoke-static {v2, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v7, v4

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v3, v13, [F

    aput v12, v3, v14

    .line 880
    invoke-static {v2, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v7, v3

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v3, v13, [F

    aput v12, v3, v14

    .line 881
    invoke-static {v2, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v7, v3

    .line 875
    invoke-virtual {v15, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 883
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 885
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    iget-object v7, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v15, v13, [F

    aput v10, v15, v14

    .line 886
    invoke-static {v7, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v14

    iget-object v7, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v15, v13, [F

    aput v10, v15, v14

    .line 887
    invoke-static {v7, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v13

    iget-object v7, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v10, v13, [F

    aput v5, v10, v14

    .line 888
    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v6

    iget-object v5, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v6, v13, [F

    aput v12, v6, v14

    .line 889
    invoke-static {v5, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v5, v13, [F

    aput v12, v5, v14

    .line 890
    invoke-static {v4, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-object v4, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v5, v13, [F

    aput v12, v5, v14

    .line 891
    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 885
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 894
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$12;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity$12;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 913
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 914
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 271
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 275
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 276
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 277
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewGroup:I

    const-string v2, "NewGroup"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/GroupCreateFinalActivity$1;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 288
    new-instance v9, Lorg/telegram/ui/GroupCreateFinalActivity$2;

    invoke-direct {v9, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$2;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    .line 407
    iput-object v9, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 408
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v0, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget-object v1, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 413
    new-instance v11, Lorg/telegram/ui/GroupCreateFinalActivity$3;

    invoke-direct {v11, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$3;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    .line 425
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 426
    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    .line 429
    invoke-static {v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$4;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$4;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 448
    iget v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/16 v2, 0x10

    const/4 v12, 0x5

    if-ne v1, v12, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 449
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-wide/16 v3, 0x5

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v4, v13, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    const-string v3, "ChoosePhoto"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v14, 0x40

    const/16 v15, 0x40

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v21, 0x3

    if-eqz v3, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    :goto_1
    or-int/lit8 v16, v4, 0x30

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const/16 v17, 0x0

    goto :goto_2

    :cond_3
    const/16 v17, 0x10

    :goto_2
    const/16 v18, 0x10

    if-eqz v3, :cond_4

    const/16 v19, 0x10

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    const/16 v20, 0x10

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x55000000

    .line 455
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$5;

    invoke-direct {v1, v6, v7, v0}, Lorg/telegram/ui/GroupCreateFinalActivity$5;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarOverlay:Landroid/view/View;

    .line 466
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    const/16 v14, 0x40

    const/16 v15, 0x40

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    goto :goto_4

    :cond_5
    const/4 v4, 0x3

    :goto_4
    or-int/lit8 v16, v4, 0x30

    if-eqz v3, :cond_6

    const/16 v17, 0x0

    goto :goto_5

    :cond_6
    const/16 v17, 0x10

    :goto_5
    const/16 v18, 0x10

    if-eqz v3, :cond_7

    const/16 v19, 0x10

    goto :goto_6

    :cond_7
    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x10

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarOverlay:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v15, Lorg/telegram/messenger/R$raw;->camera:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v22, 0x3c

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 495
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$6;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$6;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    .line 508
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 509
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 510
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 511
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 512
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v5, v5, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 513
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarEditor:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v14, 0x40

    const/16 v15, 0x40

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_8

    const/4 v4, 0x5

    goto :goto_7

    :cond_8
    const/4 v4, 0x3

    :goto_7
    or-int/lit8 v16, v4, 0x30

    const/16 v4, 0xf

    if-eqz v3, :cond_9

    const/16 v17, 0x0

    goto :goto_8

    :cond_9
    const/16 v17, 0xf

    :goto_8
    const/16 v18, 0x10

    if-eqz v3, :cond_a

    const/16 v19, 0xf

    goto :goto_9

    :cond_a
    const/16 v19, 0x0

    :goto_9
    const/16 v20, 0x10

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$7;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$7;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x1e

    .line 522
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 523
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 524
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 525
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v14, 0x40

    const/16 v15, 0x40

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_b

    const/4 v4, 0x5

    goto :goto_a

    :cond_b
    const/4 v4, 0x3

    :goto_a
    or-int/lit8 v16, v4, 0x30

    if-eqz v3, :cond_c

    const/16 v17, 0x0

    goto :goto_b

    :cond_c
    const/16 v17, 0x10

    :goto_b
    const/16 v18, 0x10

    if-eqz v3, :cond_d

    const/16 v19, 0x10

    goto :goto_c

    :cond_d
    const/16 v19, 0x0

    :goto_c
    const/16 v20, 0x10

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    invoke-direct {v6, v5, v5}, Lorg/telegram/ui/GroupCreateFinalActivity;->showAvatarProgress(ZZ)V

    .line 529
    new-instance v14, Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p0

    const/4 v10, 0x0

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    iput-object v14, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 530
    iget v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v1, 0x4

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_f

    if-ne v0, v12, :cond_e

    goto :goto_d

    :cond_e
    sget v0, Lorg/telegram/messenger/R$string;->EnterListName:I

    const-string v2, "EnterListName"

    goto :goto_e

    :cond_f
    :goto_d
    sget v0, Lorg/telegram/messenger/R$string;->EnterGroupNamePlaceholder:I

    const-string v2, "EnterGroupNamePlaceholder"

    :goto_e
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 532
    iget-object v2, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iput-object v13, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    :cond_10
    new-array v0, v8, [Landroid/text/InputFilter;

    .line 536
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v10

    .line 537
    iget-object v2, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 538
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v23, -0x1

    const/16 v24, -0x2

    const/16 v25, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v4, 0x60

    if-eqz v3, :cond_11

    const/16 v26, 0x5

    goto :goto_f

    :cond_11
    const/16 v26, 0x60

    :goto_f
    const/16 v27, 0x0

    if-eqz v3, :cond_12

    const/16 v28, 0x60

    goto :goto_10

    :cond_12
    const/16 v28, 0x5

    :goto_10
    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v7, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 542
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 543
    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 544
    iget-object v2, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 545
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 546
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_11

    :cond_13
    const/4 v2, 0x2

    :goto_11
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 547
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/GroupCreateFinalActivity$8;

    invoke-direct {v2, v6}, Lorg/telegram/ui/GroupCreateFinalActivity$8;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 556
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v6}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 605
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x38

    .line 606
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v4, "chats_actionBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "chats_actionPressedBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 607
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_14

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 609
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v14, -0x1000000

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 610
    new-instance v13, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v13, v11, v2, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 611
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v13, v2, v11}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v13

    .line 614
    :cond_14
    iget-object v11, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-lt v4, v5, :cond_15

    .line 616
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v11, v8, [I

    const v13, 0x10100a7

    aput v13, v11, v10

    .line 617
    iget-object v13, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v14, v3, [F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v8

    const-string v15, "translationZ"

    invoke-static {v13, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v17, v9

    const-wide/16 v8, 0xc8

    invoke-virtual {v13, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v11, v10, [I

    .line 618
    iget-object v13, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-array v0, v3, [F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v0, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/4 v14, 0x1

    aput v12, v0, v14

    invoke-static {v13, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 619
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 620
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/GroupCreateFinalActivity$10;

    invoke-direct {v2, v6}, Lorg/telegram/ui/GroupCreateFinalActivity$10;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_12

    :cond_15
    move-object/from16 v17, v9

    .line 628
    :goto_12
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 629
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-lt v4, v5, :cond_16

    const/16 v23, 0x38

    goto :goto_13

    :cond_16
    const/16 v23, 0x3c

    :goto_13
    if-lt v4, v5, :cond_17

    const/16 v24, 0x38

    goto :goto_14

    :cond_17
    const/16 v24, 0x3c

    :goto_14
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_18

    const/4 v12, 0x3

    goto :goto_15

    :cond_18
    const/4 v12, 0x5

    :goto_15
    or-int/lit8 v25, v12, 0x50

    const/16 v8, 0xe

    if-eqz v2, :cond_19

    const/16 v26, 0xe

    goto :goto_16

    :cond_19
    const/16 v26, 0x0

    :goto_16
    const/16 v27, 0x0

    if-eqz v2, :cond_1a

    const/16 v28, 0x0

    goto :goto_17

    :cond_1a
    const/16 v28, 0xe

    :goto_17
    const/16 v29, 0xe

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v8, v17

    invoke-virtual {v8, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    .line 655
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 656
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v8, "chats_actionIcon"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 657
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->checkbig:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 658
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v10, v2, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 659
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$string;->Done:I

    const-string v3, "Done"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonIcon:Landroid/widget/ImageView;

    if-lt v4, v5, :cond_1b

    const/16 v3, 0x38

    goto :goto_18

    :cond_1b
    const/16 v3, 0x3c

    :goto_18
    if-lt v4, v5, :cond_1c

    const/16 v4, 0x38

    goto :goto_19

    :cond_1c
    const/16 v4, 0x3c

    :goto_19
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x1

    invoke-direct {v0, v7, v2}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    .line 663
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 664
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 665
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 666
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 667
    iget-object v0, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 822
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 823
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v1, :cond_0

    return-void

    .line 826
    :cond_0
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 827
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    .line 828
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_8

    .line 830
    iget-object v4, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 831
    instance-of v5, v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v5, :cond_2

    .line 832
    check-cast v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5

    .line 837
    iput v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    .line 838
    iput-boolean v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    .line 839
    invoke-direct {v0, v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->showEditDoneProgress(Z)V

    .line 840
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v1, :cond_4

    .line 841
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setEnabled(Z)V

    .line 843
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->delegate:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;

    if-eqz v1, :cond_8

    .line 844
    invoke-interface {v1}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;->didFailChatCreation()V

    goto :goto_2

    .line 846
    :cond_5
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne v1, v2, :cond_8

    .line 847
    iput v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    .line 848
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 849
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->delegate:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;

    if-eqz v1, :cond_6

    .line 850
    invoke-interface {v1, v0, v6, v7}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;->didFinishChatCreation(Lorg/telegram/ui/GroupCreateFinalActivity;J)V

    goto :goto_1

    .line 852
    :cond_6
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 853
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chat_id"

    .line 854
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "just_created_chat"

    .line 855
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 856
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 858
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz v1, :cond_8

    .line 859
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v9, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v10, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v11, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputEmojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-wide v12, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->videoTimestamp:D

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->inputVideoPath:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v1, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public didStartUpload(Z)V
    .locals 1

    .line 682
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 685
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 11

    .line 690
    new-instance v10, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p9

    move-object/from16 v5, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Ljava/lang/String;DLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissCurrentDialog(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1090
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    new-instance v10, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda7;

    invoke-direct {v10, v0}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    .line 1104
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "actionBarDefault"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "actionBarDefault"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v22, 0x0

    const-string v26, "actionBarDefaultTitle"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v18, "actionBarDefaultSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v26, "listSelectorSDK21"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v18, "fastScrollActive"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v26, "fastScrollInactive"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v18, "fastScrollText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    const/4 v12, 0x0

    aput-object v5, v4, v12

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v21, 0x0

    const-string v26, "divider"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "groupcreate_hintText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const-string v20, "groupcreate_cursor"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v28, "windowBackgroundWhiteInputField"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v4

    const-string v20, "windowBackgroundWhiteInputFieldActivated"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v12

    const-string v28, "windowBackgroundGrayShadow"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v15, v3, v4

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v12

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-string v13, "textView"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v4, v3, v12

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "groupcreate_sectionText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v5

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v4, v12

    const-string v5, "statusTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v31, "windowBackgroundWhiteBlueText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v16, v3, v4

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteGrayText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v2, v5, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const-string v9, "avatar_text"

    move-object v2, v14

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    const/16 v22, 0x0

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "contextProgressInner2"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "contextProgressOuter2"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v10, "windowBackgroundWhiteBlackText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "windowBackgroundWhiteHintText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected hideKeyboardOnShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public onFragmentCreate()Z
    .locals 7

    .line 152
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 153
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 154
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    .line 156
    iput-object p0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 157
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 161
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 162
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 166
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 167
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_1

    .line 169
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 173
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4, v0, v3}, Lorg/telegram/ui/GroupCreateFinalActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 180
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 182
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 184
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    return v2

    .line 187
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_3

    :cond_4
    return v2

    .line 195
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->ttlPeriod:I

    .line 196
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 201
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 202
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 203
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 204
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->clear()V

    .line 206
    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 212
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 230
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 217
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 224
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboard()V

    :cond_0
    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 801
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_0
    const-string v0, "nameTextView"

    .line 803
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 808
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "path"

    .line 788
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nameTextView"

    .line 793
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->delegate:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;

    return-void
.end method
