.class public abstract Lorg/telegram/ui/Components/BotWebViewContainer;
.super Landroid/widget/FrameLayout;
.source "BotWebViewContainer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;,
        Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;,
        Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;,
        Lorg/telegram/ui/Components/BotWebViewContainer$WebViewProxy;
    }
.end annotation


# static fields
.field private static final WHITELISTED_SCHEMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blockedDialogsUntil:J

.field private botUser:Lorg/telegram/tgnet/TLRPC$User;

.field private buttonData:Ljava/lang/String;

.field private cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private currentAccount:I

.field private currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private currentPaymentSlug:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

.field private dialogSequentialOpenTimes:I

.field private flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private flickerView:Lorg/telegram/ui/Components/BackupImageView;

.field private hasQRPending:Z

.field private hasUserPermissions:Z

.field private isBackButtonVisible:Z

.field private isFlickeringCenter:Z

.field private isPageLoaded:Z

.field private isRequestingPageOpen:Z

.field private isViewPortByMeasureSuppressed:Z

.field private lastButtonColor:I

.field private lastButtonText:Ljava/lang/String;

.field private lastButtonTextColor:I

.field private lastClickMs:J

.field private lastDialogClosed:J

.field private lastDialogCooldownTime:J

.field private lastDialogType:I

.field private lastExpanded:Z

.field private lastQrText:Ljava/lang/String;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private onPermissionsRequestResultCallback:Ljava/lang/Runnable;

.field private parentActivity:Landroid/app/Activity;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private shownDialogsCount:I

.field private webView:Landroid/webkit/WebView;

.field private webViewNotAvailable:Z

.field private webViewNotAvailableText:Landroid/widget/TextView;

.field private webViewProgressListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private webViewScrollListener:Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;


