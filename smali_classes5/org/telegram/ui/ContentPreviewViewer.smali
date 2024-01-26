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

.field private isPhotoEditor:Z

.field private isRecentSticker:Z

.field private isVisible:Z

.field private keyboardHeight:I

.field private kiklikoGif:Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

.field private kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private kiklikoVideoFile:Ljava/io/File;

.field private kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private kiklikoVideoTextureView:Landroid/view/TextureView;

.field private lastInsets:Landroid/view/WindowInsets;

.field private lastTouchY:F

.field private lastUpdateTime:J

.field private mediaEditManager:Lcom/iMe/manager/common/MediaEditManager;

.field private menuVisible:Z

.field private moveY:F

.field private nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

.field private nftTokenType:Lcom/iMe/model/wallet/home/nft/NftType;

.field private openPreviewRunnable:Ljava/lang/Runnable;

.field private paint:Landroid/graphics/Paint;

.field private parentActivity:Landroid/app/Activity;

.field private parentObject:Ljava/lang/Object;

.field popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private preparingBitmap:Z

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

.method public static synthetic $r8$lambda$TpAt2IviqxAV3Iwo6Azn1OX-W_M(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->lambda$prepareBlurBitmap$7(Landroid/graphics/Bitmap;)V

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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 398
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x71000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 404
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 405
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/16 v0, 0xc8

    .line 410
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    .line 414
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    .line 419
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isKiklikoVideoPrepared:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ContentPreviewViewer;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isKiklikoVideoPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->showUnlockPremiumView()V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ContentPreviewViewer;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isRecentSticker:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->updateToggleAutoPreviewItem()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->toggleAutoPreviewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 104
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ContentPreviewViewer;I)I
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 104
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->startMoveY:F

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 104
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startMoveY:F

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftTokenType:Lcom/iMe/model/wallet/home/nft/NftType;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ContentPreviewViewer;)F
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/ContentPreviewViewer;F)F
    .locals 0

    .line 104
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->setNftAvatar()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Canvas;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContentPreviewViewer;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ContentPreviewViewer;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContentPreviewViewer;)I
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    return p0
.end method

.method private editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 2

    .line 254
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

    .line 1119
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-nez v0, :cond_1

    .line 1121
    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    .line 1122
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    if-nez v0, :cond_0

    .line 1124
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {v0}, Lorg/telegram/ui/ContentPreviewViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    .line 1126
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

