.class public Lorg/telegram/ui/Components/StickersAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "StickersAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickersAlert$GridAdapter;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

.field private animatingDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private buttonTextColorKey:Ljava/lang/String;

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private clearsInputField:Z

.field private customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

.field private delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

.field private descriptionTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/FrameLayout;

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private ignoreLayout:Z

.field private importingSoftware:Ljava/lang/String;

.field private importingStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private importingStickersPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;",
            ">;"
        }
    .end annotation
.end field

.field private inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

.field private itemHeight:I

.field private itemSize:I

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private onDismissListener:Ljava/lang/Runnable;

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pickerBottomFrameLayout:Landroid/widget/FrameLayout;

.field private pickerBottomLayout:Landroid/widget/TextView;

.field private premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field private previewSendButton:Landroid/widget/TextView;

.field private previewSendButtonShadow:Landroid/view/View;

.field public probablyEmojis:Z

.field private reqId:I

.field private scrollOffsetY:I

.field private selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

.field private setTitle:Ljava/lang/String;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private showEmoji:Z

.field private showTooltipWhenToggle:Z

.field private stickerEmojiTextView:Landroid/widget/TextView;

.field private stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private stickerPreviewLayout:Landroid/widget/FrameLayout;

.field private stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private stickerSetCovereds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private uploadImportStickers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;",
            ">;"
        }
    .end annotation
.end field

