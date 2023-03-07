.class public Lorg/telegram/ui/ContentPreviewViewer;
.super Ljava/lang/Object;
.source "ContentPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;,
        Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/ContentPreviewViewer;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private blurProgress:F

.field private blurrBitmap:Landroid/graphics/Bitmap;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private clearsInputField:Z

.field private closeOnDismiss:Z

.field private containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

.field private currentAccount:I

.field private currentContentType:I

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentMoveY:F

.field private currentMoveYProgress:F

.field private currentPreviewCell:Landroid/view/View;

.field private currentQuery:Ljava/lang/String;

.field private currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field private drawEffect:Z

.field private effectImage:Lorg/telegram/messenger/ImageReceiver;

.field private finalMoveY:F

.field private importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

.field private inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private isKiklikoVideoPrepared:Z

.field private isRecentSticker:Z

.field private isVisible:Z

.field private keyboardHeight:I

.field private kiklikoGif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

.field private kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private kiklikoVideoFile:Ljava/io/File;

.field private kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private kiklikoVideoTextureView:Landroid/view/TextureView;

.field private lastInsets:Landroid/view/WindowInsets;

.field private lastTouchY:F

.field private lastUpdateTime:J

.field private mediaEditManager:Lcom/smedialink/manager/common/MediaEditManager;

.field private menuVisible:Z

.field private moveY:F

.field private nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

.field private openPreviewRunnable:Ljava/lang/Runnable;

.field private paint:Landroid/graphics/Paint;

.field private parentActivity:Landroid/app/Activity;

.field private parentObject:Ljava/lang/Object;

.field popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showInstantly:Z

.field private showProgress:F

.field private showSheetRunnable:Ljava/lang/Runnable;

.field private slideUpDrawable:Landroid/graphics/drawable/Drawable;

.field private startMoveY:F

.field private startX:I

.field private startY:I

.field private stickerEmojiLayout:Landroid/text/StaticLayout;

.field private toggleAutoPreviewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