# direct methods
.method public static synthetic $r8$lambda$-T2GX3EPZJAVxsQQmcvxOXvEYNI(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$21(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$03j1cfCahV6jjopy_uhPNWlVbU0(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$13(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0qZTMAejvyaOUUJJ3fBbKe3rCZU(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$16([Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0uDcigqN2QHE9AcUgc9XOWPITRE(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$9(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$456rcgIN_4Qi0V4QbVu_XXfDeKg(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$showDialog$27(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Nm6s2niGjuxDVKEsglQq8sRrKw(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$11(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6YZiBLDk_fGB80pjDW0P_iWAGQ0(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroid/content/DialogInterface;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$15([Ljava/lang/String;Landroid/content/DialogInterface;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7gR6GlcJgTE_Da4p37_c5MYvCms(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$17(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BTDfBr4hIfn71LZeLYcATin5XhA(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$12(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BrRnhmmMT63iM1pedpPe_iyVPkQ(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FIDAe3vxxzsOsdkvNyuEk4rpOwI(Lorg/telegram/ui/Components/BotWebViewContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$reload$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SNscmy7a1x3jCMVma2bt2ImqO-U(Lorg/telegram/ui/Components/BotWebViewContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ss08vDLWUNBweQUfk5fHzIwEXU8(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SxusRnK8FuvoHycIFJztgL7JdLs(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$25(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UiBapM2NEypJ2e_h9KyN1W4oOvU(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$18([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VFsmn7ANchL4S17MJQvc3wXDMyc(Lorg/telegram/ui/Components/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$runWithPermissions$1(Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBHsyTn-EE9LrI1RDJCaDN_jl3M(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$26([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_eFVzCWFBJYdvgCx9hmFVN1L4bo(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$14(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ep-lWfpb4jAiv6XQEy9sHnI8X9c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$evaluateJs$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUuHD2mHVSGfwThuUvhrM5T15Vw(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$22(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mYwO1pDoTRfCXm0TuwyRh--_MK4(Lorg/telegram/ui/Components/BotWebViewContainer;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$evaluateJs$7(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlGXb09y2TS81m0SrbXMwDDvfq4(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$24([Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$noMkCrhS8qAdBjJxLR8Qo35tS34(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$loadFlickerAndSettingsItem$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7-860cg7vDq80oW4m4FgOUE2Io(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$10(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueF1KBgSdj_8_TU088nxGo936ns(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onOpenUri$0(Landroid/net/Uri;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoSi9wTni_A1530ayqnrYCALVOo(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$loadFlickerAndSettingsItem$3(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yDXIRZdITeciRSLd5tbe9eq9P6Y(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$loadUrl$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFwG9BE87se5mafA9l7YFgGS8wo(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$8(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http"

    const-string v1, "https"

    .line 93
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/BotWebViewContainer;->WHITELISTED_SCHEMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 4

    .line 145
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 112
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonColor:I

    .line 113
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonTextColor:I

    const-string v0, ""

    .line 114
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1617
    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogType:I

    const/4 v1, 0x0

    .line 1618
    iput v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->shownDialogsCount:I

    .line 146
    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 148
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 149
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    .line 152
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v1, p2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/16 v2, 0x99

    const/16 v3, 0xcc

    .line 153
    invoke-virtual {p2, p3, v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    .line 154
    new-instance p2, Lorg/telegram/ui/Components/BotWebViewContainer$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$1;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    .line 184
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 185
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 186
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x30

    const/4 v3, -0x2

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    .line 189
    sget p1, Lorg/telegram/messenger/R$string;->BotWebViewNotAvailablePlaceholder:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x10

    .line 194
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 195
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-static {v0, v3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BotWebViewContainer;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/BotWebViewContainer;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->openQrScanActivity()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/BotWebViewContainer;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->onEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/BotWebViewContainer;J)J
    .locals 0

    .line 88
    iput-wide p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    return-wide p1
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .line 88
    sget-object v0, Lorg/telegram/ui/Components/BotWebViewContainer;->WHITELISTED_SCHEMES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroidx/core/util/Consumer;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private buildThemeParams()Lorg/json/JSONObject;
    .locals 3

    .line 1690
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bg_color"

    .line 1691
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secondary_bg_color"

    .line 1692
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text_color"

    .line 1693
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hint_color"

    .line 1694
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link_color"

    .line 1695
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "button_color"

    .line 1696
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "button_text_color"

    .line 1697
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "theme_params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1700
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1701
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private checkCreateWebView()V
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailable:Z

    if-nez v0, :cond_0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupWebView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 210
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailable:Z

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private checkPermissions([Ljava/lang/String;)Z
    .locals 5

    .line 631
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 632
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private error(Ljava/lang/String;)V
    .locals 2

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private formatColor(I)Ljava/lang/String;
    .locals 2

    .line 1713
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p1

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->hexFixed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->hexFixed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->hexFixed(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getColor(I)I
    .locals 1

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 1707
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 1709
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static getMainButtonRippleColor(I)I
    .locals 4

    .line 549
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/high16 p0, 0x12000000

    goto :goto_0

    :cond_0
    const p0, 0x16ffffff

    :goto_0
    return p0
.end method

.method public static getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 553
    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getMainButtonRippleColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private hexFixed(I)Ljava/lang/String;
    .locals 2

    .line 1718
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1719
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private ignoreDialog(I)Z
    .locals 7

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1625
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->blockedDialogsUntil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->blockedDialogsUntil:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 1628
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogType:I

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->shownDialogsCount:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    .line 1629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->blockedDialogsUntil:J

    .line 1630
    iput v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->shownDialogsCount:I

    return v1

    :cond_2
    return v2
.end method

.method private static synthetic lambda$evaluateJs$6(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$evaluateJs$7(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "javascript:"

    if-eqz p1, :cond_0

    .line 943
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkCreateWebView()V

    .line 945
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    return-void

    .line 949
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 950
    sget-object v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda9;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 954
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 956
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadFlickerAndSettingsItem$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 6

    .line 824
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 825
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 828
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getPlaceholderStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 830
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 834
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 836
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v5, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 837
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupFlickerParams(Z)V

    :cond_1
    if-eqz p2, :cond_4

    .line 841
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 844
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$loadFlickerAndSettingsItem$3(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 823
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUrl$5(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 879
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v1, 0x0

    .line 880
    iput-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    .line 881
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    .line 883
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkCreateWebView()V

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$10(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1149
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p3, "popup_closed"

    .line 1151
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1152
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1154
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$11(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1159
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1160
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "popup_closed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    const/4 p1, 0x0

    .line 1162
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogClosed:J

    return-void
.end method

.method private synthetic lambda$onEventReceived$12(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "failed"

    .line 1371
    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1373
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppOpenInvoice(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$13(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1369
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$14(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "allowed"

    const/4 v1, 0x0

    .line 1456
    aput-object v0, p2, v1

    .line 1457
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_0

    .line 1458
    iget p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1462
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    .line 1464
    :cond_1
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$15([Ljava/lang/String;Landroid/content/DialogInterface;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1454
    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda18;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/DialogInterface;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$16([Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1452
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_bots_allowSendMessage;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_bots_allowSendMessage;-><init>()V

    .line 1453
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_bots_allowSendMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1454
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$onEventReceived$17(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1468
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$18([Ljava/lang/String;)V
    .locals 3

    .line 1473
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x0

    .line 1474
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "write_access_requested"

    .line 1475
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1477
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 1433
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1435
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "status"

    const-string v0, "allowed"

    .line 1436
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "write_access_requested"

    .line 1437
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1439
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1443
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "cancelled"

    .line 1447
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 1448
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewRequestWriteTitle:I

    .line 1449
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewRequestWriteMessage:I

    .line 1450
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewRequestAllow:I

    .line 1451
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewRequestDontAllow:I

    .line 1467
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1470
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;)V

    .line 1448
    invoke-direct {p0, p2, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onEventReceived$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1432
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$21(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 1509
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "req_id"

    .line 1510
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1511
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz p1, :cond_0

    .line 1512
    new-instance p1, Lorg/json/JSONTokener;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "result"

    .line 1513
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "error"

    .line 1515
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const-string p1, "custom_method_invoked"

    .line 1517
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1519
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1520
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->unknownError()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onEventReceived$22(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1507
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$23()V
    .locals 12

    .line 1559
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 1562
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const-string v2, "sent"

    .line 1563
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phone_requested"

    .line 1564
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1566
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$24([Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 10

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 1554
    aput-object v0, p1, p4

    .line 1555
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_0

    .line 1558
    iget p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    new-instance p4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->unblockPeer(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 1570
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 1573
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "status"

    const-string p3, "sent"

    .line 1574
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "phone_requested"

    .line 1575
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1577
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onEventReceived$25(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1582
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$26([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1585
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    return-void

    .line 1589
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    .line 1590
    aget-object p1, p1, v0

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "phone_requested"

    .line 1591
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1593
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$8(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1123
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p3, "popup_closed"

    .line 1125
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1126
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1128
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$9(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1136
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p3, "popup_closed"

    .line 1138
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1139
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1141
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onOpenUri$0(Landroid/net/Uri;Z)V
    .locals 2

    .line 539
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method private synthetic lambda$reload$4()V
    .locals 3

    .line 866
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkCreateWebView()V

    const/4 v0, 0x0

    .line 867
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v1, 0x0

    .line 868
    iput-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    .line 869
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runWithPermissions$1(Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    .line 612
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showDialog$27(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1642
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 1644
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->evaluateJs(Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyThemeChanged()V
    .locals 2

    .line 978
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->buildThemeParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "theme_changed"

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private onEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "text_color"

    const-string v4, "android.permission.CAMERA"

    .line 994
    iget-object v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_50

    iget-object v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    if-nez v5, :cond_0

    goto/16 :goto_1d

    .line 997
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v8, 0x3

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    const/4 v5, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "web_app_expand"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "web_app_request_write_access"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "web_app_set_background_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/16 v5, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "web_app_set_header_color"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "web_app_setup_main_button"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "web_app_trigger_haptic_feedback"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "web_app_setup_back_button"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/16 v5, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "web_app_switch_inline_query"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "web_app_data_send"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "web_app_read_text_from_clipboard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "web_app_ready"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "web_app_close"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "web_app_open_tg_link"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "web_app_request_viewport"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "web_app_request_theme"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "web_app_request_phone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_10
    const-string v5, "web_app_open_scan_qr_popup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_11
    const-string v5, "web_app_setup_closing_behavior"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_12
    const-string v5, "web_app_open_invoice"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_13
    const-string v5, "web_app_open_popup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_0

    :cond_14
    move v5, v8

    goto :goto_1

    :sswitch_14
    const-string v5, "web_app_open_link"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_15
    const-string v5, "web_app_close_scan_qr_popup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_0

    :cond_16
    move v5, v11

    goto :goto_1

    :sswitch_16
    const-string v5, "web_app_invoke_custom_method"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x0

    :goto_1
    const-string v12, "text"

    const-string v13, "status"

    const-string v14, "data"

    const-string v15, "is_visible"

    const-string v7, "color"

    const-string v6, "req_id"

    const-string v9, "cancelled"

    const/4 v10, 0x0

    packed-switch v5, :pswitch_data_0

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown webapp event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1382
    :pswitch_0
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppExpand()V

    goto/16 :goto_1c

    .line 1420
    :pswitch_1
    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1422
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1423
    invoke-virtual {v0, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "write_access_requested"

    .line 1424
    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1426
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 1430
    :cond_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_bots_canSendMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_bots_canSendMessage;-><init>()V

    .line 1431
    iget v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_bots_canSendMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1432
    iget v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda23;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1c

    .line 1204
    :pswitch_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1205
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    const-string v3, "#ffffff"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetBackgroundColor(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1c

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1207
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1213
    :pswitch_3
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1215
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1216
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    .line 1218
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v2, v0, v11}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(IZ)V

    goto/16 :goto_1c

    :cond_19
    const-string v2, "color_key"

    .line 1221
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4b676917

    if-eq v2, v3, :cond_1b

    const v3, -0xc9046ac

    if-eq v2, v3, :cond_1a

    goto :goto_4

    :cond_1a
    const-string v2, "secondary_bg_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v11

    goto :goto_5

    :cond_1b
    const-string v2, "bg_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_5

    :cond_1c
    :goto_4
    const/4 v0, -0x1

    :goto_5
    if-eqz v0, :cond_1e

    if-eq v0, v11, :cond_1d

    const/4 v7, -0x1

    goto :goto_6

    .line 1229
    :cond_1d
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    goto :goto_6

    .line 1225
    :cond_1e
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_6
    if-ltz v7, :cond_4e

    .line 1234
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(IZ)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1c

    :catch_3
    move-exception v0

    .line 1238
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1400
    :pswitch_4
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "is_active"

    const/4 v5, 0x0

    .line 1401
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1402
    iget-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1403
    invoke-virtual {v0, v15, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    move/from16 v17, v11

    goto :goto_7

    :cond_1f
    const/16 v17, 0x0

    .line 1404
    :goto_7
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_8

    :cond_20
    iget v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonColor:I

    .line 1405
    :goto_8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_9

    :cond_21
    iget v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonTextColor:I

    :goto_9
    const-string v6, "is_progress_visible"

    const/4 v7, 0x0

    .line 1406
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz v17, :cond_22

    move/from16 v22, v11

    goto :goto_a

    :cond_22
    const/16 v22, 0x0

    .line 1408
    :goto_a
    iput v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonColor:I

    .line 1409
    iput v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonTextColor:I

    .line 1410
    iput-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    .line 1411
    iput-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->buttonData:Ljava/lang/String;

    .line 1413
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    move-object/from16 v16, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v3

    invoke-interface/range {v16 .. v22}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onSetupMainButton(ZZLjava/lang/String;IIZ)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    .line 1415
    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1253
    :pswitch_5
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 1254
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x469ec2ba

    if-eq v3, v4, :cond_25

    const v4, 0xb8209c3

    if-eq v3, v4, :cond_24

    const v4, 0x237a88eb

    if-eq v3, v4, :cond_23

    goto :goto_c

    :cond_23
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move v2, v11

    goto :goto_d

    :cond_24
    const-string v3, "selection_change"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x2

    goto :goto_d

    :cond_25
    const-string v3, "impact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    goto :goto_d

    :cond_26
    :goto_c
    const/4 v2, -0x1

    :goto_d
    if-eqz v2, :cond_30

    if-eq v2, v11, :cond_28

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    goto/16 :goto_13

    .line 1301
    :cond_27
    sget-object v10, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_13

    :cond_28
    const-string v2, "notification_type"

    .line 1284
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6f4abffd

    if-eq v2, v3, :cond_2b

    const v3, 0x5c4d208

    if-eq v2, v3, :cond_2a

    const v3, 0x4305af9c

    if-eq v2, v3, :cond_29

    goto :goto_e

    :cond_29
    const-string v2, "warning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v7, 0x2

    goto :goto_f

    :cond_2a
    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v7, 0x0

    goto :goto_f

    :cond_2b
    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v7, v11

    goto :goto_f

    :cond_2c
    :goto_e
    const/4 v7, -0x1

    :goto_f
    if-eqz v7, :cond_2f

    if-eq v7, v11, :cond_2e

    const/4 v0, 0x2

    if-eq v7, v0, :cond_2d

    goto/16 :goto_13

    .line 1294
    :cond_2d
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    .line 1290
    :cond_2e
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    .line 1286
    :cond_2f
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    :goto_10
    move-object v10, v0

    goto/16 :goto_13

    :cond_30
    const-string v2, "impact_style"

    .line 1259
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_11

    :sswitch_17
    const-string v2, "rigid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v7, v8

    goto :goto_12

    :sswitch_18
    const-string v2, "light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v7, 0x0

    goto :goto_12

    :sswitch_19
    const-string v2, "heavy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v7, 0x2

    goto :goto_12

    :sswitch_1a
    const-string v2, "soft"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v7, 0x4

    goto :goto_12

    :sswitch_1b
    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v7, v11

    goto :goto_12

    :cond_31
    :goto_11
    const/4 v7, -0x1

    :goto_12
    if-eqz v7, :cond_36

    if-eq v7, v11, :cond_35

    const/4 v0, 0x2

    if-eq v7, v0, :cond_34

    if-eq v7, v8, :cond_33

    const/4 v0, 0x4

    if-eq v7, v0, :cond_32

    goto :goto_13

    .line 1277
    :cond_32
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    .line 1273
    :cond_33
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    .line 1269
    :cond_34
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    .line 1265
    :cond_35
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    .line 1261
    :cond_36
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_10

    :goto_13
    if-eqz v10, :cond_4e

    .line 1306
    invoke-virtual {v10}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1c

    :catch_6
    move-exception v0

    .line 1309
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1340
    :pswitch_6
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1342
    iget-boolean v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    if-eq v0, v2, :cond_4e

    .line 1343
    iput-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    .line 1345
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onSetBackButtonVisible(Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_1c

    :catch_7
    move-exception v0

    .line 1348
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1004
    :pswitch_7
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1005
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "chat_types"

    .line 1006
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v10, 0x0

    .line 1007
    :goto_14
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_37

    .line 1008
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1011
    :cond_37
    iget-object v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    iget-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v5, "query"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    .line 1013
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1244
    :pswitch_8
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1245
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onSendWebViewData(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9

    goto/16 :goto_1c

    :catch_9
    move-exception v0

    .line 1247
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1019
    :pswitch_9
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->isClipboardAvailable()Z

    move-result v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_a

    const-string v3, "clipboard_text_received"

    if-eqz v2, :cond_3a

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x2710

    cmp-long v2, v4, v7

    if-lez v2, :cond_38

    goto :goto_16

    .line 1026
    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1027
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1028
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_39
    const-string v2, ""

    .line 1029
    :goto_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1c

    .line 1022
    :cond_3a
    :goto_16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_1c

    :catch_a
    move-exception v0

    .line 1031
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1395
    :pswitch_a
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 999
    :pswitch_b
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v0, v10}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    goto/16 :goto_1c

    .line 1327
    :pswitch_c
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "path_full"

    .line 1328
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    .line 1329
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1330
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://t.me/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    goto/16 :goto_1c

    :catch_b
    move-exception v0

    .line 1334
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1386
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_3c

    move v10, v11

    goto :goto_17

    :cond_3c
    const/4 v10, 0x0

    :goto_17
    xor-int/lit8 v0, v10, 0x1

    .line 1387
    invoke-virtual {v1, v0, v11}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    goto/16 :goto_1c

    .line 1391
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyThemeChanged()V

    goto/16 :goto_1c

    :pswitch_f
    const/4 v0, 0x4

    .line 1526
    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1528
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1529
    invoke-virtual {v0, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "phone_requested"

    .line 1530
    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_18

    :catch_c
    move-exception v0

    .line 1532
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_18
    return-void

    .line 1537
    :cond_3d
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    .line 1538
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1539
    sget v3, Lorg/telegram/messenger/R$string;->ShareYouPhoneNumberTitle:I

    const-string v4, "ShareYouPhoneNumberTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1540
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1541
    iget-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 1543
    sget v5, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoWebapp:I

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_19

    .line 1545
    :cond_3e
    sget v4, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoBot:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1547
    :goto_19
    iget v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_3f

    move v10, v11

    goto :goto_1a

    :cond_3f
    const/4 v10, 0x0

    :goto_1a
    if-eqz v10, :cond_40

    const-string v4, "\n\n"

    .line 1549
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1550
    sget v4, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoBotUnblock:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1552
    :cond_40
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1553
    sget v3, Lorg/telegram/messenger/R$string;->ShareContact:I

    const-string v4, "ShareContact"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v0, v10}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1581
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda6;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1584
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda22;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z

    goto/16 :goto_1c

    .line 1043
    :pswitch_10
    :try_start_c
    iget-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    if-nez v0, :cond_4e

    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_41

    goto/16 :goto_1c

    .line 1047
    :cond_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    .line 1049
    iput-boolean v11, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    .line 1051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_42

    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 1052
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewContainer$7;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BotWebViewContainer$7;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    sget v3, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1072
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1076
    :cond_42
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->openQrScanActivity()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_d

    goto/16 :goto_1c

    :catch_d
    move-exception v0

    .line 1078
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1195
    :pswitch_11
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1196
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    const-string v3, "need_confirmation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetupClosingBehavior(Z)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_e

    goto/16 :goto_1c

    :catch_e
    move-exception v0

    .line 1198
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1354
    :pswitch_12
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "slug"

    .line 1355
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1357
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 1358
    invoke-virtual {v1, v0, v9, v11}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1c

    .line 1362
    :cond_43
    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    .line 1364
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1365
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 1366
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 1367
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 1369
    iget v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda24;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_f

    goto/16 :goto_1c

    :catch_f
    move-exception v0

    .line 1377
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1084
    :pswitch_13
    :try_start_f
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_44

    goto/16 :goto_1c

    .line 1088
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogClosed:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x96

    cmp-long v0, v3, v5

    if-gtz v0, :cond_45

    .line 1089
    iget v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->dialogSequentialOpenTimes:I

    add-int/2addr v0, v11

    iput v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->dialogSequentialOpenTimes:I

    if-lt v0, v8, :cond_45

    const/4 v0, 0x0

    .line 1092
    iput v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->dialogSequentialOpenTimes:I

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogCooldownTime:J

    goto/16 :goto_1c

    .line 1098
    :cond_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogCooldownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-gtz v0, :cond_46

    goto/16 :goto_1c

    .line 1102
    :cond_46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "title"

    .line 1103
    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    .line 1104
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buttons"

    .line 1105
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1107
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1108
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 1109
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 1111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1112
    :goto_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 1113
    new-instance v5, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1115
    :cond_47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_48

    goto/16 :goto_1c

    .line 1119
    :cond_48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1120
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v11, :cond_49

    const/4 v4, 0x0

    .line 1121
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1122
    iget-object v4, v5, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v5, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1133
    :cond_49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4a

    .line 1134
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1135
    iget-object v5, v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v4, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1146
    :cond_4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_4b

    const/4 v4, 0x2

    .line 1147
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1148
    iget-object v4, v5, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v5, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1158
    :cond_4b
    new-instance v4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1166
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1167
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_4c

    const/4 v0, 0x0

    .line 1168
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1169
    iget v2, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_4c

    .line 1170
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1171
    iget v0, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1174
    :cond_4c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4d

    .line 1175
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1176
    iget v2, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_4d

    .line 1177
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1178
    iget v0, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1181
    :cond_4d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_4e

    const/4 v0, 0x2

    .line 1182
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1183
    iget v2, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_4e

    .line 1184
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1185
    iget v0, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_10

    goto/16 :goto_1c

    :catch_10
    move-exception v0

    .line 1189
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1315
    :pswitch_14
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    .line 1316
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1317
    sget-object v3, Lorg/telegram/ui/Components/BotWebViewContainer;->WHITELISTED_SCHEMES:Ljava/util/List;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "try_instant_view"

    .line 1318
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v0, v11}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;ZZ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception v0

    .line 1321
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 1036
    :pswitch_15
    iget-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    if-eqz v0, :cond_4e

    .line 1037
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_1c

    .line 1487
    :pswitch_16
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "method"

    .line 1489
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "params"

    .line 1490
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 1502
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_bots_invokeWebViewCustomMethod;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_bots_invokeWebViewCustomMethod;-><init>()V

    .line 1503
    iget v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_bots_invokeWebViewCustomMethod;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1504
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_bots_invokeWebViewCustomMethod;->custom_method:Ljava/lang/String;

    .line 1505
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_bots_invokeWebViewCustomMethod;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1506
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1507
    iget v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda25;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4e
    :goto_1c
    return-void

    :catch_12
    move-exception v0

    .line 1493
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1494
    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_4f

    const-string v0, "JSON Parse error"

    .line 1495
    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->error(Ljava/lang/String;)V

    goto :goto_1d

    .line 1497
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->unknownError()V

    :cond_50
    :goto_1d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78380c2f -> :sswitch_16
        -0x712ef480 -> :sswitch_15
        -0x665c257a -> :sswitch_14
        -0x64ed6860 -> :sswitch_13
        -0x52e382df -> :sswitch_12
        -0x4feea439 -> :sswitch_11
        -0x4e07a07c -> :sswitch_10
        -0x4b514e0b -> :sswitch_f
        -0x4b1915b0 -> :sswitch_e
        -0x36e69d41 -> :sswitch_d
        -0x1a365bc6 -> :sswitch_c
        -0x44674d1 -> :sswitch_b
        -0x3767926 -> :sswitch_a
        0x14fedd3 -> :sswitch_9
        0x27d30cb4 -> :sswitch_8
        0x2cc7cfc4 -> :sswitch_7
        0x3c49757f -> :sswitch_6
        0x4bed2d1d -> :sswitch_5
        0x535b446d -> :sswitch_4
        0x7244ae57 -> :sswitch_3
        0x7749e138 -> :sswitch_2
        0x795c475d -> :sswitch_1
        0x7f8ad843 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4041708b -> :sswitch_1b
        0x35f42a -> :sswitch_1a
        0x5e8f0c7 -> :sswitch_19
        0x6233516 -> :sswitch_18
        0x677c22b -> :sswitch_17
    .end sparse-switch
.end method

.method private onOpenUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;ZZ)V

    return-void
.end method

.method private onOpenUri(Landroid/net/Uri;ZZ)V
    .locals 4

    .line 521
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 525
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    const/4 p3, 0x1

    new-array v0, p3, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 527
    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_1

    const/high16 p3, 0x60000

    .line 531
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 532
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setDescendantFocusability(I)V

    .line 535
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->clearFocus()V

    .line 536
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "input_method"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    .line 537
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 539
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;Z)V

    invoke-interface {p3, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private openQrScanActivity()V
    .locals 4

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 1665
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewContainer$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$8;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 607
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 612
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    .line 614
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-eqz p2, :cond_2

    const/16 v0, 0xfa0

    .line 615
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setPageLoaded(Ljava/lang/String;)V
    .locals 7

    .line 575
    iget-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    if-eqz p1, :cond_0

    return-void

    .line 579
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 581
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 582
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    .line 580
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 584
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$5;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 592
    iput-boolean v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    .line 593
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppReady()V

    return-void
.end method

.method private setupFlickerParams(Z)V
    .locals 2

    .line 851
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 853
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const/16 p1, 0x40

    .line 855
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 857
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 858
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 861
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setupWebView()V
    .locals 4

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 228
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer$2;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    .line 286
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 290
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 295
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 297
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "webview_database"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 301
    :cond_3
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$3;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$4;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$WebViewProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer$WebViewProxy;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$1;)V

    const-string v2, "TelegramWebviewProxy"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onWebViewCreated()V

    return-void
.end method

.method private showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1637
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1640
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1646
    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1647
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 1648
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1650
    iget p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogType:I

    if-eq p2, p1, :cond_1

    .line 1651
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogType:I

    .line 1652
    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->shownDialogsCount:I

    const-wide/16 p1, 0x0

    .line 1653
    iput-wide p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->blockedDialogsUntil:J

    .line 1655
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->shownDialogsCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->shownDialogsCount:I

    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method private unknownError()V
    .locals 1

    const/4 v0, 0x0

    .line 1606
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    return-void
.end method

.method private unknownError(Ljava/lang/String;)V
    .locals 3

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v2, "UnknownError"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroyWebView()V
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 927
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 964
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 965
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 966
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 968
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 969
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyThemeChanged()V

    goto :goto_0

    .line 970
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_2

    .line 971
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v0

    check-cast p3, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 972
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    if-ne p1, p2, :cond_3

    .line 973
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v1

    check-cast p2, [Ljava/lang/String;

    aget-object p3, p3, v0

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 743
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 745
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 746
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 748
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 749
    iget-boolean p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz p3, :cond_1

    .line 750
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    :cond_1
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 754
    iget-object p4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p4, p1, p3, v2, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 755
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return p2

    .line 758
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    if-ne p2, v0, :cond_3

    .line 759
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 760
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 761
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 762
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 763
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 766
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public evaluateJs(Ljava/lang/String;Z)V
    .locals 2

    .line 941
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hasUserPermissions()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    return v0
.end method

.method public invalidateViewPortHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method public invalidateViewPortHeight(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    return-void
.end method

.method public invalidateViewPortHeight(ZZ)V
    .locals 4

    .line 715
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 716
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 720
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p2, :cond_3

    .line 721
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_2

    .line 724
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastExpanded:Z

    .line 727
    :cond_2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 729
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "height"

    int-to-float p2, p2

    .line 730
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v2

    float-to-double v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "is_state_stable"

    .line 731
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "is_expanded"

    .line 732
    iget-boolean p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastExpanded:Z

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "viewport_changed"

    .line 733
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 735
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public isBackButtonVisible()Z
    .locals 1

    .line 932
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    return v0
.end method

.method public isPageLoaded()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    return v0
.end method

.method public loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 7

    .line 785
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 786
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "DurgerKingBot"

    .line 787
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 790
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    sget p2, Lorg/telegram/messenger/R$raw;->durgerking_placeholder:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/messenger/SvgHelper;->getDrawable(ILjava/lang/Integer;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 791
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupFlickerParams(Z)V

    return-void

    .line 796
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 797
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v5, v5, p2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_6

    .line 805
    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getPlaceholderStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p1

    if-nez p1, :cond_3

    .line 807
    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 811
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 812
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 813
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    invoke-virtual {p3, p1, v4, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 814
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupFlickerParams(Z)V

    :cond_4
    if-eqz p4, :cond_7

    .line 818
    iget-boolean p1, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 821
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;-><init>()V

    .line 822
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 823
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p4}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public loadUrl(ILjava/lang/String;)V
    .locals 1

    .line 877
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    .line 878
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_1

    .line 684
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 688
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const/4 p2, 0x0

    .line 689
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 693
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 694
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 892
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 894
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 895
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 896
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 898
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$6;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 567
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "back_button_pressed"

    .line 568
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 912
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 914
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 915
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 916
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 918
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 651
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "slug"

    .line 652
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 653
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "invoice_closed"

    .line 654
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-nez p3, :cond_0

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 657
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMainButtonPressed()V
    .locals 2

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    const-string v0, "main_button_pressed"

    const/4 v1, 0x0

    .line 671
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 771
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xfa0

    if-ne p1, p2, :cond_0

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 677
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 678
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onSettingsButtonPressed()V
    .locals 2

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    const-string v0, "settings_button_pressed"

    const/4 v1, 0x0

    .line 666
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 700
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 701
    iget-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 702
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    :cond_0
    return-void
.end method

.method public onWebViewCreated()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 2

    .line 865
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restoreButtonData()V
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->buttonData:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "web_app_setup_main_button"

    .line 641
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setViewPortByMeasureSuppressed(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    return-void
.end method

.method public setWebViewProgressListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 777
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setWebViewScrollListener(Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;

    return-void
.end method

.method public updateFlickerBackgroundColor(I)V
    .locals 3

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    return-void
.end method