.field private urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$2XLw9aMFpYVDE2wyubW91fmbpQ0(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkUrlAvailable$32(Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3BndoVIC0LYDMdNjf6gj2hHVoCc(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3FcgUw4t0OZcs3IhRhdMw5zp4EM(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$didReceivedNotification$34(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6tkUH8gce8OgMl1b5uYLB5HBmGQ(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$8(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$71-xWhF2N-ps-lm8D6vEgjTwL3w(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7byJ31wdJrQNU2w3BJdJpN1muMc(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$26(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AzrjLLLOldgUTOYEVtoYoBG5vwc(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIsB5b3AagV3thFNtYuLEPgR3ho(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$24(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LlgmJgt-4XYxOb-LRtvAbQ9XJGM(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NYfa2lp5kamtx6KM7_-7AwCFf4g(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OF1ToYyoGDi_s6vHDodM2k27PNI(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$23(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Rc8SK2TUwhGr8cbGa_s8PybeK6o(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$28(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RiR0kVHWaOEuPQh_2Nx4kZMVBZ4(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RkkGeFUQVB6ppsNKqYDgT1Wteyc(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkUrlAvailable$33(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4VK6fwGDLKAJCWhZTZZYiY62Ms(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T-leQJRWhZJU81PelvxkOb6lS2E(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRzWGgeIZ8ekiqRm1ddAmhS7Zus(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TneqOkypYy3mvu9QnDFjk-huy3s(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U2fzU6MGFyYds8j1PrPauRe8d8o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$9(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WGj0GKU5g8gyUROewrFNTuL7Eks(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WyqvSsJ01nnWOuDoRXg4s_uwqH8(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDIPcMxzipjZkivor4NIx-mrkIc(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ekNx1b09uSe2umZqR4EaIlPaJH0(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gYrKBk7p1gYPRLV50vDWsIxIfZ0(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$heow9fq3j0sa81nys3Oq7ATkI68(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hzb_8Noduew958hzahpnM0fxgLM(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$igmfUtzhJ8yYPL_zftkexrWJdKk(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$2(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyakmcu2H_OiLOdM1CIcszC9BVg(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$loadStickerSet$6(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kU7mi9QXVmHJRBhtMKw9KQtbqA0(Lorg/telegram/ui/Components/StickersAlert;[ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$30([ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oBjQiXoFc8JGjER2-HtGDlc4Gc0(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oO1RDg_exYyNvUyFhZqphclEyLg(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$25(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qeNxHIvrdU_uk-5KQJK4Z57NEpk(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$loadStickerSet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBh0bSV_yxodzvpLAUu_5SCiI98(Lorg/telegram/ui/Components/StickersAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$stT0_yTVThn3faV3dLwo3cKbNtc(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$3(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z1hq5DOXHS5O2oYEAd7OttL6qpI(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkUrlAvailable$31(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zlvHAhRe8N46EyEddN3Z2DJy-qI(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$29(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, v0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/AnimatorSet;

    .line 140
    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/view/View;

    .line 141
    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    .line 173
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 275
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 276
    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    .line 277
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;-><init>()V

    .line 278
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_1

    .line 279
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 280
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;-><init>()V

    .line 281
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 282
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 283
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 284
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    if-nez p3, :cond_0

    new-array p3, v0, [B

    .line 286
    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 288
    :cond_0
    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    goto :goto_0

    .line 289
    :cond_1
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_3

    .line 290
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 291
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;-><init>()V

    .line 292
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 293
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 294
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 295
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez p3, :cond_2

    new-array p3, v0, [B

    .line 297
    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 299
    :cond_2
    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    .line 301
    :cond_3
    :goto_0
    new-instance p3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda32;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    .line 328
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p2, p4, p3}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v0, p4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    .line 335
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, p1, v0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p5, 0x2

    new-array v0, p5, [Landroid/animation/AnimatorSet;

    .line 140
    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-array p5, p5, [Landroid/view/View;

    .line 141
    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 p5, 0x1

    .line 170
    iput-boolean p5, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    .line 173
    new-instance p5, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 340
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 341
    move-object p5, p1

    check-cast p5, Landroid/app/Activity;

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    .line 342
    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    .line 343
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->importingSoftware:Ljava/lang/String;

    .line 344
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda22;

    invoke-direct {p5, p0, p3, p4}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 412
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 416
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, p1, v0, p6}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p6, 0x2

    new-array v0, p6, [Landroid/animation/AnimatorSet;

    .line 140
    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-array p6, p6, [Landroid/view/View;

    .line 141
    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 p6, 0x1

    .line 170
    iput-boolean p6, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    .line 173
    new-instance p6, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {p6, p0}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 422
    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    .line 423
    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 424
    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 425
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 426
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet()V

    .line 427
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->isEmoji()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert;->itemSize:I

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->itemSize:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert;->itemHeight:I

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->itemHeight:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->clearsInputField:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/StickersAlert;Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->checkUrlAvailable(Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/view/View;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/StickersAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/StickersAlert;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->setScrollOffsetY(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/StickersAlert;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    .line 97
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method private checkPremiumStickers()V
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    .line 525
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method private checkUrlAvailable(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 1407
    sget p3, Lorg/telegram/messenger/R$string;->ImportStickersLinkAvailable:I

    const-string v1, "ImportStickersLinkAvailable"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "windowBackgroundWhiteGreenText"

    .line 1408
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1409
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    .line 1410
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    return-void

    .line 1413
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_1

    .line 1414
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p3, 0x0

    .line 1415
    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkRunnable:Ljava/lang/Runnable;

    .line 1416
    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    .line 1417
    iget p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    if-eqz p3, :cond_1

    .line 1418
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    invoke-virtual {p3, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1421
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "ImportStickersEnterUrlInfo"

    if-eqz p3, :cond_2

    .line 1422
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersEnterUrlInfo:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "dialogTextGray2"

    .line 1423
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    const/4 p3, 0x0

    .line 1426
    iput-boolean p3, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    const-string v1, "windowBackgroundWhiteRedText4"

    if-eqz p2, :cond_9

    const-string v2, "_"

    .line 1428
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1433
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge p3, v2, :cond_9

    .line 1434
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_4

    const/16 v4, 0x39

    if-le v3, v4, :cond_7

    :cond_4
    const/16 v4, 0x61

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7a

    if-le v3, v4, :cond_7

    :cond_5
    const/16 v4, 0x41

    if-lt v3, v4, :cond_6

    const/16 v4, 0x5a

    if-le v3, v4, :cond_7

    :cond_6
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_7

    .line 1436
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersEnterUrlInfo:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1429
    :cond_8
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersLinkInvalid:I

    const-string p3, "ImportStickersLinkInvalid"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_9
    if-eqz p2, :cond_c

    .line 1442
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x5

    if-ge p3, v0, :cond_a

    goto :goto_2

    .line 1447
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x20

    if-le p3, v0, :cond_b

    .line 1448
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersLinkInvalidLong:I

    const-string p3, "ImportStickersLinkInvalidLong"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 1453
    :cond_b
    sget p3, Lorg/telegram/messenger/R$string;->ImportStickersLinkChecking:I

    const-string v0, "ImportStickersLinkChecking"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "windowBackgroundWhiteGrayText8"

    .line 1454
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1455
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    .line 1456
    new-instance p3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x12c

    .line 1474
    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1443
    :cond_c
    :goto_2
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersLinkInvalidShort:I

    const-string p3, "ImportStickersLinkInvalidShort"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1444
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private hidePreview()V
    .locals 7

    .line 1527
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 1528
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xc8

    .line 1529
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1530
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$13;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1537
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 537
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$3;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$3;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    .line 698
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 699
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v1, v2, v8, v2, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 701
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    const/4 v9, -0x1

    const/16 v3, 0x33

    invoke-direct {v1, v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v10, 0x30

    .line 702
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 703
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v8

    .line 704
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const-string v11, "dialogShadowLine"

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 705
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 706
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 708
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$4;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$4;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0xe

    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 726
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/Components/StickersAlert$5;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 732
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$6;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 741
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 742
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 743
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$7;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 752
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v8, v2, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 753
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 754
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 755
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 756
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 757
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$8;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 763
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda36;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 827
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 828
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/16 v20, 0x30

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$9;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$9;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    .line 839
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    sget-object v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda15;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 843
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 844
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLines(I)V

    .line 845
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 846
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v2, "dialogTextBlack"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 847
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 848
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v2, "dialogTextLink"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 849
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 850
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v14, 0x12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 851
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 852
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 853
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v16, -0x1

    const/16 v17, 0x32

    const/16 v18, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x28

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "key_sheet_other"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object v12, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 856
    invoke-virtual {v12, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 857
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 858
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 859
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v3, "player_actionBarSelector"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v17, 0x28

    const/16 v18, 0x28

    const/16 v19, 0x35

    const/16 v21, 0x5

    const/16 v22, 0x5

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v4, Lorg/telegram/messenger/R$string;->StickersShare:I

    const-string v5, "StickersShare"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v13, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 862
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v4, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v5, "CopyLink"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 863
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda34;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 865
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 868
    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 869
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    const/16 v6, 0x53

    invoke-direct {v1, v9, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 872
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 873
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    new-instance v12, Landroid/view/View;

    invoke-direct {v12, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v12, v2, v13

    .line 874
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v13

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 875
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v12, v12, v13

    invoke-virtual {v2, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const-string v2, "dialogBackground"

    .line 878
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    const-string v3, "listSelectorSDK21"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 879
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const-string v4, "dialogTextBlue2"

    iput-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->buttonTextColorKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v1, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 881
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v1, v12, v8, v14, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 882
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 883
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 885
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    .line 886
    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    const/4 v14, -0x2

    invoke-static {v9, v14, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 890
    sget v12, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    .line 891
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 892
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/16 v20, -0x1

    const/16 v21, 0x30

    const/16 v22, 0x57

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v25, 0x8

    const/16 v26, 0x8

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    .line 895
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 896
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    new-instance v12, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda6;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 901
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 902
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 903
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 905
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41f00000    # 30.0f

    .line 906
    invoke-virtual {v1, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 907
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    const/16 v12, 0x55

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 908
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 910
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    .line 911
    invoke-virtual {v1, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 912
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 913
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 914
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 915
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/16 v2, 0x1d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v8, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 916
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 917
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-static {v9, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    invoke-direct {v1, v9, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 930
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 931
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    .line 932
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 933
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 936
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 937
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 938
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 941
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    .line 942
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    .line 943
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    .line 944
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateColors()V

    .line 945
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private isEmoji()Z
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->probablyEmojis:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkUrlAvailable$31(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x0

    .line 1460
    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    .line 1461
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 1462
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1463
    sget p1, Lorg/telegram/messenger/R$string;->ImportStickersLinkAvailable:I

    const-string p2, "ImportStickersLinkAvailable"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "windowBackgroundWhiteGreenText"

    .line 1464
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    .line 1465
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    goto :goto_0

    .line 1467
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->ImportStickersLinkTaken:I

    const-string p2, "ImportStickersLinkTaken"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "windowBackgroundWhiteRedText4"

    .line 1468
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1469
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkUrlAvailable$32(Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1459
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda20;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUrlAvailable$33(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 1457
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_checkShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickers_checkShortName;-><init>()V

    .line 1458
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_checkShortName;->short_name:Ljava/lang/String;

    .line 1459
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$34(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 1

    .line 1651
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object p1, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    const-string v0, "application/x-tgsticker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1656
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1658
    iput-boolean p1, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    .line 1659
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1663
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    goto :goto_0

    .line 1666
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 1669
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1670
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$init$10(Landroid/view/View;)V
    .locals 0

    .line 863
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$init$11(Landroid/view/View;)V
    .locals 0

    .line 898
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->hidePreview()V

    return-void
.end method

.method private synthetic lambda$init$12(Landroid/view/View;)V
    .locals 9

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    .line 921
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->hidePreview()V

    const/4 p1, 0x0

    .line 922
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    goto :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/ui/Components/StickersAlert;->clearsInputField:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZILjava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$init$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 756
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$init$8(Landroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 764
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$5900(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v1, :cond_b

    .line 767
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 768
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 769
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 770
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 771
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 772
    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    goto/16 :goto_4

    .line 774
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    const/16 v6, 0x1e

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-ltz v1, :cond_4

    .line 775
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto/16 :goto_1

    .line 778
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    .line 779
    iget-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    if-nez v2, :cond_2

    return-void

    .line 782
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1, v9, v6, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v9, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-boolean v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v1, :cond_3

    const-string v1, "tgs"

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v16, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    .line 784
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 785
    iget v2, v0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 786
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 788
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v7, [Landroid/animation/Animator;

    .line 789
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v6, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 790
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 791
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    :cond_4
    :goto_1
    return-void

    .line 793
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_b

    if-ltz v1, :cond_b

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    goto/16 :goto_4

    .line 796
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    .line 799
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 800
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 801
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v9, :cond_7

    .line 802
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 803
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v2, v9, v10, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_9

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiForSticker(J)Ljava/lang/String;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2, v9, v6, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_a

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v1, :cond_b

    :cond_a
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 814
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 815
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v15, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v16, 0x1

    const-string v14, "webp"

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 816
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 817
    iget v2, v0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 818
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 820
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v7, [Landroid/animation/Animator;

    .line 821
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v6, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 822
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 823
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$init$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$loadStickerSet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V
    .locals 2

    const/4 v0, 0x0

    .line 451
    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    if-nez p1, :cond_1

    .line 453
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    .line 454
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickersAlert$2;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 488
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v1, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 490
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 491
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 492
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    .line 493
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MediaDataController;->preloadStickerSetThumb(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 495
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    .line 496
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    .line 497
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_2

    .line 502
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->AddStickersNotFound:I

    const-string p3, "AddStickersNotFound"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadStickerSet$6(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 450
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V
    .locals 8

    const/4 v0, 0x0

    .line 302
    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    if-nez p1, :cond_3

    .line 304
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 305
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto/16 :goto_1

    .line 307
    :cond_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 308
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 309
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 310
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 311
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 312
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet()V

    goto :goto_1

    .line 314
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 315
    :goto_0
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 316
    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 324
    :cond_3
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 301
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p5, :cond_0

    .line 329
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 330
    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p3, p5, p2

    invoke-virtual {p4, p1, p5}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 333
    :cond_0
    invoke-interface {p3, p4, p5}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 5

    .line 395
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    .line 396
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto :goto_1

    .line 399
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 400
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    const/high16 v3, 0x4000000

    const/4 v4, 0x1

    invoke-virtual {v2, v1, p2, v4, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 347
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    .line 350
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 351
    instance-of v7, v6, Landroid/net/Uri;

    if-eqz v7, :cond_a

    .line 352
    check-cast v6, Landroid/net/Uri;

    .line 353
    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->getStickerExt(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v8, "tgs"

    .line 357
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v4, :cond_1

    .line 359
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v9, v8, :cond_2

    goto/16 :goto_5

    .line 363
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    .line 366
    :cond_3
    new-instance v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-direct {v9}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;-><init>()V

    .line 367
    iput-boolean v8, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    const/16 v10, 0x200

    if-eqz v8, :cond_4

    const/16 v11, 0x40

    goto :goto_2

    :cond_4
    const/16 v11, 0x200

    :goto_2
    mul-int/lit16 v11, v11, 0x400

    int-to-long v11, v11

    .line 368
    invoke-static {v6, v7, v11, v12}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    if-nez v8, :cond_8

    .line 373
    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 374
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v6, v10, :cond_6

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_6

    if-le v8, v10, :cond_7

    :cond_6
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v8, v10, :cond_a

    if-lez v6, :cond_a

    if-le v6, v10, :cond_7

    goto :goto_5

    .line 377
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    .line 378
    iput-boolean v2, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    goto :goto_3

    :cond_8
    const-string v6, "application/x-tgsticker"

    .line 380
    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    :goto_3
    if-eqz p2, :cond_9

    .line 382
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_9

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 383
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string v6, "#\ufe0f\u20e3"

    .line 385
    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    .line 387
    :goto_4
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 394
    :cond_b
    :goto_6
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, v0, v4}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$22(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$23(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$showNameEnterAlert$24(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1342
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$25(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 1352
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1353
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$26(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1351
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V
    .locals 3

    .line 1367
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestedShortName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1368
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestedShortName;

    .line 1369
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestedShortName;->short_name:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1370
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p2, v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 1372
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, v1}, Lorg/telegram/ui/Components/StickersAlert;->checkUrlAvailable(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1376
    :goto_0
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1377
    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    const/4 p3, 0x4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p1, p3, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    if-nez v1, :cond_1

    const-string p1, ""

    .line 1379
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x2

    .line 1381
    aput p1, p5, v2

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$28(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1365
    new-instance p6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda23;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$29(Ljava/lang/String;)V
    .locals 4

    .line 1391
    new-instance p1, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v3, v2}, Lorg/telegram/ui/Components/ImportingAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1392
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$30([ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 7

    const/4 p6, 0x0

    .line 1358
    aget v0, p1, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1361
    :cond_0
    aget v0, p1, p6

    if-nez v0, :cond_1

    .line 1362
    aput v1, p1, p6

    .line 1363
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestShortName;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestShortName;-><init>()V

    .line 1364
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->setTitle:Ljava/lang/String;

    iput-object p6, p5, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestShortName;->title:Ljava/lang/String;

    .line 1365
    iget p6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p6

    new-instance v6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda33;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V

    invoke-virtual {p6, p5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1383
    :cond_1
    aget p3, p1, p6

    const/4 p4, 0x2

    if-ne p3, p4, :cond_3

    const/4 p3, 0x3

    .line 1384
    aput p3, p1, p6

    .line 1385
    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    if-nez p1, :cond_2

    .line 1386
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 1387
    invoke-virtual {p2, p3, p4}, Landroid/widget/EditText;->performHapticFeedback(II)Z

    .line 1389
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1390
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->setTitle:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->importingSoftware:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda27;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper;->prepareImportStickers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$StringCallback;)V

    .line 1394
    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1395
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$13(Landroid/view/View;)V
    .locals 3

    .line 1144
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 1145
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    goto :goto_0

    .line 1146
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    .line 1147
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$14(Landroid/view/View;)V
    .locals 0

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->onCustomButtonPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1175
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFields$15(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 1206
    :try_start_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    if-eqz p1, :cond_2

    .line 1207
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v4, 0x5dc

    invoke-static {p1, v1, v4}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1209
    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    if-eqz p1, :cond_4

    .line 1210
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    invoke-virtual {p1, v1, v2, v0, p2}, Lorg/telegram/messenger/MediaDataController;->processStickerSetInstallResultArchive(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;)V

    goto :goto_1

    .line 1213
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "ErrorOccurred"

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1216
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1218
    :cond_4
    :goto_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->loadStickers(IZZ)V

    return-void
.end method

.method private synthetic lambda$updateFields$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1197
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateFields$17(Landroid/view/View;)V
    .locals 2

    .line 1188
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 1189
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    if-eqz p1, :cond_0

    .line 1190
    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetInstalled()V

    .line 1192
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->cancelRemovingStickerSet(J)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1195
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1197
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$18(Landroid/view/View;)V
    .locals 7

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    if-eqz p1, :cond_0

    .line 1233
    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetUninstalled()V

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 1236
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateFields$19(Landroid/view/View;)V
    .locals 7

    .line 1240
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    if-eqz p1, :cond_0

    .line 1241
    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetUninstalled()V

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 1244
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateFields$20(Landroid/view/View;)V
    .locals 0

    .line 1252
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->showNameEnterAlert()V

    return-void
.end method

.method private synthetic lambda$updateFields$21(Landroid/view/View;)V
    .locals 0

    .line 1260
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    return-void
.end method

.method private loadStickerSet()V
    .locals 4

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_4

    .line 440
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1

    .line 445
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_2

    .line 448
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 449
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 450
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/MediaDataController;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 507
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    if-eqz v1, :cond_3

    .line 508
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    .line 509
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    .line 510
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 512
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    .line 513
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->preloadStickerSetThumb(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 514
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    .line 517
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    .line 520
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    return-void
.end method

.method private onSubItemClick(I)V
    .locals 10

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_0

    return-void

    .line 1013
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const-string v1, "https://"

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_1

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/addemoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1016
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/addstickers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 1019
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    if-nez p1, :cond_2

    .line 1020
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    .line 1021
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 1024
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    :cond_3
    move-object v3, p1

    .line 1026
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$10;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/StickersAlert$10;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    .line 1060
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_6

    .line 1062
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    goto :goto_1

    .line 1065
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1069
    :try_start_0
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1072
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 1

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyItemRemoved(I)V

    .line 991
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    return-void

    .line 995
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :cond_1
    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 7

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1545
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1547
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v3, v2, p1

    if-eqz v3, :cond_5

    .line 1550
    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1552
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, p1

    .line 1553
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    new-array v3, v1, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, p1

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p2, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    aput v6, v1, v0

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$14;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$14;-><init>(Lorg/telegram/ui/Components/StickersAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1573
    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method

.method private setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1690
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 1695
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->buttonTextColorKey:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1697
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1701
    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1702
    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v1, "dialogBackground"

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 1705
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p5

    invoke-static {v3, p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1706
    iget-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/16 p4, 0x8

    .line 1707
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 p1, 0x40

    .line 1708
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1710
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p5

    const-string v1, "listSelectorSDK21"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p5, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    iget-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1712
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 p1, 0x30

    .line 1713
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1715
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private setScrollOffsetY(I)V
    .locals 2

    .line 1511
    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    .line 1512
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1518
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1521
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1523
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private showNameEnterAlert()V
    .locals 17

    move-object/from16 v7, p0

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 1268
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1270
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1271
    sget v5, Lorg/telegram/messenger/R$string;->ImportStickersEnterName:I

    const-string v8, "ImportStickersEnterName"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1272
    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    const-string v8, "Next"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda1;

    invoke-virtual {v6, v5, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1276
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1277
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1278
    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v8, -0x1

    const/16 v9, 0x24

    const/16 v10, 0x33

    const/16 v11, 0x18

    const/4 v12, 0x6

    const/16 v13, 0x18

    const/4 v14, 0x0

    .line 1280
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1284
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 1285
    invoke-virtual {v9, v1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v11, "dialogTextHint"

    .line 1286
    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1288
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLines(I)V

    const-string v11, "t.me/addstickers/"

    .line 1289
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x4001

    .line 1290
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setInputType(I)V

    const/16 v12, 0x33

    .line 1291
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1292
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v13, 0x4

    .line 1293
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x6

    .line 1294
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1295
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v9, v3, v15, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v15, -0x2

    const/16 v14, 0x24

    .line 1296
    invoke-static {v15, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v9, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    new-instance v3, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1299
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "dialogInputField"

    .line 1300
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v16, "dialogInputFieldActivated"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    const-string v16, "dialogTextRed2"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v0, v15, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 1301
    invoke-virtual {v3, v1, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    const-string v0, "dialogTextBlack"

    .line 1302
    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1303
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1304
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 1305
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 1306
    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setGravity(I)V

    .line 1307
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v0, 0x5

    .line 1308
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 1309
    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/16 v0, 0x14

    .line 1310
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1311
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1312
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v0, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1313
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$12;

    invoke-direct {v0, v7, v2, v8, v3}, Lorg/telegram/ui/Components/StickersAlert$12;-><init>(Lorg/telegram/ui/Components/StickersAlert;[ILandroid/widget/TextView;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, -0x1

    const/16 v10, 0x24

    .line 1332
    invoke-static {v0, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    new-instance v4, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda16;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1340
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 1342
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v10, "Cancel"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda0;

    invoke-direct {v10, v3}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v6, v4, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1344
    sget v4, Lorg/telegram/messenger/R$string;->ImportStickersEnterNameInfo:I

    const-string v10, "ImportStickersEnterNameInfo"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 1345
    invoke-virtual {v8, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x17

    .line 1346
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v11, 0x6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v8, v4, v10, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "dialogTextGray2"

    .line 1347
    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, -0x2

    .line 1348
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1351
    new-instance v4, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1355
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1356
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1357
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda13;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/StickersAlert;[ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDescription()V
    .locals 1

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 952
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    :cond_1
    return-void
.end method

.method private updateFields()V
    .locals 11

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-nez v0, :cond_0

    return-void

    .line 1081
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    .line 1083
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 1084
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1, v0, v5, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_1

    const-string v1, "@[a-zA-Z\\d_]{1,32}"

    .line 1087
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->urlPattern:Ljava/util/regex/Pattern;

    .line 1089
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move-object v5, v2

    .line 1090
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    .line 1092
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1094
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 1095
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 1096
    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x40

    if-eq v8, v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 1099
    :cond_3
    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$11;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lorg/telegram/ui/Components/StickersAlert$11;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v5, v8, v6, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    move-object v0, v5

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1112
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1114
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->isEmoji()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_8

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_6

    .line 1119
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 1121
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x3c

    goto :goto_2

    :cond_7
    const/16 v6, 0x2d

    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    div-int/2addr v0, v6

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v5, v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1302(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I

    goto :goto_3

    .line 1123
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1302(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I

    .line 1125
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1300(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1130
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 1131
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_c

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1142
    invoke-direct {p0, v2, v2, v2}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->UnlockPremiumEmoji:I

    const-string v2, "UnlockPremiumEmoji"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 1154
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1158
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_f

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_f

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_f

    .line 1159
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    if-eqz v0, :cond_e

    .line 1161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 1162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_7
    xor-int/2addr v0, v3

    goto :goto_9

    :cond_f
    if-eqz v0, :cond_11

    .line 1169
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :cond_11
    :goto_8
    move v0, v3

    .line 1172
    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    if-eqz v1, :cond_12

    .line 1173
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    .line 1177
    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonText()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonTextColorKey()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonColorKey()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonRippleColorKey()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    .line 1173
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_12
    if-eqz v0, :cond_19

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_14

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_14

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_14

    .line 1181
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "AddManyMasksCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_14
    if-eqz v0, :cond_16

    .line 1182
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_16

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_16

    .line 1183
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_b

    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "AddManyEmojiCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_16
    if-eqz v0, :cond_18

    .line 1185
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v0, 0x0

    :goto_d
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "AddManyStickersCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    move-object v3, v0

    .line 1187
    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    const-string v4, "featuredStickers_buttonText"

    const-string v5, "featuredStickers_addButton"

    const-string v6, "featuredStickers_addButtonPressed"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1223
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v2, :cond_1a

    .line 1224
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "RemoveManyMasksCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1225
    :cond_1a
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_1b

    .line 1226
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "RemoveManyEmojiCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1228
    :cond_1b
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "RemoveManyStickersCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    :goto_f
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    const-string v2, "dialogTextRed"

    if-eqz v1, :cond_1c

    .line 1231
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1239
    :cond_1c
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_14

    .line 1249
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    const-string v5, "dialogTextBlue2"

    if-eqz v1, :cond_22

    .line 1250
    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_11

    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_11
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Stickers"

    invoke-static {v7, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_12

    .line 1255
    :cond_1f
    sget v0, Lorg/telegram/messenger/R$string;->ImportStickersProcessing:I

    const-string v1, "ImportStickersProcessing"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogTextGray2"

    invoke-direct {p0, v2, v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_14

    .line 1252
    :cond_20
    :goto_12
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    sget v1, Lorg/telegram/messenger/R$string;->ImportStickers:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz v6, :cond_21

    goto :goto_13

    :cond_21
    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    :goto_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "ImportStickers"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_14

    .line 1259
    :cond_22
    sget v0, Lorg/telegram/messenger/R$string;->Close:I

    const-string v1, "Close"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-direct {p0, v1, v0, v5}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickersAlert;->setScrollOffsetY(I)V

    return-void

    .line 1488
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1489
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1490
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1492
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 1494
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    move v1, v0

    goto :goto_0

    .line 1496
    :cond_1
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    .line 1502
    :goto_0
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    .line 1505
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 1506
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickersAlert;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method

.method private updateSendButton()V
    .locals 10

    .line 963
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 964
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportStickersRemove:I

    const-string v3, "ImportStickersRemove"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const-string v2, "dialogTextRed"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 967
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    move v1, v0

    move v2, v0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    move v1, v0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 971
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v1, :cond_2

    .line 972
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SendSticker:I

    const-string v3, "SendSticker"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    move v1, v0

    move v2, v0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    move v1, v0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 978
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v3, "Close"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x11

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1636
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1637
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_5

    .line 1638
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_5

    .line 1640
    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1643
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_2

    .line 1644
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    if-nez p1, :cond_1

    return-void

    .line 1647
    :cond_1
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    .line 1648
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    if-eqz p1, :cond_5

    .line 1650
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    invoke-virtual {p1, v0, p3, v1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->uploadMedia(ILorg/telegram/tgnet/TLRPC$InputFile;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1674
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, p2, :cond_5

    .line 1675
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    if-nez p1, :cond_3

    return-void

    .line 1678
    :cond_3
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    .line 1679
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    if-eqz p1, :cond_4

    .line 1681
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    .line 1683
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1684
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :cond_5
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 7

    .line 1590
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->onDismissListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1592
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1594
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1595
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1596
    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    .line 1598
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1599
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1601
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1602
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    .line 1603
    iget-boolean v5, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    if-nez v5, :cond_2

    .line 1604
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 1606
    :cond_2
    iget-boolean v5, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v5, :cond_3

    .line 1607
    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1611
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1612
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1614
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    new-instance v10, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda35;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    .line 1767
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v12, 0x1

    new-array v7, v12, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aput-object v2, v7, v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "dialogBackground"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "key_sheet_scrollUp"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->getThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    .line 1772
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v15, v3, v13

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v21, "dialogShadowLine"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v23, v3, v12

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "dialogShadowLine"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v18, "dialogScrollGlow"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v26, "dialogTextBlack"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1777
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "chat_emojiPanelTrendingDescription"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1779
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "dialogTextLink"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "player_actionBarSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v26, "dialogBackground"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const-string v18, "listSelectorSDK21"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Landroid/widget/TextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->buttonTextColorKey:Ljava/lang/String;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "dialogTextBlue2"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v26, "dialogBackground"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const-string v18, "listSelectorSDK21"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v26, "dialogShadowLine"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "dialogLinkSelection"

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "dialogBackground"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "key_sheet_other"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "actionBarDefaultSubmenuItem"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "actionBarDefaultSubmenuItemIcon"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "dialogButtonSelector"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "actionBarDefaultSubmenuBackground"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()V
    .locals 1

    .line 1967
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->closeWithMenu()V

    return-void

    .line 1971
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1619
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$15;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1630
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setClearsInputField(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->clearsInputField:Z

    return-void
.end method

.method public setCustomButtonDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    .line 1005
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    return-void
.end method

.method public setInstallDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1585
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->onDismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setShowTooltipWhenToggle(Z)V
    .locals 0

    .line 1723
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    return-void
.end method

.method public show()V
    .locals 5

    .line 1579
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1580
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public updateColors()V
    .locals 1

    const/4 v0, 0x0

    .line 1727
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickersAlert;->updateColors(Z)V

    return-void
.end method

.method public updateColors(Z)V
    .locals 4

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->updateColors()V

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v1, "dialogLinkSelection"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const-string v1, "dialogBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const v2, -0x20000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1738
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "key_sheet_other"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "dialogButtonSelector"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsSelectorColor(I)V

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    if-eqz p1, :cond_1

    .line 1745
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    if-nez p1, :cond_0

    .line 1746
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    .line 1747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1748
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1751
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 1752
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1753
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v2, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1757
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1758
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    :cond_2
    return-void
.end method