.field vibrationEffect:Landroid/os/VibrationEffect;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$1uFL3p-Y2nZQKQLAngVhIyYNUBM(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$setParentActivity$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3YopBBEMnDDVW0crWBZg--ZY6AY(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$onDraw$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$KoTEzFIip5_oT8Y94rNgr-WUbpI(Lorg/telegram/ui/ContentPreviewViewer;ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$onInterceptTouchEvent$3(ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYTwfDRWCAG2np0fz3aK-uLMZjQ(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$showUnlockPremiumView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a3iD5dFw6Oq0aSDls-9tILMjOYg(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$setParentActivity$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fo1rP55j_vV9UKkJUGnKNeHhAHA(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$showUnlockPremiumView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcMrfTN1a4e-vC2_hZCYq8HbOm8(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$onTouch$2(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 392
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x71000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 398
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 399
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/16 v0, 0xc8

    .line 404
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    .line 408
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    .line 413
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isKiklikoVideoPrepared:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ContentPreviewViewer;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isKiklikoVideoPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->showUnlockPremiumView()V

    return-void
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isRecentSticker:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->updateToggleAutoPreviewItem()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->toggleAutoPreviewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 102
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ContentPreviewViewer;Ljava/lang/String;)I
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 102
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->startMoveY:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 102
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startMoveY:F

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 102
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->setNftAvatar()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Canvas;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ContentPreviewViewer;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    return p0
.end method

.method private editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/ContentPreviewViewer;
    .locals 2

    .line 1073
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-nez v0, :cond_1

    .line 1075
    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    .line 1076
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-nez v0, :cond_0

    .line 1078
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {v0}, Lorg/telegram/ui/ContentPreviewViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    .line 1080
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstanceForNft(Lcom/smedialink/manager/common/MediaEditManager;)Lorg/telegram/ui/ContentPreviewViewer;
    .locals 1

    .line 122
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    .line 123
    iput-object p0, v0, Lorg/telegram/ui/ContentPreviewViewer;->mediaEditManager:Lcom/smedialink/manager/common/MediaEditManager;

    return-object v0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1967
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1968
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method public static hasInstance()Z
    .locals 1

    .line 1086
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onDraw$6()V
    .locals 2

    .line 1946
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$3(ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    .line 1402
    iget-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1408
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    :cond_1
    const/4 v13, 0x1

    if-nez p1, :cond_2

    .line 1411
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1412
    :cond_2
    iput-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    const/4 v14, 0x0

    .line 1415
    iput-boolean v14, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    .line 1417
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v2, v0, Lorg/fork/ui/view/KiklikoGifView;

    if-eqz v2, :cond_4

    .line 1418
    check-cast v0, Lorg/fork/ui/view/KiklikoGifView;

    .line 1419
    invoke-virtual {v0}, Lorg/fork/ui/view/KiklikoGifView;->getFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    .line 1420
    invoke-virtual {v0}, Lorg/fork/ui/view/KiklikoGifView;->getGif()Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    .line 1421
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->preparePlayer()V

    goto/16 :goto_8

    .line 1422
    :cond_4
    instance-of v2, v0, Lcom/smedialink/ui/custom/nft/NftRootView;

    if-eqz v2, :cond_6

    .line 1423
    check-cast v0, Lcom/smedialink/ui/custom/nft/NftRootView;

    .line 1424
    invoke-virtual {v0}, Lcom/smedialink/ui/custom/nft/NftRootView;->getNftToken()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1425
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_5

    invoke-interface {v0, v14}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->getImage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    goto/16 :goto_8

    .line 1427
    :cond_6
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v2, :cond_8

    .line 1428
    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1429
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v3

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getEmoji()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_7

    invoke-interface {v0, v14}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_7
    move-object v5, v1

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v7

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    move-object/from16 v9, p5

    move/from16 v10, p1

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    .line 1431
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto/16 :goto_9

    .line 1432
    :cond_8
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_a

    .line 1433
    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Cells/StickerCell;

    .line 1434
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_9

    invoke-interface {v0, v14}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_9
    move-object v5, v1

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->getParentObject()Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    move-object/from16 v9, p5

    move/from16 v10, p1

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    .line 1436
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    .line 1437
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->isClearsInputField()Z

    move-result v0

    iput-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    goto/16 :goto_9

    .line 1438
    :cond_a
    instance-of v2, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_d

    .line 1439
    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1440
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_b

    invoke-interface {v0, v13}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_b
    move-object v5, v1

    :goto_4
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->getInlineBot()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_5

    :cond_c
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v0

    :goto_5
    move-object v8, v0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    move-object/from16 v9, p5

    move/from16 v10, p1

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    if-eq v6, v13, :cond_14

    .line 1443
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_9

    :cond_d
    move/from16 v6, p4

    .line 1445
    instance-of v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v2, :cond_e

    .line 1446
    check-cast v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    .line 1447
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v3, 0x0

    .line 1449
    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move/from16 v6, p4

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_9

    .line 1452
    :cond_e
    instance-of v2, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v2, :cond_11

    .line 1453
    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1454
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1457
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_10

    .line 1459
    iget v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_f
    move-object v2, v1

    :cond_10
    :goto_6
    if-eqz v2, :cond_13

    const/4 v3, 0x0

    .line 1463
    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move/from16 v6, p4

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_9

    .line 1466
    :cond_11
    instance-of v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v2, :cond_13

    .line 1467
    check-cast v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1468
    iget-object v0, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1470
    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_12

    .line 1471
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v2, v0

    goto :goto_7

    :cond_12
    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_13

    const/4 v3, 0x0

    .line 1474
    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move/from16 v6, p4

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v13, 0x0

    :cond_14
    :goto_9
    if-nez p1, :cond_15

    if-eqz v13, :cond_15

    .line 1481
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v14, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1482
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_15

    .line 1483
    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->resetTouch()V

    :cond_15
    return-void
.end method

.method private static synthetic lambda$onTouch$2(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V
    .locals 1

    .line 1115
    instance-of v0, p0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 1116
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setParentActivity$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1521
    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    return-object p2
.end method

.method private synthetic lambda$setParentActivity$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 1545
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    :cond_1
    return v0
.end method

.method private synthetic lambda$showUnlockPremiumView$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1038
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1039
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1040
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method private synthetic lambda$showUnlockPremiumView$1(Landroid/view/View;)V
    .locals 2

    .line 1043
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    .line 1044
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    .line 1045
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 1048
    :cond_0
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    const/4 p1, 0x0

    .line 1050
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1052
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1816
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 1820
    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1821
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->prepareBlurBitmap()V

    .line 1824
    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 1825
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    const v6, 0x3e088889

    if-eqz v2, :cond_3

    iget v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v8, v7, v4

    if-eqz v8, :cond_3

    add-float/2addr v7, v6

    .line 1826
    iput v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v2, v7, v4

    if-lez v2, :cond_2

    .line 1828
    iput v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1830
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    .line 1831
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v7, v2, v5

    if-eqz v7, :cond_5

    sub-float/2addr v2, v6

    .line 1832
    iput v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    .line 1834
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1836
    :cond_4
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1839
    :cond_5
    :goto_0
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    .line 1840
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1841
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41400000    # 12.0f

    .line 1842
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1843
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1844
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1848
    :cond_6
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, 0x43340000    # 180.0f

    iget v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1849
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 1850
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1852
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1856
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_7

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_7

    .line 1857
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v6

    add-int/2addr v2, v6

    .line 1858
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v6

    goto :goto_1

    .line 1860
    :cond_7
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v2, 0x0

    .line 1863
    :goto_1
    iget v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 1864
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v9

    goto :goto_3

    .line 1866
    :cond_8
    iget-boolean v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v7, :cond_9

    .line 1867
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float/2addr v7, v9

    goto :goto_2

    .line 1869
    :cond_9
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v9, 0x3fe66666    # 1.8f

    div-float/2addr v7, v9

    :goto_2
    float-to-int v7, v7

    .line 1872
    :goto_3
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v6

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    const/16 v11, 0x28

    if-eqz v6, :cond_a

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    add-int/2addr v9, v6

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 1873
    iget-boolean v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v6, :cond_b

    .line 1874
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 1876
    :cond_b
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    add-float/2addr v9, v2

    invoke-virtual {v0, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1877
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v6

    div-float/2addr v9, v6

    int-to-float v6, v7

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 1880
    iget-boolean v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v7, :cond_c

    int-to-float v7, v6

    const v12, 0x3f2ab9f5    # 0.6669f

    mul-float v12, v12, v7

    const/high16 v13, 0x3d600000    # 0.0546875f

    mul-float v13, v13, v7

    .line 1883
    iget-object v14, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1884
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    sub-float v14, v7, v12

    div-float v15, v7, v11

    sub-float v16, v14, v15

    sub-float v13, v16, v13

    div-float/2addr v14, v11

    sub-float/2addr v14, v15

    invoke-virtual {v2, v13, v14, v12, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1885
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1887
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget v12, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v2, v12}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1888
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v2, v6, v6, v7, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1889
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_5

    .line 1891
    :cond_c
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1892
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v7, v6

    int-to-float v7, v7

    div-float/2addr v7, v11

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1893
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1896
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_d

    .line 1897
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1898
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1899
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1900
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1905
    :cond_d
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly:Z

    if-nez v2, :cond_e

    .line 1906
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-ne v2, v10, :cond_e

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 1907
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1908
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1909
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x41880000    # 17.0f

    const/high16 v10, 0x40c00000    # 6.0f

    iget v12, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/16 v13, 0x3c

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float v12, v12, v10

    add-float/2addr v12, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    .line 1910
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    sub-float v10, v4, v10

    mul-float v10, v10, v3

    float-to-int v3, v10

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1911
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v9, v2

    div-int/lit8 v9, v9, 0x2

    neg-int v6, v6

    add-int/2addr v6, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v9, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1912
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1914
    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_10

    .line 1915
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const/16 v3, 0x1e

    const/16 v6, 0x32

    if-eqz v2, :cond_f

    .line 1916
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    neg-float v6, v6

    div-float/2addr v6, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 1918
    :cond_f
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    neg-float v6, v6

    div-float/2addr v6, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1920
    :goto_6
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1922
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1923
    iget-boolean v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/high16 v2, 0x42f00000    # 120.0f

    if-eqz v0, :cond_11

    .line 1924
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_14

    .line 1925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1926
    iget-wide v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    sub-long v7, v5, v7

    .line 1927
    iput-wide v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1928
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    long-to-float v3, v7

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1929
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1930
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_14

    .line 1931
    iput v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    goto :goto_7

    .line 1934
    :cond_11
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_14

    .line 1935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1936
    iget-wide v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    sub-long v9, v6, v9

    .line 1937
    iput-wide v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1938
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    long-to-float v3, v9

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1939
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1940
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_12

    .line 1941
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1943
    :cond_12
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_14

    .line 1944
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1945
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 1946
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1947
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 1948
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1949
    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    .line 1951
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    invoke-static {v0, v8, v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1952
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1954
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->releasePlayer()V

    .line 1955
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1956
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1957
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 1960
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    :goto_7
    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 6

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1975
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1976
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1977
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 1978
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1979
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v5, 0x3daaaaab

    .line 1980
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    const-string v5, "windowBackgroundWhite"

    .line 1981
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1982
    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1983
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    instance-of v5, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v5, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    const/16 v0, 0xa

    .line 1986
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit16 v1, v1, 0xb4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 1987
    iput-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private preparePlayer()V
    .locals 10

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 198
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x11

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v0, Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    const/16 v3, 0x11

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 205
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ContentPreviewViewer$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    :cond_1
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 244
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    .line 245
    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "other"

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private releasePlayer()V
    .locals 3

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isKiklikoVideoPrepared:Z

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 176
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 180
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 183
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    :cond_2
    return-void
.end method

.method private rubberYPoisition(FF)F
    .locals 2

    .line 1810
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v0, v0, v1

    div-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float v0, v1, v0

    sub-float v0, v1, v0

    mul-float v0, v0, p2

    neg-float p2, v0

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    mul-float p2, p2, v1

    return p2
.end method

.method private setNftAvatar()V
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->mediaEditManager:Lcom/smedialink/manager/common/MediaEditManager;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/manager/common/MediaEditManager;->setNftAvatar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showUnlockPremiumView()V
    .locals 4

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1035
    new-instance v0, Lorg/telegram/ui/UnlockPremiumView;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/UnlockPremiumView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    .line 1036
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    iget-object v0, v0, Lorg/telegram/ui/UnlockPremiumView;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateToggleAutoPreviewItem()V
    .locals 3

    .line 165
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 166
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->toggleAutoPreviewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_1

    .line 167
    sget v2, Lorg/telegram/messenger/R$string;->content_preview_disable_preview:I

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->content_preview_enable_preview:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 168
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_wallet_crypto_cipher_eye:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye:I

    .line 166
    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1752
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1755
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1756
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x0

    .line 1760
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    .line 1761
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    .line 1762
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 1764
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1765
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1766
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1767
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v0, 0x0

    .line 1768
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    .line 1769
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    if-eqz v1, :cond_1

    .line 1770
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1772
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public closeWithMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 1743
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 1746
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1748
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1777
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->releasePlayer()V

    const/4 v0, 0x0

    .line 1778
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    .line 1779
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    .line 1780
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    const/4 v1, 0x0

    .line 1782
    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    .line 1783
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1784
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1785
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1786
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1787
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1790
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1791
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1792
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v2, 0x0

    .line 1794
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1795
    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1797
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1798
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1799
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1801
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1803
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1805
    :goto_0
    sput-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    .line 1806
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1739
    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 133
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 9

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 1321
    :goto_0
    iput-object p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1322
    iput-object p5, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p4, :cond_1

    .line 1323
    invoke-interface {p4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->can()Z

    move-result p4

    if-nez p4, :cond_1

    return v0

    .line 1326
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    if-nez p4, :cond_14

    .line 1327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 1328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 1329
    :cond_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_14

    const/4 v3, 0x0

    if-eqz v8, :cond_3

    move-object v3, p6

    goto :goto_3

    .line 1336
    :cond_3
    instance-of v4, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_4

    .line 1337
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    return v0

    .line 1342
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1343
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1344
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1345
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    if-nez v8, :cond_7

    if-gt v4, p1, :cond_6

    if-lt v5, p1, :cond_6

    if-gt v6, p4, :cond_6

    if-ge v7, p4, :cond_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1353
    :cond_7
    instance-of v1, v3, Lorg/fork/ui/view/KiklikoGifView;

    const/4 v2, -0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_8

    .line 1354
    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    :goto_4
    move v6, v1

    goto/16 :goto_7

    .line 1355
    :cond_8
    instance-of v1, v3, Lcom/smedialink/ui/custom/nft/NftRootView;

    if-eqz v1, :cond_9

    .line 1356
    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    .line 1357
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_4

    .line 1359
    :cond_9
    instance-of v1, v3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_a

    .line 1360
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->showingBitmap()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1362
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 1364
    :cond_a
    instance-of v1, v3, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_b

    .line 1365
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerCell;->showingBitmap()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1367
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_5

    .line 1369
    :cond_b
    instance-of v1, v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_e

    .line 1370
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1371
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->showingBitmap()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1372
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1374
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 v1, 0x0

    goto :goto_4

    .line 1375
    :cond_c
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->isGif()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1377
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, -0x1

    goto :goto_4

    .line 1380
    :cond_e
    instance-of v1, v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_f

    .line 1382
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_6
    const/4 v6, 0x2

    goto :goto_7

    .line 1383
    :cond_f
    instance-of v1, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_10

    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1385
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_6

    .line 1386
    :cond_10
    instance-of v1, v3, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v1, :cond_11

    .line 1387
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1388
    iget-object v1, v1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1389
    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_11

    .line 1391
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_6

    :cond_11
    const/4 v6, -0x1

    :goto_7
    if-ne v6, v2, :cond_12

    return v0

    .line 1397
    :cond_12
    iput p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->startX:I

    .line 1398
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startY:I

    .line 1399
    iput-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 1401
    new-instance p1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;

    move-object v1, p1

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move-object v5, p6

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContentPreviewViewer;ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_13

    .line 1489
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_13
    const-wide/16 p4, 0xc8

    .line 1491
    invoke-static {p1, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_8
    return p3

    :cond_14
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 1107
    iput-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-object/from16 v9, p6

    .line 1108
    iput-object v9, v12, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1109
    invoke-interface/range {p5 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->can()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 1112
    :cond_0
    iget-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1113
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-eq v1, v13, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    goto/16 :goto_12

    .line 1135
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_31

    .line 1136
    iget-boolean v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_2a

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_29

    .line 1138
    iget v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-ne v1, v13, :cond_7

    .line 1139
    iget-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-nez v0, :cond_6

    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 1140
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    const v1, -0x39e3c000    # -10000.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 1141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    .line 1142
    iput v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1143
    iput v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    goto :goto_1

    .line 1145
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1146
    iget v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    iget v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    sub-float v3, v0, v3

    add-float/2addr v1, v3

    iput v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1147
    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    cmpl-float v0, v1, v2

    if-lez v0, :cond_4

    .line 1149
    iput v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    goto :goto_0

    :cond_4
    const/16 v0, 0x3c

    .line 1150
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 1151
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1153
    :cond_5
    :goto_0
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/16 v1, 0xc8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->rubberYPoisition(FF)F

    move-result v0

    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 1154
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1155
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/16 v1, 0x37

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 1156
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1157
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_1
    return v13

    .line 1164
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1165
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_29

    .line 1170
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_8

    return v2

    .line 1175
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 1176
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1177
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 1178
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v11, v6, :cond_28

    if-lt v14, v6, :cond_28

    if-gt v15, v1, :cond_28

    if-ge v5, v1, :cond_9

    goto/16 :goto_10

    .line 1183
    :cond_9
    instance-of v0, v10, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 1185
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_3
    const/4 v11, 0x0

    goto :goto_6

    .line 1186
    :cond_a
    instance-of v0, v10, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_b

    .line 1188
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_3

    .line 1189
    :cond_b
    instance-of v0, v10, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_e

    .line 1190
    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1191
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1193
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 v0, 0x0

    goto :goto_4

    .line 1194
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->isGif()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1196
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, -0x1

    :goto_4
    move v11, v0

    goto :goto_6

    .line 1198
    :cond_e
    instance-of v0, v10, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v0, :cond_f

    .line 1200
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_5
    const/4 v11, 0x2

    goto :goto_6

    .line 1201
    :cond_f
    instance-of v0, v10, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_10

    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1203
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_5

    :cond_10
    const/4 v11, -0x1

    :goto_6
    if-eq v11, v1, :cond_29

    .line 1205
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-ne v10, v0, :cond_11

    goto/16 :goto_11

    .line 1208
    :cond_11
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_12

    .line 1209
    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->resetTouch()V

    .line 1211
    :cond_12
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_13

    .line 1212
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_7

    .line 1213
    :cond_13
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_14

    .line 1214
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_7

    .line 1215
    :cond_14
    instance-of v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_15

    .line 1216
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1218
    :cond_15
    :goto_7
    iput-object v10, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 1219
    iput-boolean v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    .line 1220
    iput-boolean v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1221
    iput-boolean v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    .line 1222
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_16

    .line 1223
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1225
    :cond_16
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1227
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v1, v0, Lcom/smedialink/ui/custom/nft/NftRootView;

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1228
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_17

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_8

    :cond_17
    move-object v6, v3

    :goto_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    check-cast v0, Lcom/smedialink/ui/custom/nft/NftRootView;

    invoke-virtual {v0}, Lcom/smedialink/ui/custom/nft/NftRootView;->getNftToken()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->getImage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v11

    move v7, v8

    move-object v8, v10

    move-object/from16 v9, p6

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    goto/16 :goto_f

    .line 1230
    :cond_18
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_1a

    .line 1231
    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1232
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v4

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getEmoji()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_19

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_9

    :cond_19
    move-object v6, v3

    :goto_9
    const/4 v7, 0x0

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v8

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v11

    move v7, v8

    move-object v8, v14

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1233
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto/16 :goto_f

    .line 1234
    :cond_1a
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_1c

    .line 1235
    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/StickerCell;

    .line 1236
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_1b

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_a

    :cond_1b
    move-object v6, v3

    :goto_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerCell;->getParentObject()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v11

    move v7, v8

    move-object v8, v14

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1237
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    .line 1238
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/StickerCell;->isClearsInputField()Z

    move-result v0

    iput-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    goto/16 :goto_f

    .line 1239
    :cond_1c
    instance-of v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_1f

    .line 1240
    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1241
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_1d

    invoke-interface {v0, v13}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_1d
    move-object v5, v3

    :goto_b
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->getInlineBot()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_c

    :cond_1e
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    move-object v8, v0

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v11

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eq v11, v13, :cond_27

    .line 1243
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_f

    .line 1245
    :cond_1f
    instance-of v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_20

    .line 1246
    check-cast v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    .line 1247
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_27

    const/4 v2, 0x0

    .line 1249
    invoke-static {v1, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v6, v11

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_f

    .line 1251
    :cond_20
    instance-of v1, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_24

    .line 1252
    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1253
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1256
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_22

    .line 1258
    iget v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    :cond_21
    move-object v1, v3

    :cond_22
    :goto_d
    if-eqz v1, :cond_23

    const/4 v2, 0x0

    .line 1262
    invoke-static {v1, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v6, v11

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_f

    :cond_23
    return v2

    .line 1266
    :cond_24
    instance-of v1, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v1, :cond_27

    .line 1267
    check-cast v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1268
    iget-object v0, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1270
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_25

    .line 1271
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v1, v0

    goto :goto_e

    :cond_25
    move-object v1, v3

    :goto_e
    if-nez v1, :cond_26

    return v2

    :cond_26
    const/4 v2, 0x0

    .line 1276
    invoke-static {v1, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v6, v11

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1278
    :cond_27
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->runSmoothHaptic()V

    return v13

    :cond_28
    :goto_10
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_29
    :goto_11
    return v13

    .line 1284
    :cond_2a
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 1286
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->startX:I

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v4, v12, Lorg/telegram/ui/ContentPreviewViewer;->startY:I

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v6, v0, v4

    if-lez v6, :cond_31

    .line 1287
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1288
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_14

    .line 1291
    :cond_2b
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1292
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_14

    .line 1114
    :cond_2c
    :goto_12
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda4;

    move-object/from16 v4, p4

    invoke-direct {v1, v0, v4}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V

    const-wide/16 v4, 0x96

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1119
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    .line 1120
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1121
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_14

    .line 1122
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 1124
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 1125
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_2e

    .line 1126
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_13

    .line 1127
    :cond_2e
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_2f

    .line 1128
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_13

    .line 1129
    :cond_2f
    instance-of v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_30

    .line 1130
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1132
    :cond_30
    :goto_13
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    :cond_31
    :goto_14
    return v2
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 138
    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    return-void
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    move/from16 v7, p10

    const-string v8, "window"

    .line 1579
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v9, :cond_21

    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v9, :cond_0

    goto/16 :goto_c

    .line 1582
    :cond_0
    iput-boolean v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly:Z

    .line 1583
    iput-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v9, p7

    .line 1584
    iput-boolean v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->isRecentSticker:Z

    const/4 v9, 0x0

    .line 1585
    iput-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 1586
    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v11

    if-eqz v11, :cond_1

    const/high16 v11, 0x71000000

    goto :goto_0

    :cond_1
    const v11, 0x64e6e6e6

    :goto_0
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v10, 0x0

    .line 1587
    iput-boolean v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1588
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v11, 0x5a

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v14, :cond_2

    goto/16 :goto_2

    .line 1662
    :cond_2
    sget v3, Lcom/smedialink/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    if-eq v5, v3, :cond_8

    sget v3, Lcom/smedialink/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    if-eq v5, v3, :cond_8

    const-string v3, "gif"

    if-eqz v0, :cond_4

    .line 1664
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    .line 1665
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v11

    .line 1666
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    .line 1667
    iput v14, v10, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz v11, :cond_3

    .line 1669
    iget-object v14, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    invoke-static {v11, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static {v9, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    const/16 v23, 0x0

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v26, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const-string v22, "90_90_b"

    move-object/from16 v16, v14

    move-object/from16 v17, v10

    move-wide/from16 v24, v12

    invoke-virtual/range {v16 .. v28}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1671
    :cond_3
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    invoke-static {v9, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v23, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const-string v20, "90_90_b"

    move-object/from16 v16, v11

    move-object/from16 v17, v10

    move-wide/from16 v21, v12

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_4
    if-eqz v4, :cond_7

    .line 1674
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v9, :cond_5

    return-void

    .line 1677
    :cond_5
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v10, :cond_6

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    const-string v10, "video/mp4"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1678
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v10}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v10}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v10}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    const/16 v23, 0x0

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    int-to-long v10, v10

    const/16 v26, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    const-string v22, "90_90_b"

    move-object/from16 v16, v9

    move-wide/from16 v24, v10

    invoke-virtual/range {v16 .. v28}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 1680
    :cond_6
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v10}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v32

    const/16 v33, 0x0

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v10}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v34

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    int-to-long v10, v10

    const/16 v38, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    const-string v35, "90_90_b"

    move-object/from16 v31, v9

    move-wide/from16 v36, v10

    invoke-virtual/range {v31 .. v40}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_7
    return-void

    .line 1686
    :cond_8
    :goto_1
    sget v3, Lcom/smedialink/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    if-ne v5, v3, :cond_9

    .line 1687
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p11 .. p11}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v20, "90_90_b"

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1690
    :cond_9
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_a

    .line 1693
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x64

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_9

    .line 1695
    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7d0

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_9

    :cond_b
    :goto_2
    if-nez v0, :cond_c

    if-nez v2, :cond_c

    return-void

    .line 1593
    :cond_c
    sget-object v10, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/16 v12, 0x18

    if-nez v10, :cond_d

    .line 1594
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v15}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v10, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    .line 1595
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1598
    :cond_d
    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    const/4 v10, 0x0

    .line 1599
    iput-boolean v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const-wide/16 v9, 0x514

    const/16 v16, 0x64

    if-eqz v0, :cond_19

    const/4 v13, 0x0

    .line 1602
    :goto_3
    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_f

    .line 1603
    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1604
    instance-of v11, v15, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v11, :cond_e

    iget-object v11, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v11, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x5a

    goto :goto_3

    :cond_f
    const/4 v11, 0x0

    :goto_4
    if-ne v5, v14, :cond_10

    if-eqz v3, :cond_10

    .line 1610
    sget-object v13, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/4 v12, 0x0

    invoke-static {v3, v13, v15, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1611
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v22, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v23

    sget-object v24, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    :cond_10
    if-nez v11, :cond_11

    if-ne v5, v14, :cond_14

    .line 1613
    :cond_11
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v3, :cond_12

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needMenu()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1614
    :cond_12
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_13

    .line 1617
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x64

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1619
    :cond_13
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1621
    :cond_14
    :goto_5
    iput-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1622
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x5a

    invoke-static {v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 1623
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1624
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static {v3, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/16 v30, 0x1

    const-string v28, "webp"

    move-object/from16 v20, v7

    move-object/from16 v29, v3

    invoke-virtual/range {v20 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 1626
    :cond_15
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static {v3, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v34

    const/16 v35, 0x0

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/16 v38, 0x1

    const-string v36, "webp"

    move-object/from16 v31, v7

    move-object/from16 v37, v3

    invoke-virtual/range {v31 .. v38}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1627
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 1628
    iput-boolean v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1629
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/16 v27, 0x1

    const-string v25, "tgs"

    move-object/from16 v20, v3

    move-object/from16 v26, v7

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1632
    :cond_16
    :goto_6
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1633
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_17
    const/4 v3, 0x0

    .line 1635
    :goto_7
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1d

    .line 1636
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1637
    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v9, :cond_18

    .line 1638
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1639
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    sget-object v7, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    const/16 v9, 0x18

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v3, v7, v9, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1640
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v20, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    goto :goto_9

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_19
    if-eqz v2, :cond_1d

    .line 1646
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v12, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-boolean v13, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v13, :cond_1a

    const-string v13, "tgs"

    move-object/from16 v24, v13

    goto :goto_8

    :cond_1a
    const/16 v24, 0x0

    :goto_8
    const-wide/16 v25, 0x0

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    if-eqz v3, :cond_1b

    .line 1648
    sget-object v11, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    const/16 v12, 0x18

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v3, v11, v12, v13}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1649
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v20, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 1651
    :cond_1b
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needMenu()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1652
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_1c

    .line 1655
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x64

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_9

    .line 1657
    :cond_1c
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1698
    :cond_1d
    :goto_9
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1699
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_a

    :cond_1e
    const/4 v7, 0x0

    .line 1701
    :goto_a
    iget-boolean v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1702
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 1705
    :cond_1f
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    .line 1706
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1707
    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-object/from16 v0, p4

    .line 1708
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1709
    iput-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v0, p8

    .line 1710
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentObject:Ljava/lang/Object;

    .line 1711
    iput-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1712
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1714
    iget-boolean v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    if-nez v0, :cond_21

    .line 1715
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1717
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1718
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1719
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 1722
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1724
    :cond_20
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1725
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 1726
    iput-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v0, 0x0

    .line 1727
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const v2, -0x39e3c000    # -10000.0f

    .line 1728
    iput v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    .line 1729
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    .line 1730
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    .line 1731
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1732
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 1733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1734
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_21
    :goto_c
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1091
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1092
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    .line 1094
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1095
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1096
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    .line 1097
    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_2

    .line 1098
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 1099
    :cond_2
    instance-of v2, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_3

    .line 1100
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1102
    :cond_3
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    :cond_4
    return-void
.end method

.method protected runSmoothHaptic()V
    .locals 3

    .line 1303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    .line 1310
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->vibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [J

    .line 1311
    fill-array-data v1, :array_0

    const/4 v2, -0x1

    .line 1312
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 1314
    :cond_1
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1315
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->vibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x2
    .end array-data
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 6

    .line 1503
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    .line 1504
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    return-void

    .line 1511
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    .line 1513
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->preview_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 1515
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 1516
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 1519
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1520
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1526
    :cond_1
    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 p1, 0x0

    .line 1541
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1542
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1551
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/16 v3, 0xc8

    .line 1552
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v4, "kbd_height"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    .line 1554
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1555
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x3

    .line 1556
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1557
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x30

    .line 1558
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x63

    .line 1559
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_2

    const v0, -0x7ffefef8

    .line 1561
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 1563
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1565
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1566
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1567
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1569
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method public showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v8, v0, v1

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float v9, v0, v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 144
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p1

    .line 145
    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    return-void
.end method

.method public showMenuFor(Landroid/view/View;)Z
    .locals 13

    .line 1991
    instance-of v0, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1992
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 1996
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1997
    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1998
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v5

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getEmoji()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v10

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2001
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    return v2

    :cond_2
    return v1
.end method
