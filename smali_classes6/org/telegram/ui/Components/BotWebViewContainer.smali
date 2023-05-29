.class public Lorg/telegram/ui/Components/BotWebViewContainer;
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

.field private mUrl:Ljava/lang/String;

.field private onPermissionsRequestResultCallback:Ljava/lang/Runnable;

.field private parentActivity:Landroid/app/Activity;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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
.method public static synthetic $r8$lambda$0uDcigqN2QHE9AcUgc9XOWPITRE(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$9(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AqhR1eY1qHX0t1KofSjZsPu6xwg(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$14(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SX4GfW7scRD4HFCLBy4Mf1Dq67c(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$11(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VVrNsEoLpq1oQFWlqu0jUclHbIA(Lorg/telegram/ui/Components/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$runWithPermissions$3(Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLVdGFuxRgnmLHzkZo6zZnMYG3s(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onOpenUri$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUQDe9bQTKiT6rt-mLz29C74m9I(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$loadFlickerAndSettingsItem$5(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYPQXMkntQ1hJ-dyNPsGnuEBPGU(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$12(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ep-lWfpb4jAiv6XQEy9sHnI8X9c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$evaluateJs$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mzhivPkkknGgTg0ptIL6nSZ-_Kw(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$13(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qDmh-URTocudRXsfkeD419Nsgs0(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onOpenUri$1(Landroid/net/Uri;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7-860cg7vDq80oW4m4FgOUE2Io(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onEventReceived$10(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u3QulDBotGgTywmzZbPsvTO8OT4(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$loadFlickerAndSettingsItem$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueF1KBgSdj_8_TU088nxGo936ns(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->lambda$onOpenUri$0(Landroid/net/Uri;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http"

    const-string v1, "https"

    .line 90
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/BotWebViewContainer;->WHITELISTED_SCHEMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 4

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 109
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonColor:I

    .line 110
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonTextColor:I

    const-string v0, ""

    .line 111
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 145
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 146
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    .line 149
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/16 v1, 0x99

    const/16 v2, 0xcc

    .line 150
    invoke-virtual {p2, p3, v1, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    .line 151
    new-instance p2, Lorg/telegram/ui/Components/BotWebViewContainer$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$1;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    .line 181
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 182
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 183
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x30

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    .line 186
    sget p1, Lorg/telegram/messenger/R$string;->BotWebViewNotAvailablePlaceholder:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x10

    .line 191
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 192
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-static {v2, v3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BotWebViewContainer;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/app/Activity;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/BotWebViewContainer;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/BotWebViewContainer;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->openQrScanActivity()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/BotWebViewContainer;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/BotWebViewContainer;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/BotWebViewContainer;J)J
    .locals 0

    .line 84
    iput-wide p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->onEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BotWebViewContainer;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/BotWebViewContainer;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .line 84
    sget-object v0, Lorg/telegram/ui/Components/BotWebViewContainer;->WHITELISTED_SCHEMES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/BotWebViewContainer;)Landroidx/core/util/Consumer;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method private buildThemeParams()Lorg/json/JSONObject;
    .locals 3

    .line 1414
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bg_color"

    .line 1415
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secondary_bg_color"

    .line 1416
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text_color"

    .line 1417
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hint_color"

    .line 1418
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link_color"

    .line 1419
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "button_color"

    .line 1420
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "button_text_color"

    .line 1421
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->formatColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1422
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

    .line 1424
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1425
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private checkCreateWebView()V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailable:Z

    if-nez v0, :cond_0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupWebView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 207
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailable:Z

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private checkPermissions([Ljava/lang/String;)Z
    .locals 5

    .line 589
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 590
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

.method private formatColor(I)Ljava/lang/String;
    .locals 2

    .line 1437
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p1

    .line 1438
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

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 1433
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static getMainButtonRippleColor(I)I
    .locals 4

    .line 507
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

    .line 511
    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getMainButtonRippleColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private hexFixed(I)Ljava/lang/String;
    .locals 2

    .line 1442
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1444
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

.method private static synthetic lambda$evaluateJs$6(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$loadFlickerAndSettingsItem$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 6

    .line 782
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 783
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 786
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getPlaceholderStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 788
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 792
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 794
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v5, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 795
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupFlickerParams(Z)V

    :cond_1
    if-eqz p2, :cond_4

    .line 799
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 802
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$loadFlickerAndSettingsItem$5(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 781
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$10(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1106
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p3, "popup_closed"

    .line 1108
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1109
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1111
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$11(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1119
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p3, "popup_closed"

    .line 1121
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1122
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1124
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$12(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1129
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1130
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "popup_closed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    const/4 p1, 0x0

    .line 1132
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogClosed:J

    return-void
.end method

.method private synthetic lambda$onEventReceived$13(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "failed"

    .line 1333
    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1335
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppOpenInvoice(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$14(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1331
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$9(Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1093
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p3, "popup_closed"

    .line 1095
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1096
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1098
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onOpenUri$0(Landroid/net/Uri;Z)V
    .locals 2

    .line 488
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method private synthetic lambda$onOpenUri$1(Landroid/net/Uri;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 499
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p3, p1, p4, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method private synthetic lambda$onOpenUri$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isRequestingPageOpen:Z

    return-void
.end method

.method private synthetic lambda$runWithPermissions$3(Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    .line 570
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 922
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

    .line 918
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

    const-string v5, "req_id"

    .line 934
    iget-object v6, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v6, :cond_46

    iget-object v6, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    if-nez v6, :cond_0

    goto/16 :goto_17

    .line 937
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v6, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "web_app_expand"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "web_app_set_background_color"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "web_app_set_header_color"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "web_app_setup_main_button"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "web_app_trigger_haptic_feedback"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "web_app_setup_back_button"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "web_app_switch_inline_query"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "web_app_data_send"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "web_app_read_text_from_clipboard"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v6, "web_app_ready"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "web_app_close"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "web_app_open_tg_link"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "web_app_request_viewport"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "web_app_request_theme"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_e
    const-string v6, "web_app_request_phone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_f
    const-string v6, "web_app_open_scan_qr_popup"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_10
    const-string v6, "web_app_setup_closing_behavior"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    move v0, v7

    goto :goto_1

    :sswitch_11
    const-string v6, "web_app_open_invoice"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    move v0, v8

    goto :goto_1

    :sswitch_12
    const-string v6, "web_app_open_popup"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    move v0, v10

    goto :goto_1

    :sswitch_13
    const-string v6, "web_app_open_link"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move v0, v12

    goto :goto_1

    :sswitch_14
    const-string v6, "web_app_close_scan_qr_popup"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    move v0, v11

    :goto_1
    const-string v6, "text"

    const-string v13, "data"

    const-string v14, "is_visible"

    const-string v15, "color"

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    .line 1344
    :pswitch_0
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppExpand()V

    goto/16 :goto_17

    .line 1174
    :pswitch_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1175
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    const-string v3, "#ffffff"

    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetBackgroundColor(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1177
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1183
    :pswitch_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "color_key"

    .line 1184
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4b676917

    if-eq v2, v3, :cond_17

    const v3, -0xc9046ac

    if-eq v2, v3, :cond_16

    goto :goto_3

    :cond_16
    const-string v2, "secondary_bg_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v11, v12

    goto :goto_4

    :cond_17
    const-string v2, "bg_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_4

    :cond_18
    :goto_3
    const/4 v11, -0x1

    :goto_4
    if-eqz v11, :cond_1a

    if-eq v11, v12, :cond_19

    const/4 v9, -0x1

    goto :goto_5

    .line 1192
    :cond_19
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    goto :goto_5

    .line 1188
    :cond_1a
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_5
    if-ltz v9, :cond_46

    .line 1197
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v0, v9}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_17

    :catch_2
    move-exception v0

    .line 1200
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1362
    :pswitch_3
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "is_active"

    .line 1363
    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1364
    iget-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1365
    invoke-virtual {v0, v14, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    move/from16 v17, v12

    goto :goto_6

    :cond_1b
    move/from16 v17, v11

    .line 1366
    :goto_6
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    :cond_1c
    iget v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonColor:I

    .line 1367
    :goto_7
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_8

    :cond_1d
    iget v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonTextColor:I

    :goto_8
    const-string v6, "is_progress_visible"

    .line 1368
    invoke-virtual {v0, v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz v17, :cond_1e

    move/from16 v22, v12

    goto :goto_9

    :cond_1e
    move/from16 v22, v11

    .line 1370
    :goto_9
    iput v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonColor:I

    .line 1371
    iput v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonTextColor:I

    .line 1372
    iput-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    .line 1373
    iput-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->buttonData:Ljava/lang/String;

    .line 1375
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    move-object/from16 v16, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v3

    invoke-interface/range {v16 .. v22}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onSetupMainButton(ZZLjava/lang/String;IIZ)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_17

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 1377
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1215
    :pswitch_4
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 1216
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x469ec2ba

    if-eq v3, v4, :cond_21

    const v4, 0xb8209c3

    if-eq v3, v4, :cond_20

    const v4, 0x237a88eb

    if-eq v3, v4, :cond_1f

    goto :goto_b

    :cond_1f
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v12

    goto :goto_c

    :cond_20
    const-string v3, "selection_change"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v10

    goto :goto_c

    :cond_21
    const-string v3, "impact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v11

    goto :goto_c

    :cond_22
    :goto_b
    const/4 v2, -0x1

    :goto_c
    if-eqz v2, :cond_2c

    if-eq v2, v12, :cond_24

    if-eq v2, v10, :cond_23

    goto/16 :goto_12

    .line 1263
    :cond_23
    sget-object v9, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_12

    :cond_24
    const-string v2, "notification_type"

    .line 1246
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6f4abffd

    if-eq v2, v3, :cond_27

    const v3, 0x5c4d208

    if-eq v2, v3, :cond_26

    const v3, 0x4305af9c

    if-eq v2, v3, :cond_25

    goto :goto_d

    :cond_25
    const-string v2, "warning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v11, v10

    goto :goto_e

    :cond_26
    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_e

    :cond_27
    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v11, v12

    goto :goto_e

    :cond_28
    :goto_d
    const/4 v11, -0x1

    :goto_e
    if-eqz v11, :cond_2b

    if-eq v11, v12, :cond_2a

    if-eq v11, v10, :cond_29

    goto/16 :goto_12

    .line 1256
    :cond_29
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    .line 1252
    :cond_2a
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    .line 1248
    :cond_2b
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    :goto_f
    move-object v9, v0

    goto/16 :goto_12

    :cond_2c
    const-string v2, "impact_style"

    .line 1221
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_10

    :sswitch_15
    const-string v2, "rigid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v11, v8

    goto :goto_11

    :sswitch_16
    const-string v2, "light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_11

    :sswitch_17
    const-string v2, "heavy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v11, v10

    goto :goto_11

    :sswitch_18
    const-string v2, "soft"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v11, v7

    goto :goto_11

    :sswitch_19
    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v11, v12

    goto :goto_11

    :cond_2d
    :goto_10
    const/4 v11, -0x1

    :goto_11
    if-eqz v11, :cond_32

    if-eq v11, v12, :cond_31

    if-eq v11, v10, :cond_30

    if-eq v11, v8, :cond_2f

    if-eq v11, v7, :cond_2e

    goto :goto_12

    .line 1239
    :cond_2e
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    .line 1235
    :cond_2f
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    .line 1231
    :cond_30
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    .line 1227
    :cond_31
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    .line 1223
    :cond_32
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_f

    :goto_12
    if-eqz v9, :cond_46

    .line 1268
    invoke-virtual {v9}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_17

    :catch_5
    move-exception v0

    .line 1271
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1302
    :pswitch_5
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1304
    iget-boolean v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    if-eq v0, v2, :cond_46

    .line 1305
    iput-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    .line 1307
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onSetBackButtonVisible(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_17

    :catch_6
    move-exception v0

    .line 1310
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 944
    :pswitch_6
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "chat_types"

    .line 946
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 947
    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_33

    .line 948
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 951
    :cond_33
    iget-object v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    iget-object v4, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v5, "query"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_17

    :catch_7
    move-exception v0

    .line 953
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1206
    :pswitch_7
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1207
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onSendWebViewData(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_17

    :catch_8
    move-exception v0

    .line 1209
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 959
    :pswitch_8
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->isClipboardAvailable()Z

    move-result v2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9

    const-string v3, "clipboard_text_received"

    if-eqz v2, :cond_36

    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v2, v6, v8

    if-lez v2, :cond_34

    goto :goto_15

    .line 966
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 967
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 968
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_35
    const-string v2, ""

    .line 969
    :goto_14
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_17

    .line 962
    :cond_36
    :goto_15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_17

    :catch_9
    move-exception v0

    .line 971
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1357
    :pswitch_9
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 939
    :pswitch_a
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {v0, v9}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    goto/16 :goto_17

    .line 1289
    :pswitch_b
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "path_full"

    .line 1290
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    .line 1291
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1292
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    :cond_37
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
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_17

    :catch_a
    move-exception v0

    .line 1296
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1348
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    move v11, v12

    :cond_38
    xor-int/lit8 v0, v11, 0x1

    .line 1349
    invoke-virtual {v1, v0, v12}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    goto/16 :goto_17

    .line 1353
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyThemeChanged()V

    goto/16 :goto_17

    .line 983
    :pswitch_e
    :try_start_a
    iget-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    if-nez v0, :cond_46

    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_39

    goto/16 :goto_17

    .line 987
    :cond_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    .line 989
    iput-boolean v12, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3a

    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 992
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewContainer$6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BotWebViewContainer$6;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    sget v3, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1012
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1016
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->openQrScanActivity()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    goto/16 :goto_17

    :catch_b
    move-exception v0

    .line 1018
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1165
    :pswitch_f
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1166
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    const-string v3, "need_confirmation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppSetupClosingBehavior(Z)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_c

    goto/16 :goto_17

    :catch_c
    move-exception v0

    .line 1168
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1316
    :pswitch_10
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "slug"

    .line 1317
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    if-eqz v2, :cond_3b

    const-string v2, "cancelled"

    .line 1320
    invoke-virtual {v1, v0, v2, v12}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_17

    .line 1324
    :cond_3b
    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    .line 1326
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1327
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 1328
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 1329
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 1331
    iget v3, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_d

    goto/16 :goto_17

    :catch_d
    move-exception v0

    .line 1339
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1054
    :pswitch_11
    :try_start_d
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3c

    goto/16 :goto_17

    .line 1058
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogClosed:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x96

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3d

    .line 1059
    iget v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->dialogSequentialOpenTimes:I

    add-int/2addr v0, v12

    iput v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->dialogSequentialOpenTimes:I

    if-lt v0, v8, :cond_3d

    .line 1062
    iput v11, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->dialogSequentialOpenTimes:I

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogCooldownTime:J

    goto/16 :goto_17

    .line 1068
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->lastDialogCooldownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3e

    goto/16 :goto_17

    .line 1072
    :cond_3e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "title"

    .line 1073
    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    .line 1074
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buttons"

    .line 1075
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1077
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 1079
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 1081
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v11

    .line 1082
    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 1083
    new-instance v5, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1085
    :cond_3f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_40

    goto/16 :goto_17

    .line 1089
    :cond_40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1090
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v12, :cond_41

    .line 1091
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1092
    iget-object v5, v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v4, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1103
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v10, :cond_42

    .line 1104
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1105
    iget-object v5, v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1, v4, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1116
    :cond_42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_43

    .line 1117
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1118
    iget-object v5, v4, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v4, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1128
    :cond_43
    new-instance v4, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1136
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1137
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v12, :cond_44

    .line 1138
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1139
    iget v2, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_44

    .line 1140
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1141
    iget v0, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1144
    :cond_44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v10, :cond_45

    .line 1145
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1146
    iget v2, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_45

    .line 1147
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1148
    iget v0, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1151
    :cond_45
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_46

    .line 1152
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;

    .line 1153
    iget v2, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_46

    .line 1154
    iget-object v2, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1155
    iget v0, v0, Lorg/telegram/ui/Components/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception v0

    .line 1159
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_17

    .line 1277
    :pswitch_12
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    .line 1278
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1279
    sget-object v3, Lorg/telegram/ui/Components/BotWebViewContainer;->WHITELISTED_SCHEMES:Ljava/util/List;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v3, "try_instant_view"

    .line 1280
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v0, v12}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;ZZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    .line 1283
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_17

    .line 976
    :pswitch_13
    iget-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->hasQRPending:Z

    if-eqz v0, :cond_46

    .line 977
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_46
    :goto_17
    :pswitch_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x712ef480 -> :sswitch_14
        -0x665c257a -> :sswitch_13
        -0x64ed6860 -> :sswitch_12
        -0x52e382df -> :sswitch_11
        -0x4feea439 -> :sswitch_10
        -0x4e07a07c -> :sswitch_f
        -0x4b514e0b -> :sswitch_e
        -0x4b1915b0 -> :sswitch_d
        -0x36e69d41 -> :sswitch_c
        -0x1a365bc6 -> :sswitch_b
        -0x44674d1 -> :sswitch_a
        -0x3767926 -> :sswitch_9
        0x14fedd3 -> :sswitch_8
        0x27d30cb4 -> :sswitch_7
        0x2cc7cfc4 -> :sswitch_6
        0x3c49757f -> :sswitch_5
        0x4bed2d1d -> :sswitch_4
        0x535b446d -> :sswitch_3
        0x7244ae57 -> :sswitch_2
        0x7749e138 -> :sswitch_1
        0x7f8ad843 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_14
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
        -0x4041708b -> :sswitch_19
        0x35f42a -> :sswitch_18
        0x5e8f0c7 -> :sswitch_17
        0x6233516 -> :sswitch_16
        0x677c22b -> :sswitch_15
    .end sparse-switch
.end method

.method private onOpenUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 466
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;ZZ)V

    return-void
.end method

.method private onOpenUri(Landroid/net/Uri;ZZ)V
    .locals 4

    .line 470
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 474
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 476
    invoke-static {p1, v1}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    .line 479
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    if-eqz p3, :cond_1

    const/high16 p3, 0x60000

    .line 480
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 481
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setDescendantFocusability(I)V

    .line 484
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->clearFocus()V

    .line 485
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "input_method"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    .line 486
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 488
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;Z)V

    invoke-interface {p3, v0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, v0, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 493
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, v0, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    goto :goto_0

    .line 495
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isRequestingPageOpen:Z

    .line 496
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlTitle:I

    .line 497
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlAlert2:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 498
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->Open:I

    .line 499
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;Z)V

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 500
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    .line 501
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method

.method private openQrScanActivity()V
    .locals 4

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 1389
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewContainer$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$7;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

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

    .line 564
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 565
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 570
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    .line 572
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-eqz p2, :cond_2

    const/16 v0, 0xfa0

    .line 573
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setPageLoaded(Ljava/lang/String;)V
    .locals 8

    .line 533
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 538
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 539
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    .line 540
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 538
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 542
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$5;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 548
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 549
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mUrl:Ljava/lang/String;

    .line 550
    iput-boolean v4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    .line 551
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;->onWebAppReady()V

    return-void
.end method

.method private setupFlickerParams(Z)V
    .locals 2

    .line 809
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 811
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const/16 p1, 0x40

    .line 813
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 815
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 816
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 819
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setupWebView()V
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 225
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewContainer$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer$2;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    .line 271
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 275
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 279
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 281
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "webview_database"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
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

    .line 283
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 285
    :cond_3
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$3;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewContainer$4;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer$WebViewProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer$WebViewProxy;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/Components/BotWebViewContainer$1;)V

    const-string v2, "TelegramWebviewProxy"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public destroyWebView()V
    .locals 1

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 904
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 906
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 908
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->getColor(I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 909
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyThemeChanged()V

    goto :goto_0

    .line 910
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_2

    .line 911
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

    .line 912
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    if-ne p1, p2, :cond_3

    .line 913
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

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 701
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 704
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 706
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 707
    iget-boolean p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz p3, :cond_1

    .line 708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 711
    :cond_1
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 712
    iget-object p4, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p4, p1, p3, v2, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 713
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return p2

    .line 716
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    if-ne p2, v0, :cond_3

    .line 717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 718
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 719
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 720
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 721
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 724
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public evaluateJs(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "javascript:"

    if-eqz p2, :cond_0

    .line 885
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkCreateWebView()V

    .line 887
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-nez p2, :cond_1

    return-void

    .line 891
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 892
    sget-object v0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda6;

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 895
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hasUserPermissions()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    return v0
.end method

.method public invalidateViewPortHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method public invalidateViewPortHeight(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    return-void
.end method

.method public invalidateViewPortHeight(ZZ)V
    .locals 4

    .line 673
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 674
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 678
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p2, :cond_3

    .line 679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_2

    .line 682
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

    .line 685
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

    .line 687
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "height"

    int-to-float p2, p2

    .line 688
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v2

    float-to-double v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "is_state_stable"

    .line 689
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "is_expanded"

    .line 690
    iget-boolean p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastExpanded:Z

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "viewport_changed"

    .line 691
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 693
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public isBackButtonVisible()Z
    .locals 1

    .line 875
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    return v0
.end method

.method public isPageLoaded()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    return v0
.end method

.method public loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 7

    .line 743
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 744
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "DurgerKingBot"

    .line 745
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 748
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

    .line 749
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupFlickerParams(Z)V

    return-void

    .line 754
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

    .line 755
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v5, v5, p2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_6

    .line 763
    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getPlaceholderStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p1

    if-nez p1, :cond_3

    .line 765
    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 769
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 771
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    invoke-virtual {p3, p1, v4, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 772
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->setupFlickerParams(Z)V

    :cond_4
    if-eqz p4, :cond_7

    .line 776
    iget-boolean p1, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 779
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;-><init>()V

    .line 780
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 781
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p4}, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/BotWebViewContainer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public loadUrl(ILjava/lang/String;)V
    .locals 2

    .line 834
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkCreateWebView()V

    .line 836
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentAccount:I

    const/4 p1, 0x0

    .line 837
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v0, 0x0

    .line 838
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    .line 839
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    .line 840
    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mUrl:Ljava/lang/String;

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_1

    .line 642
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 646
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const/4 p2, 0x0

    .line 647
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 651
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 652
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 848
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 850
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 851
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 852
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 525
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "back_button_pressed"

    .line 526
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 857
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 859
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 860
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 861
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 609
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "slug"

    .line 610
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 611
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "invoice_closed"

    .line 612
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-nez p3, :cond_0

    .line 614
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 618
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMainButtonPressed()V
    .locals 2

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    const-string v0, "main_button_pressed"

    const/4 v1, 0x0

    .line 629
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 729
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 731
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

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 635
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 636
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onSettingsButtonPressed()V
    .locals 2

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    const-string v0, "settings_button_pressed"

    const/4 v1, 0x0

    .line 624
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 658
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 659
    iget-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 660
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 3

    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewContainer;->checkCreateWebView()V

    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v1, 0x0

    .line 826
    iput-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->lastClickMs:J

    .line 827
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions:Z

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method public restoreButtonData()V
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->buttonData:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "web_app_setup_main_button"

    .line 599
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->delegate:Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setViewPortByMeasureSuppressed(Z)V
    .locals 0

    .line 199
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

    .line 735
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setWebViewScrollListener(Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/Components/BotWebViewContainer$WebViewScrollListener;

    return-void
.end method

.method public updateFlickerBackgroundColor(I)V
    .locals 3

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    return-void
.end method