.method public static getInstanceForNft(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ContentPreviewViewer;
    .locals 1

    .line 124
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    .line 125
    iput-object p0, v0, Lorg/telegram/ui/ContentPreviewViewer;->mediaEditManager:Lcom/iMe/manager/common/MediaEditManager;

    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public static hasInstance()Z
    .locals 1

    .line 1132
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

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$3(ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    .line 1452
    iget-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1458
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    :cond_1
    const/4 v13, 0x1

    if-nez p1, :cond_2

    .line 1461
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1462
    :cond_2
    iput-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1463
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

    .line 1465
    iput-boolean v14, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    .line 1467
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v2, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v2, :cond_4

    .line 1468
    check-cast v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    .line 1469
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/KiklikoGifView;->getFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    .line 1470
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/KiklikoGifView;->getGif()Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    .line 1471
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->preparePlayer()V

    goto/16 :goto_8

    .line 1472
    :cond_4
    instance-of v2, v0, Lcom/iMe/ui/custom/nft/NftRootView;

    if-eqz v2, :cond_6

    .line 1473
    check-cast v0, Lcom/iMe/ui/custom/nft/NftRootView;

    .line 1474
    invoke-virtual {v0}, Lcom/iMe/ui/custom/nft/NftRootView;->getNftToken()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 1475
    invoke-virtual {v0}, Lcom/iMe/ui/custom/nft/NftRootView;->getNftTokenType()Lcom/iMe/model/wallet/home/nft/NftType;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->nftTokenType:Lcom/iMe/model/wallet/home/nft/NftType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1476
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

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getImageUrl()Ljava/lang/String;

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

    .line 1478
    :cond_6
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v2, :cond_8

    .line 1479
    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1480
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v3

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget v4, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

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

    iget-object v9, v12, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    move/from16 v10, p1

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    .line 1482
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto/16 :goto_9

    .line 1483
    :cond_8
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_a

    .line 1484
    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Cells/StickerCell;

    .line 1485
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

    .line 1487
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    .line 1488
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->isClearsInputField()Z

    move-result v0

    iput-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    goto/16 :goto_9

    .line 1489
    :cond_a
    instance-of v2, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_e

    .line 1490
    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1491
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

    if-ne v6, v13, :cond_d

    .line 1493
    iget-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-eqz v0, :cond_15

    .line 1494
    :cond_d
    invoke-virtual {v15, v13}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_9

    :cond_e
    move/from16 v6, p4

    .line 1496
    instance-of v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v2, :cond_f

    .line 1497
    check-cast v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    .line 1498
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v3, 0x0

    .line 1500
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

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

    .line 1503
    :cond_f
    instance-of v2, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v2, :cond_12

    .line 1504
    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1505
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1508
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_11

    .line 1510
    iget v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_10
    move-object v2, v1

    :cond_11
    :goto_6
    if-eqz v2, :cond_14

    const/4 v3, 0x0

    .line 1514
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

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

    .line 1517
    :cond_12
    instance-of v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v2, :cond_14

    .line 1518
    check-cast v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1519
    iget-object v0, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1521
    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_13

    .line 1522
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v2, v0

    goto :goto_7

    :cond_13
    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_14

    const/4 v3, 0x0

    .line 1525
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

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

    :cond_14
    :goto_8
    move v13, v14

    :cond_15
    :goto_9
    if-nez p1, :cond_16

    if-eqz v13, :cond_16

    .line 1532
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v14, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1533
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_16

    .line 1534
    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->resetTouch()V

    :cond_16
    return-void
.end method

.method private static synthetic lambda$onTouch$2(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V
    .locals 1

    .line 1163
    instance-of v0, p0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 1164
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareBlurBitmap$7(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2050
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 2051
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->preparingBitmap:Z

    .line 2052
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    if-eqz p1, :cond_0

    .line 2053
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setParentActivity$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1575
    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    return-object p2
.end method

.method private synthetic lambda$setParentActivity$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1598
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

    .line 1599
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    :cond_1
    return v0
.end method

.method private synthetic lambda$showUnlockPremiumView$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1084
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1086
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method private synthetic lambda$showUnlockPremiumView$1(Landroid/view/View;)V
    .locals 2

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    .line 1090
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    .line 1091
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 1094
    :cond_0
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    const/4 p1, 0x0

    .line 1096
    iput-boolean p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1097
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1098
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1887
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 1891
    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1892
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->prepareBlurBitmap()V

    .line 1895
    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 1896
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    const v6, 0x3e088889

    if-eqz v2, :cond_3

    iget v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v8, v7, v4

    if-eqz v8, :cond_3

    add-float/2addr v7, v6

    .line 1897
    iput v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v2, v7, v4

    if-lez v2, :cond_2

    .line 1899
    iput v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1901
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    .line 1902
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v7, v2, v5

    if-eqz v7, :cond_5

    sub-float/2addr v2, v6

    .line 1903
    iput v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    .line 1905
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1907
    :cond_4
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1910
    :cond_5
    :goto_0
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_6

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    .line 1911
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1912
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41400000    # 12.0f

    .line 1913
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1914
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1915
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1916
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1920
    :cond_6
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, 0x43340000    # 180.0f

    iget v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1921
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 1922
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1924
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1928
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_7

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_7

    .line 1929
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v6

    add-int/2addr v2, v6

    .line 1930
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v6

    goto :goto_1

    .line 1932
    :cond_7
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v2, v8

    .line 1935
    :goto_1
    iget v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 1936
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

    .line 1938
    :cond_8
    iget-boolean v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v7, :cond_9

    .line 1939
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

    .line 1941
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

    .line 1944
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
    move v6, v8

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

    .line 1945
    iget-boolean v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v6, :cond_b

    .line 1946
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 1948
    :cond_b
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    add-float/2addr v9, v2

    invoke-virtual {v0, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1949
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v6

    div-float/2addr v9, v6

    int-to-float v6, v7

    mul-float/2addr v6, v9

    float-to-int v6, v6

    .line 1952
    iget-boolean v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v7, :cond_c

    int-to-float v7, v6

    const v12, 0x3f2ab9f5    # 0.6669f

    mul-float/2addr v12, v7

    const/high16 v13, 0x3d600000    # 0.0546875f

    mul-float/2addr v13, v7

    .line 1955
    iget-object v14, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1956
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    sub-float v14, v7, v12

    div-float v15, v7, v11

    sub-float v16, v14, v15

    sub-float v13, v16, v13

    div-float/2addr v14, v11

    sub-float/2addr v14, v15

    invoke-virtual {v2, v13, v14, v12, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1957
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1959
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget v12, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v2, v12}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1960
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v2, v6, v6, v7, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1961
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_5

    .line 1963
    :cond_c
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1964
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v7, v6

    int-to-float v7, v7

    div-float/2addr v7, v11

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1965
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1968
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_d

    .line 1969
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1970
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

    .line 1971
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1972
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1977
    :cond_d
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly:Z

    if-nez v2, :cond_e

    .line 1978
    iget v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-ne v2, v10, :cond_e

    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-nez v2, :cond_e

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 1979
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1980
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1981
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

    mul-float/2addr v12, v10

    add-float/2addr v12, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    .line 1982
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    sub-float v10, v4, v10

    mul-float/2addr v10, v3

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1983
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v10, v2

    div-int/lit8 v10, v10, 0x2

    neg-int v6, v6

    add-int/2addr v6, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v9, v10, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1984
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1986
    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_10

    .line 1987
    iget-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const/16 v6, 0x1e

    const/16 v7, 0xfa

    if-eqz v2, :cond_f

    .line 1988
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v7, v6

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 1990
    :cond_f
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v7, v6

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1992
    :goto_6
    sget-object v2, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    iget v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1993
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1995
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1996
    iget-boolean v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/high16 v2, 0x42f00000    # 120.0f

    if-eqz v0, :cond_11

    .line 1997
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_14

    .line 1998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1999
    iget-wide v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    sub-long v7, v5, v7

    .line 2000
    iput-wide v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 2001
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    long-to-float v3, v7

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 2002
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2003
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_14

    .line 2004
    iput v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    goto :goto_7

    .line 2007
    :cond_11
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_14

    .line 2008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2009
    iget-wide v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    sub-long v9, v6, v9

    .line 2010
    iput-wide v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 2011
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    long-to-float v3, v9

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 2012
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2013
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_12

    .line 2014
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 2016
    :cond_12
    iget v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_14

    .line 2017
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 2018
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 2019
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2020
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 2021
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2022
    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    .line 2024
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    invoke-static {v0, v8, v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2025
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 2027
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->releasePlayer()V

    .line 2028
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2029
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2030
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 2033
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    :goto_7
    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 2

    .line 2045
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->preparingBitmap:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2048
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->preparingBitmap:Z

    .line 2049
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private preparePlayer()V
    .locals 10

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 200
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

    .line 201
    new-instance v0, Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    const/16 v3, 0x11

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 207
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ContentPreviewViewer$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    :cond_1
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 246
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    .line 247
    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "other"

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private releasePlayer()V
    .locals 3

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->isKiklikoVideoPrepared:Z

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 178
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 182
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoPlayerLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 185
    iput-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoTextureView:Landroid/view/TextureView;

    :cond_2
    return-void
.end method

.method private rubberYPoisition(FF)F
    .locals 2

    .line 1881
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float v0, v1, v0

    sub-float v0, v1, v0

    mul-float/2addr v0, p2

    neg-float p2, v0

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p2, v1

    return p2
.end method

.method private setNftAvatar()V
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->mediaEditManager:Lcom/iMe/manager/common/MediaEditManager;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/manager/common/MediaEditManager;->setNftAvatar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showUnlockPremiumView()V
    .locals 4

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1081
    new-instance v0, Lorg/telegram/ui/UnlockPremiumView;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/UnlockPremiumView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    .line 1082
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    iget-object v0, v0, Lorg/telegram/ui/UnlockPremiumView;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateToggleAutoPreviewItem()V
    .locals 3

    .line 167
    iget v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 168
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->toggleAutoPreviewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_1

    .line 169
    sget v2, Lorg/telegram/messenger/R$string;->content_preview_disable_preview:I

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->content_preview_enable_preview:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 170
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_wallet_crypto_cipher_eye:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye:I

    .line 168
    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public clearDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V
    .locals 1

    .line 1835
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1836
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1837
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1838
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1839
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1840
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1841
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1812
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1813
    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    .line 1814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x0

    .line 1817
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    .line 1818
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    .line 1819
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 1820
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftTokenType:Lcom/iMe/model/wallet/home/nft/NftType;

    .line 1822
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1823
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1824
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1825
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v1, 0x0

    .line 1826
    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    .line 1827
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    if-eqz v0, :cond_1

    .line 1829
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1831
    :cond_1
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

    :cond_2
    :goto_0
    return-void
.end method

.method public closeWithMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 1800
    iput-boolean v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 1803
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1805
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1847
    invoke-direct {p0}, Lorg/telegram/ui/ContentPreviewViewer;->releasePlayer()V

    const/4 v0, 0x0

    .line 1848
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoGif:Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    .line 1849
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoFile:Ljava/io/File;

    .line 1850
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftToken:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 1851
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->nftTokenType:Lcom/iMe/model/wallet/home/nft/NftType;

    const/4 v1, 0x0

    .line 1853
    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    .line 1854
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1855
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1856
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1857
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1858
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1861
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1862
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1863
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurrBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v2, 0x0

    .line 1865
    iput v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->blurProgress:F

    .line 1866
    iput-boolean v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1868
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1869
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1870
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1872
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1874
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1876
    :goto_0
    sput-object v0, Lorg/telegram/ui/ContentPreviewViewer;->Instance:Lorg/telegram/ui/ContentPreviewViewer;

    .line 1877
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

    .line 1796
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

    .line 135
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 9

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move v8, p3

    goto :goto_0

    :cond_0
    move v8, v0

    .line 1369
    :goto_0
    iput-object p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz p4, :cond_1

    .line 1371
    invoke-interface {p4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isPhotoEditor()Z

    move-result p4

    iput-boolean p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    .line 1373
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->can()Z

    move-result p4

    if-nez p4, :cond_2

    return v0

    .line 1376
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    if-nez p4, :cond_15

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 1378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-eqz v8, :cond_3

    move v1, p3

    goto :goto_1

    .line 1379
    :cond_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1
    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_15

    const/4 v3, 0x0

    if-eqz v8, :cond_4

    move-object v3, p6

    goto :goto_3

    .line 1386
    :cond_4
    instance-of v4, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_5

    .line 1387
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    return v0

    .line 1392
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1393
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1394
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1395
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    if-nez v8, :cond_8

    if-gt v4, p1, :cond_7

    if-lt v5, p1, :cond_7

    if-gt v6, p4, :cond_7

    if-ge v7, p4, :cond_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1403
    :cond_8
    instance-of v1, v3, Lcom/iMe/fork/ui/view/KiklikoGifView;

    const/4 v2, -0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_9

    .line 1404
    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    :goto_4
    move v6, v1

    goto/16 :goto_7

    .line 1405
    :cond_9
    instance-of v1, v3, Lcom/iMe/ui/custom/nft/NftRootView;

    if-eqz v1, :cond_a

    .line 1406
    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    .line 1407
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_4

    .line 1409
    :cond_a
    instance-of v1, v3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_b

    .line 1410
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->showingBitmap()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1412
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_5
    move v6, v0

    goto/16 :goto_7

    .line 1414
    :cond_b
    instance-of v1, v3, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_c

    .line 1415
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/StickerCell;->showingBitmap()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1417
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_5

    .line 1419
    :cond_c
    instance-of v1, v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_f

    .line 1420
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1421
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->showingBitmap()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1422
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1424
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v1, v0

    goto :goto_4

    .line 1425
    :cond_d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->isGif()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1427
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v1, p3

    goto :goto_4

    :cond_e
    move v1, v2

    goto :goto_4

    .line 1430
    :cond_f
    instance-of v1, v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_10

    .line 1432
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_6
    move v6, v4

    goto :goto_7

    .line 1433
    :cond_10
    instance-of v1, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_11

    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1435
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_6

    .line 1436
    :cond_11
    instance-of v1, v3, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v1, :cond_12

    .line 1437
    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1438
    iget-object v1, v1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1439
    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_12

    .line 1441
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_6

    :cond_12
    move v6, v2

    :goto_7
    if-ne v6, v2, :cond_13

    return v0

    .line 1447
    :cond_13
    iput p4, p0, Lorg/telegram/ui/ContentPreviewViewer;->startX:I

    .line 1448
    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->startY:I

    .line 1449
    iput-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 1451
    new-instance p1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;

    move-object v1, p1

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move-object v5, p6

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContentPreviewViewer;ZLorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_14

    .line 1540
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_14
    const-wide/16 p4, 0xc8

    .line 1542
    invoke-static {p1, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_8
    return p3

    :cond_15
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->kiklikoVideoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 1153
    iput-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v1, :cond_0

    .line 1155
    invoke-interface/range {p5 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isPhotoEditor()Z

    move-result v1

    iput-boolean v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    .line 1157
    :cond_0
    iget-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->can()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 1160
    :cond_1
    iget-object v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1161
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v13, 0x1

    const/4 v3, 0x0

    if-eq v1, v13, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3

    goto/16 :goto_12

    .line 1183
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_33

    .line 1184
    iget-boolean v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_2c

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_2b

    .line 1186
    iget v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    if-ne v1, v13, :cond_8

    iget-boolean v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-nez v1, :cond_8

    .line 1187
    iget-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    if-nez v0, :cond_7

    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 1188
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    const v1, -0x39e3c000    # -10000.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    .line 1190
    iput v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1191
    iput v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    goto :goto_1

    .line 1193
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1194
    iget v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    iget v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1195
    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    cmpl-float v0, v2, v1

    if-lez v0, :cond_5

    .line 1197
    iput v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    goto :goto_0

    :cond_5
    const/16 v0, 0x3c

    .line 1198
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_6

    .line 1199
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1201
    :cond_6
    :goto_0
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/16 v1, 0xc8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->rubberYPoisition(FF)F

    move-result v0

    iput v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 1202
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1203
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    const/16 v1, 0x37

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    .line 1204
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1205
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_1
    return v13

    .line 1212
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2b

    .line 1218
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_9

    return v2

    .line 1223
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1224
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 1225
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 1226
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v15

    if-gt v10, v6, :cond_2a

    if-lt v11, v6, :cond_2a

    if-gt v14, v1, :cond_2a

    if-ge v15, v1, :cond_a

    goto/16 :goto_10

    .line 1231
    :cond_a
    instance-of v0, v9, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    .line 1233
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_3
    move v10, v2

    goto :goto_6

    .line 1234
    :cond_b
    instance-of v0, v9, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_c

    .line 1236
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_3

    .line 1237
    :cond_c
    instance-of v0, v9, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_f

    .line 1238
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1239
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1241
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v0, v2

    goto :goto_4

    .line 1242
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->isGif()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1244
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v0, v13

    goto :goto_4

    :cond_e
    move v0, v1

    :goto_4
    move v10, v0

    goto :goto_6

    .line 1246
    :cond_f
    instance-of v0, v9, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v0, :cond_10

    .line 1248
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :goto_5
    move v10, v5

    goto :goto_6

    .line 1249
    :cond_10
    instance-of v0, v9, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_11

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1251
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_5

    :cond_11
    move v10, v1

    :goto_6
    if-eq v10, v1, :cond_2b

    .line 1253
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-ne v9, v0, :cond_12

    goto/16 :goto_11

    .line 1256
    :cond_12
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_13

    .line 1257
    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->resetTouch()V

    .line 1259
    :cond_13
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_14

    .line 1260
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_7

    .line 1261
    :cond_14
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_15

    .line 1262
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_7

    .line 1263
    :cond_15
    instance-of v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_16

    .line 1264
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1266
    :cond_16
    :goto_7
    iput-object v9, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    .line 1267
    iput-boolean v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    .line 1268
    iput-boolean v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->menuVisible:Z

    .line 1269
    iput-boolean v2, v12, Lorg/telegram/ui/ContentPreviewViewer;->closeOnDismiss:Z

    .line 1270
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_17

    .line 1271
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1273
    :cond_17
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->unlockPremiumView:Lorg/telegram/ui/UnlockPremiumView;

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 1275
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    instance-of v1, v0, Lcom/iMe/ui/custom/nft/NftRootView;

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1276
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_18

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_8

    :cond_18
    move-object v6, v3

    :goto_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    check-cast v0, Lcom/iMe/ui/custom/nft/NftRootView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/nft/NftRootView;->getNftToken()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v10

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, p6

    move v10, v11

    move-object v11, v14

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    goto/16 :goto_f

    .line 1278
    :cond_19
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_1b

    .line 1279
    move-object v11, v0

    check-cast v11, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1280
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v4

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget v5, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_1a

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_9

    :cond_1a
    move-object v6, v3

    :goto_9
    const/4 v7, 0x0

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v8

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v10

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1281
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto/16 :goto_f

    .line 1282
    :cond_1b
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_1d

    .line 1283
    move-object v11, v0

    check-cast v11, Lorg/telegram/ui/Cells/StickerCell;

    .line 1284
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_1c

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_a

    :cond_1c
    move-object v6, v3

    :goto_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->getParentObject()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v10

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1285
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    .line 1286
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/StickerCell;->isClearsInputField()Z

    move-result v0

    iput-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->clearsInputField:Z

    goto/16 :goto_f

    .line 1287
    :cond_1d
    instance-of v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_21

    .line 1288
    move-object v11, v0

    check-cast v11, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1289
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v0, :cond_1e

    invoke-interface {v0, v13}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_1e
    move-object v5, v3

    :goto_b
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getInlineBot()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_c

    :cond_1f
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    move-object v8, v0

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v10

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-ne v10, v13, :cond_20

    .line 1290
    iget-boolean v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->isPhotoEditor:Z

    if-eqz v0, :cond_29

    .line 1291
    :cond_20
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_f

    .line 1293
    :cond_21
    instance-of v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v1, :cond_22

    .line 1294
    check-cast v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    .line 1295
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_29

    const/4 v2, 0x0

    .line 1297
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v6, v10

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_f

    .line 1299
    :cond_22
    instance-of v1, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_26

    .line 1300
    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1301
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1304
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_24

    .line 1306
    iget v1, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    :cond_23
    move-object v1, v3

    :cond_24
    :goto_d
    if-eqz v1, :cond_25

    const/4 v2, 0x0

    .line 1310
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v6, v10

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_f

    :cond_25
    return v2

    .line 1314
    :cond_26
    instance-of v1, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v1, :cond_29

    .line 1315
    check-cast v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    .line 1316
    iget-object v0, v0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1318
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_27

    .line 1319
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    move-object v1, v0

    goto :goto_e

    :cond_27
    move-object v1, v3

    :goto_e
    if-nez v1, :cond_28

    return v2

    :cond_28
    const/4 v2, 0x0

    .line 1324
    iget v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v6, v10

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1326
    :cond_29
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->runSmoothHaptic()V

    return v13

    :cond_2a
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_2b
    :goto_11
    return v13

    .line 1332
    :cond_2c
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_33

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2d

    .line 1334
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

    cmpl-double v0, v0, v4

    if-lez v0, :cond_33

    .line 1335
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1336
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_14

    .line 1339
    :cond_2d
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1340
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_14

    .line 1162
    :cond_2e
    :goto_12
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda4;

    move-object/from16 v4, p4

    invoke-direct {v1, v0, v4}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V

    const-wide/16 v4, 0x96

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1167
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2f

    .line 1168
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1169
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    goto :goto_14

    .line 1170
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 1172
    iget-object v0, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 1173
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_30

    .line 1174
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_13

    .line 1175
    :cond_30
    instance-of v1, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v1, :cond_31

    .line 1176
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_13

    .line 1177
    :cond_31
    instance-of v1, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v1, :cond_32

    .line 1178
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1180
    :cond_32
    :goto_13
    iput-object v3, v12, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    :cond_33
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

    .line 140
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

    .line 1633
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v9, :cond_21

    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v9, :cond_0

    goto/16 :goto_c

    .line 1636
    :cond_0
    iput-boolean v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly:Z

    .line 1637
    iput-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v9, p7

    .line 1638
    iput-boolean v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->isRecentSticker:Z

    const/4 v9, 0x0

    .line 1639
    iput-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 1640
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v10, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->isDarkColor(I)Z

    move-result v10

    .line 1641
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_1

    const/high16 v10, 0x71000000

    goto :goto_0

    :cond_1
    const v10, 0x64e6e6e6

    :goto_0
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v10, 0x0

    .line 1642
    iput-boolean v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1643
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v11, 0x5a

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v14, :cond_2

    goto/16 :goto_2

    .line 1719
    :cond_2
    sget v3, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    if-eq v5, v3, :cond_8

    sget v3, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    if-eq v5, v3, :cond_8

    const-string v3, "gif"

    if-eqz v0, :cond_4

    .line 1721
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    .line 1722
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v11

    .line 1723
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    .line 1724
    iput v14, v10, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz v11, :cond_3

    .line 1726
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

    .line 1728
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

    .line 1731
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v9, :cond_5

    return-void

    .line 1734
    :cond_5
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v10, :cond_6

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    const-string v10, "video/mp4"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1735
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

    .line 1737
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

    .line 1743
    :cond_8
    :goto_1
    sget v3, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    if-ne v5, v3, :cond_9

    .line 1744
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

    .line 1747
    :cond_9
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_a

    .line 1750
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x64

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_9

    .line 1752
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

    .line 1648
    :cond_c
    sget-object v10, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/16 v12, 0x18

    if-nez v10, :cond_d

    .line 1649
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v15}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v10, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    .line 1650
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1653
    :cond_d
    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    const/4 v10, 0x0

    .line 1654
    iput-boolean v10, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    const-wide/16 v9, 0x514

    const/16 v16, 0x1f4

    if-eqz v0, :cond_19

    const/4 v13, 0x0

    .line 1657
    :goto_3
    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_f

    .line 1658
    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1659
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

    .line 1665
    sget-object v13, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/4 v12, 0x0

    invoke-static {v3, v13, v15, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1666
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

    .line 1668
    :cond_11
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v3, :cond_12

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needMenu()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1669
    :cond_12
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_13

    .line 1672
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x64

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1674
    :cond_13
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1676
    :cond_14
    :goto_5
    iput-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1677
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x5a

    invoke-static {v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 1678
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1679
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

    .line 1681
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

    .line 1682
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 1683
    iput-boolean v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    .line 1684
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

    .line 1687
    :cond_16
    :goto_6
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1688
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1690
    :cond_17
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    .line 1691
    :goto_7
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1d

    .line 1692
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1693
    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v9, :cond_18

    .line 1694
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1695
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

    .line 1696
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

    .line 1703
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

    .line 1705
    sget-object v11, Lorg/telegram/ui/ContentPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    const/16 v12, 0x18

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v3, v11, v12, v13}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1706
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

    .line 1708
    :cond_1b
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needMenu()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1709
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_1c

    .line 1712
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x64

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_9

    .line 1714
    :cond_1c
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1755
    :cond_1d
    :goto_9
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1756
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_a

    :cond_1e
    const/4 v7, 0x0

    .line 1758
    :goto_a
    iget-boolean v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->drawEffect:Z

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1759
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 1762
    :cond_1f
    iput v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentContentType:I

    .line 1763
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1764
    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->importingSticker:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-object/from16 v0, p4

    .line 1765
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentQuery:Ljava/lang/String;

    .line 1766
    iput-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v0, p8

    .line 1767
    iput-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentObject:Ljava/lang/Object;

    .line 1768
    iput-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1769
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1771
    iget-boolean v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    if-nez v0, :cond_21

    .line 1772
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1774
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1775
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1776
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 1779
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1781
    :cond_20
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1782
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 1783
    iput-boolean v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->isVisible:Z

    const/4 v0, 0x0

    .line 1784
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->showProgress:F

    const v2, -0x39e3c000    # -10000.0f

    .line 1785
    iput v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastTouchY:F

    .line 1786
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveYProgress:F

    .line 1787
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->finalMoveY:F

    .line 1788
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->currentMoveY:F

    .line 1789
    iput v0, v1, Lorg/telegram/ui/ContentPreviewViewer;->moveY:F

    .line 1790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->lastUpdateTime:J

    .line 1791
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

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1137
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1138
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->openPreviewRunnable:Ljava/lang/Runnable;

    .line 1140
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1141
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1142
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    .line 1143
    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v2, :cond_2

    .line 1144
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 1145
    :cond_2
    instance-of v2, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_3

    .line 1146
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 1148
    :cond_3
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentPreviewCell:Landroid/view/View;

    :cond_4
    return-void
.end method

.method protected runSmoothHaptic()V
    .locals 3

    .line 1351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    .line 1358
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->vibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [J

    .line 1359
    fill-array-data v1, :array_0

    const/4 v2, -0x1

    .line 1360
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 1362
    :cond_1
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1363
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

    .line 1557
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    .line 1558
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    return-void

    .line 1565
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->parentActivity:Landroid/app/Activity;

    .line 1567
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->preview_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->slideUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 1569
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 1570
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1572
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 1573
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1574
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1580
    :cond_1
    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/4 p1, 0x0

    .line 1595
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1596
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer;)V

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1605
    iget p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/16 v3, 0xc8

    .line 1606
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v4, "kbd_height"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->keyboardHeight:I

    .line 1608
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1609
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x3

    .line 1610
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1611
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x30

    .line 1612
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x63

    .line 1613
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_2

    const v0, -0x7ffefef8

    .line 1615
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 1617
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1619
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1620
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1621
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1623
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1624
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1625
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->containerView:Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method public showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v8, v0, v1

    .line 145
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

    .line 146
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p1

    .line 147
    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    return-void
.end method

.method public showMenuFor(Landroid/view/View;)Z
    .locals 13

    .line 2059
    instance-of v0, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2060
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 2064
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2065
    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 2066
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v5

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer;->delegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getQuery(Z)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v10

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ContentPreviewViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, p0

    move-object v6, v0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/ContentPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$BotInlineResult;IZLjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2069
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    return v2

    :cond_2
    return v1
.end method
