.class public Lorg/telegram/ui/ChannelColorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;,
        Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;,
        Lorg/telegram/ui/ChannelColorActivity$EmojiCell;,
        Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;,
        Lorg/telegram/ui/ChannelColorActivity$Adapter;,
        Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

.field public backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private final currentColors:Landroid/util/SparseIntArray;

.field public currentLevel:I

.field public currentProfileColor:I

.field public currentProfileEmoji:J

.field public currentReplyColor:I

.field public currentReplyEmoji:J

.field public currentStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

.field public currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final dialogId:J

.field private final dividerPaint:Landroid/graphics/Paint;

.field private forceDark:Z

.field public galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private isDark:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lock:Landroid/text/SpannableStringBuilder;

.field private messagesPreviewRow:I

.field private final msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private final msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private parentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private profileColorGridRow:I

.field private profileEmojiRow:I

.field private profileHintRow:I

.field private profilePreviewRow:I

.field private removeProfileColorRow:I

.field private removeProfileColorShadowRow:I

.field private replyColorListRow:I

.field private replyEmojiRow:I

.field private replyHintRow:I

.field private rowsCount:I

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

.field public selectedProfileColor:I

.field public selectedProfileEmoji:J

.field public selectedReplyColor:I

.field public selectedReplyEmoji:J

.field public selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

.field public selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private statusEmojiRow:I

.field private statusHintRow:I

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private wallpaperHintRow:I

.field private wallpaperRow:I

.field private wallpaperThemesRow:I


# direct methods
.method public static synthetic $r8$lambda$2PGWRM7xtvBScnKr3Yg0UohTz7Y(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity;->lambda$createView$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2wKSoPGRBYmZx33ZvkX34lujEIw(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity;->lambda$buttonClick$7(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9W63FZgSKOMjsbjyNPRrdcLwFPY(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIig1t-Cn1oHim342g0MTsLiNd8(Lorg/telegram/ui/ChannelColorActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity;->lambda$showUnsavedAlert$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GJQUxLG_bkb-ePL6rlzFaEdjyTE(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity;->lambda$buttonClick$8(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GyFPWE6QgccJfFunWVDNgXMdbKU(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity;->lambda$createView$2(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IPE1XBoQx0Iojcm2kC3OtBXjnYI(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity;->lambda$buttonClick$9(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8c1BI_r74SwFGAcv6CuBThFARw(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->updateColors(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LgiggmStu_2jS3xNOhmO-vW2xaU(Lorg/telegram/ui/ChannelColorActivity;[Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelColorActivity;->lambda$buttonClick$6([Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PgmVKMGlqaeFPt1qsogf-bIxi10(Lorg/telegram/ui/ChannelColorActivity;ILandroid/view/View;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelColorActivity;->lambda$createView$1(ILandroid/view/View;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZgR5pijnt703JWU2l-6PKYDqci0(Lorg/telegram/ui/ChannelColorActivity;[Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelColorActivity;->lambda$buttonClick$5([Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4R4h3CoLcMndOgOQlSybrG3iMk(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity;->lambda$buttonClick$10(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fPqhsyE34kP2jHed-wBhGpPmvFk(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->lambda$showLimit$12(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$liAjo8jt6_vWmktzYCKgzMz9fxQ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->lambda$toggleTheme$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pygz3p4trLyIl4iH235XIqBkN4Q(Lorg/telegram/ui/ChannelColorActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity;->lambda$showUnsavedAlert$13(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qsC7B7Ah6BF7PuTeMWcbepPHxk8(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->lambda$toggleTheme$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$tm1Bmzv6ulwBbVcC8_0noemeOPw(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->lambda$showLimit$11(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x_HOE4Bfvsxa3nCnDpuwrfJmbus(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .line 226
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 257
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    const/4 v1, 0x0

    .line 778
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    .line 2099
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->forceDark:Z

    .line 2121
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentColors:Landroid/util/SparseIntArray;

    .line 2123
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->dividerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2125
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2126
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iput-wide p1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    .line 228
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    .line 232
    :cond_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v3, p1, p2, v4}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    .line 247
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 248
    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v1, v1, p2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 249
    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v1, v2, p2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelColorActivity;)Landroid/util/SparseIntArray;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentColors:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->parentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->replyHintRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperHintRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->profileHintRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->statusHintRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorShadowRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->updateColors(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->messagesPreviewRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperThemesRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->profilePreviewRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->replyColorListRow:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->profileColorGridRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->dividerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChannelColorActivity;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelColorActivity;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelColorActivity;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ChannelColorActivity;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/ChannelColorActivity;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ChannelColorActivity;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5402(Lorg/telegram/ui/ChannelColorActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->showUnsavedAlert()V

    return-void
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    return-object p1
.end method

.method private buttonClick()V
    .locals 17

    move-object/from16 v0, p0

    .line 417
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 420
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChannelColorActivity;->minLevelRequired()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 422
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelColorActivity;->showLimit()V

    return-void

    :cond_1
    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    new-array v4, v3, [I

    aput v2, v4, v2

    new-array v5, v3, [Z

    aput-boolean v2, v5, v2

    .line 429
    new-instance v6, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda12;

    invoke-direct {v6, v0, v5, v4, v1}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChannelColorActivity;[Z[I[I)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v1, "channel is null in ChannelColorAcitivity"

    .line 451
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 452
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    sget v3, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 456
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 458
    iget v5, v0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyColor:I

    iget v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    if-ne v5, v7, :cond_3

    iget-wide v12, v0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyEmoji:J

    iget-wide v14, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    cmp-long v5, v12, v14

    if-eqz v5, :cond_6

    .line 459
    :cond_3
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;-><init>()V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v12, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v12, v12

    invoke-virtual {v7, v12, v13}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 461
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->for_profile:Z

    .line 463
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-nez v7, :cond_4

    .line 464
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    .line 465
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 467
    :cond_4
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    or-int/2addr v7, v9

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    .line 468
    iget v12, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    iput v12, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->color:I

    .line 469
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v14, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    or-int/2addr v14, v3

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 470
    iput v12, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    .line 472
    iget-wide v8, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    cmp-long v16, v8, v10

    if-eqz v16, :cond_5

    or-int/2addr v7, v3

    .line 473
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    .line 474
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->background_emoji_id:J

    const/4 v7, 0x2

    or-int/2addr v14, v7

    .line 475
    iput v14, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 476
    iput-wide v8, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    goto :goto_0

    :cond_5
    and-int/lit8 v7, v14, -0x3

    .line 478
    iput v7, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 479
    iput-wide v10, v13, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    .line 482
    :goto_0
    aget v7, v1, v2

    add-int/2addr v7, v3

    aput v7, v1, v2

    .line 483
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda13;

    invoke-direct {v8, v0, v6}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v7, v5, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 493
    :cond_6
    iget v5, v0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileColor:I

    iget v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    if-ne v5, v7, :cond_7

    iget-wide v7, v0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileEmoji:J

    iget-wide v13, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    cmp-long v5, v7, v13

    if-eqz v5, :cond_b

    .line 494
    :cond_7
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;-><init>()V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 496
    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->for_profile:Z

    .line 498
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-nez v7, :cond_8

    .line 499
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    .line 500
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 502
    :cond_8
    iget v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    if-ltz v7, :cond_9

    .line 503
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    const/4 v9, 0x4

    or-int/2addr v8, v9

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    .line 504
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->color:I

    .line 505
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    or-int/2addr v9, v3

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 506
    iput v7, v8, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    goto :goto_1

    .line 508
    :cond_9
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 511
    :goto_1
    iget-wide v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    cmp-long v9, v7, v10

    if-eqz v9, :cond_a

    .line 512
    iget v9, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    or-int/2addr v9, v3

    iput v9, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    .line 513
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->background_emoji_id:J

    .line 514
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v13, v9, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    const/4 v12, 0x2

    or-int/2addr v13, v12

    iput v13, v9, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 515
    iput-wide v7, v9, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    goto :goto_2

    .line 517
    :cond_a
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    .line 518
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    .line 521
    :goto_2
    aget v7, v1, v2

    add-int/2addr v7, v3

    aput v7, v1, v2

    .line 522
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0, v6}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v7, v5, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 532
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v5, v7}, Lorg/telegram/messenger/ChatThemeController;->wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 533
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;-><init>()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 535
    iget-object v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v7, :cond_e

    .line 536
    invoke-static {v7}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 537
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/2addr v7, v3

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 538
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 539
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;->id:J

    .line 541
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    const/4 v8, 0x4

    or-int/2addr v7, v8

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 542
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 543
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 544
    iget-object v8, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v8}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    goto :goto_3

    .line 546
    :cond_c
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/2addr v7, v3

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 547
    iget-object v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_d

    .line 548
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;-><init>()V

    .line 549
    iget-object v8, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->id:J

    .line 550
    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->access_hash:J

    .line 551
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    goto :goto_3

    .line 552
    :cond_d
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    if-eqz v7, :cond_e

    .line 553
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;-><init>()V

    .line 554
    iget-object v8, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperNoFile;->id:J

    .line 555
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 560
    :cond_e
    :goto_3
    aget v7, v1, v2

    add-int/2addr v7, v3

    aput v7, v1, v2

    .line 561
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda15;

    invoke-direct {v8, v0, v6}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v7, v5, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 569
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v7, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    .line 570
    iget v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    iget-object v10, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    if-eqz v5, :cond_10

    .line 572
    iget-object v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v7, :cond_f

    .line 573
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v7, v7, -0x81

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    const/4 v7, 0x0

    .line 574
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_4

    .line 576
    :cond_f
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 577
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 579
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x2

    aput-object v5, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 584
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/ChannelColorActivity;->currentStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v5, v7}, Lorg/telegram/messenger/DialogObject;->emojiStatusesEqual(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 585
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateEmojiStatus;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateEmojiStatus;-><init>()V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateEmojiStatus;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 587
    iget-object v7, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    if-eqz v7, :cond_12

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    if-eqz v8, :cond_11

    goto :goto_5

    .line 592
    :cond_11
    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 593
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 594
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_6

    .line 588
    :cond_12
    :goto_5
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 589
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 590
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v7, v7, -0x201

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 597
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    iget-object v10, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatusUntilUpdate(JLorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 599
    aget v7, v1, v2

    add-int/2addr v7, v3

    aput v7, v1, v2

    .line 600
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;

    invoke-direct {v8, v0, v6}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v7, v5, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 610
    :cond_13
    aget v1, v1, v2

    if-nez v1, :cond_14

    .line 611
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    goto :goto_7

    .line 614
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v3, [Ljava/lang/Object;

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_15
    :goto_7
    return-void
.end method

.method private synthetic lambda$buttonClick$10(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 601
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 605
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$buttonClick$5([Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    .line 430
    aget-boolean v1, p1, v0

    if-nez v1, :cond_3

    aget v1, p2, v0

    aget v2, p3, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_2

    .line 432
    aput-boolean v1, p1, v0

    .line 433
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "BOOSTS_REQUIRED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 434
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->showLimit()V

    goto :goto_0

    .line 436
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 437
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void

    .line 441
    :cond_2
    aget p1, p2, v0

    add-int/2addr p1, v1

    aput p1, p2, v0

    .line 442
    aget p1, p2, v0

    aget p2, p3, v0

    if-ne p1, p2, :cond_3

    .line 443
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 444
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->showBulletin()V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$buttonClick$6([Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 429
    new-instance v6, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChannelColorActivity;[Z[I[ILorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buttonClick$7(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 484
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 488
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$buttonClick$8(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 523
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 527
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$buttonClick$9(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 562
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 566
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(ILandroid/view/View;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 6

    .line 337
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 338
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    .line 339
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelColorActivity;->updateMessagesPreview(Z)V

    goto :goto_1

    .line 340
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    if-ne p1, v0, :cond_1

    .line 341
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    .line 342
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    goto :goto_1

    .line 343
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    if-ne p1, v0, :cond_4

    .line 344
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 348
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 349
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    goto :goto_0

    .line 352
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 353
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 356
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    .line 358
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 359
    check-cast p2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 373
    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 374
    iput-object p3, p0, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/4 p1, 0x0

    .line 376
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 377
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->updateMessagesPreview(Z)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;I)V
    .locals 10

    .line 327
    instance-of v0, p1, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 329
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    if-ne p2, v0, :cond_1

    .line 330
    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    :cond_0
    :goto_0
    move-wide v6, v1

    goto :goto_1

    .line 331
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    if-ne p2, v0, :cond_2

    .line 332
    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    goto :goto_0

    .line 333
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    if-ne p2, v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v1

    goto :goto_0

    .line 336
    :goto_1
    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    if-ne p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    move v8, v3

    new-instance v9, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0, p2, p1}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChannelColorActivity;ILandroid/view/View;)V

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/ChannelColorActivity;->showSelectStatusDialog(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;JZLorg/telegram/messenger/Utilities$Callback2;)V

    goto :goto_3

    .line 361
    :cond_4
    iget p1, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-ne p2, p1, :cond_5

    const/4 p1, -0x1

    .line 362
    iput p1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    .line 363
    iput-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    .line 364
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    .line 365
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 366
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->updateRows()V

    goto :goto_3

    .line 367
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperRow:I

    if-ne p2, p1, :cond_6

    .line 368
    new-instance p1, Lorg/telegram/ui/ChannelWallpaperActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-direct {p1, v0, v1, p2}, Lorg/telegram/ui/ChannelWallpaperActivity;-><init>(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    .line 369
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 370
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->setSelectedWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 371
    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelWallpaperActivity;->setOnSelectedWallpaperChange(Lorg/telegram/messenger/Utilities$Callback3;)V

    .line 379
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 0

    .line 391
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->buttonClick()V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    .line 233
    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p2, :cond_0

    .line 235
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iput p2, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-eqz p1, :cond_0

    .line 237
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 238
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    :cond_0
    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 243
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showLimit$11(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    .line 668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 669
    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v1, v1

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 670
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v1, "is_megagroup"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "start_from_boosts"

    const/4 v1, 0x1

    .line 671
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 673
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "only_boosts"

    .line 674
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 676
    :cond_1
    new-instance p1, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    .line 677
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showLimit$12(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 12

    .line 623
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyColor:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 624
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 625
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 626
    iget v0, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const/16 v1, 0x14

    .line 631
    iget v4, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileColor:I

    iget v5, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    if-eq v4, v5, :cond_3

    .line 632
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v4, :cond_2

    goto :goto_2

    .line 633
    :cond_2
    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    .line 634
    iget v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    iget v4, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-le v2, v4, :cond_3

    const/16 v1, 0x18

    move v11, v2

    goto :goto_3

    :cond_3
    move v11, v0

    .line 639
    :goto_3
    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyEmoji:J

    iget-wide v6, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-le v0, v2, :cond_4

    const/16 v1, 0x1a

    .line 642
    :cond_4
    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileEmoji:J

    iget-wide v6, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-le v0, v2, :cond_5

    const/16 v1, 0x1b

    .line 645
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0, v2}, Lorg/telegram/messenger/DialogObject;->emojiStatusesEqual(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-le v0, v2, :cond_6

    const/16 v1, 0x19

    .line 648
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatThemeController;->wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x16

    goto :goto_4

    :cond_7
    const/16 v0, 0x17

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_8
    move v8, v1

    .line 656
    :goto_5
    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v9, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v4, v0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ChannelColorActivity$2;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 662
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 664
    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    .line 665
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 667
    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    .line 680
    :cond_9
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 681
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$showUnsavedAlert$13(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 693
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$showUnsavedAlert$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 696
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->buttonClick()V

    return-void
.end method

.method private static synthetic lambda$toggleTheme$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$toggleTheme$16()V
    .locals 3

    .line 2088
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of v1, v0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2089
    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->toggle()V

    goto :goto_0

    .line 2091
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    .line 2092
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->updateThemeColors()V

    .line 2094
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ChannelColorActivity;->setForceDark(ZZ)V

    .line 2095
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->updateColors()V

    return-void
.end method

.method private showBulletin()V
    .locals 3

    .line 1709
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 1710
    instance-of v1, v0, Lorg/telegram/ui/ChatEditActivity;

    if-eqz v1, :cond_0

    .line 1711
    check-cast v0, Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    .line 1713
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAppearanceUpdated:I

    .line 1715
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1713
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1716
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x0

    .line 1717
    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_1
    return-void
.end method

.method private showLimit()V
    .locals 5

    .line 620
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    new-instance v4, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private showUnsavedAlert()V
    .locals 3

    .line 686
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 689
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorUnsaved:I

    .line 690
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorUnsavedMessage:I

    .line 691
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Dismiss:I

    .line 692
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    .line 695
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 699
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x2

    .line 700
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateColors(Landroid/view/View;)V
    .locals 4

    .line 1746
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_1

    .line 1747
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->statusHintRow:I

    if-ne p1, v2, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1749
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1750
    instance-of v0, p1, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    if-eqz v0, :cond_2

    .line 1751
    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->updateColors()V

    goto :goto_1

    .line 1752
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_3

    .line 1753
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    goto :goto_1

    .line 1754
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    if-eqz v0, :cond_4

    .line 1755
    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->updateColors()V

    goto :goto_1

    .line 1756
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    if-eqz v0, :cond_5

    .line 1757
    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->updateColors()V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 8

    const/4 v0, 0x0

    .line 801
    iput v0, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 802
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelColorActivity;->messagesPreviewRow:I

    add-int/lit8 v3, v1, 0x1

    .line 803
    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->replyColorListRow:I

    add-int/lit8 v1, v3, 0x1

    .line 804
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    add-int/lit8 v3, v1, 0x1

    .line 805
    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->replyHintRow:I

    add-int/lit8 v1, v3, 0x1

    .line 806
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperThemesRow:I

    add-int/lit8 v3, v1, 0x1

    .line 807
    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperRow:I

    add-int/lit8 v1, v3, 0x1

    .line 808
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperHintRow:I

    add-int/lit8 v3, v1, 0x1

    .line 809
    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->profilePreviewRow:I

    add-int/lit8 v1, v3, 0x1

    .line 810
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->profileColorGridRow:I

    add-int/lit8 v3, v1, 0x1

    .line 811
    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    .line 812
    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    if-ltz v1, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    const/4 v1, -0x1

    .line 821
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-ltz v0, :cond_3

    .line 822
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

    if-eqz v1, :cond_3

    .line 823
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 813
    :cond_1
    :goto_0
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-ltz v1, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 814
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-nez v0, :cond_3

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

    if-eqz v0, :cond_3

    .line 816
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 827
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelColorActivity;->profileHintRow:I

    add-int/lit8 v0, v1, 0x1

    .line 828
    iput v0, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    add-int/lit8 v1, v0, 0x1

    .line 829
    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelColorActivity;->statusHintRow:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 268
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyColor:I

    .line 271
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    iput-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyEmoji:J

    .line 272
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    iput v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileColor:I

    .line 273
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    iput-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileEmoji:J

    .line 274
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 279
    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->isNotEmoticonWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 284
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorTitle2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelColorActivity$1;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 301
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 303
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 310
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 311
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 312
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Sunny.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 313
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Path 6.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Path.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 315
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Path 5.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 318
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->updateRows()V

    .line 321
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 322
    new-instance v3, Lorg/telegram/ui/ChannelColorActivity$Adapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/ChannelColorActivity$Adapter;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/ChannelColorActivity$1;)V

    iput-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x77

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x44

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 382
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v4, 0x15e

    .line 383
    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 384
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 386
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 387
    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 389
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 390
    sget v4, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 391
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    .line 394
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    .line 395
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x50

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x44

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public findChildAt(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 1111
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1112
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasUnsavedChanged()Z
    .locals 4

    .line 1735
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyColor:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyEmoji:J

    iget-wide v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileColor:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileEmoji:J

    iget-wide v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 1740
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->emojiStatusesEqual(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1741
    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController;->wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 413
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->hasUnsavedChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->minLevelRequired()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public minLevelRequired()I
    .locals 6

    .line 118
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyColor:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 120
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 122
    iget v0, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 125
    :cond_1
    iget-wide v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentReplyEmoji:J

    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 128
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileColor:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    if-eq v0, v1, :cond_4

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    .line 132
    iget v0, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 135
    :cond_4
    iget-wide v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentProfileEmoji:J

    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 138
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->emojiStatusesEqual(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 141
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController;->wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 145
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_8
    :goto_2
    return v3
.end method

.method public onBackPressed()Z
    .locals 2

    .line 404
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->minLevelRequired()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->hasUnsavedChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->showUnsavedAlert()V

    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->loadRestrictedStatusEmojis()V

    .line 222
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public setForceDark(ZZ)V
    .locals 2

    .line 2101
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->forceDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2104
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelColorActivity;->forceDark:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 2106
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 2107
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_4

    .line 2108
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 2111
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_3
    move p1, v0

    .line 2112
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 2113
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 2114
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_4

    .line 2115
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ChannelColorActivity;
    .locals 0

    .line 1704
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->parentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public showSelectStatusDialog(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;JZLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ChannelColorActivity$EmojiCell;",
            "JZ",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 705
    iget-object v0, v13, Lorg/telegram/ui/ChannelColorActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    if-nez v0, :cond_9

    if-nez v14, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v15, 0x1

    new-array v12, v15, [Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, v13, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v11, 0x0

    if-lez v0, :cond_1

    move v0, v15

    goto :goto_0

    :cond_1
    move v0, v11

    :goto_0
    const/16 v1, 0x14a

    .line 714
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x144

    .line 715
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const v4, 0x3f733333    # 0.95f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 717
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->access$800(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v10

    .line 719
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->access$800(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v3

    const/16 v4, 0x10

    if-eqz v3, :cond_3

    .line 720
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->access$800(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 721
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->updateImageBounds()V

    .line 722
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->access$800(Lorg/telegram/ui/ChannelColorActivity$EmojiCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    neg-int v5, v5

    const/16 v6, 0xc

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    goto :goto_1

    .line 726
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    sub-int/2addr v1, v5

    neg-int v1, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v1, v5

    .line 728
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    move v9, v5

    goto :goto_2

    :cond_3
    move v1, v11

    move v9, v1

    :goto_2
    if-eqz p4, :cond_5

    if-eqz v0, :cond_4

    const/16 v2, 0xa

    goto :goto_3

    :cond_4
    const/16 v2, 0x9

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    const/4 v2, 0x5

    goto :goto_3

    :cond_6
    const/4 v2, 0x7

    :goto_3
    move v6, v2

    .line 737
    new-instance v8, Lorg/telegram/ui/ChannelColorActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v17

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    move/from16 v18, v0

    goto :goto_4

    :cond_7
    move/from16 v18, v4

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->getColor()I

    move-result v19

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move v4, v5

    move-object v5, v7

    move/from16 v7, v16

    move-object v15, v8

    move-object/from16 v8, v17

    move/from16 v20, v9

    move/from16 v9, v18

    move-object/from16 v21, v10

    move/from16 v10, v19

    move-object/from16 v11, p5

    move-object/from16 v17, v12

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChannelColorActivity$3;-><init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/messenger/Utilities$Callback2;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    const/4 v0, 0x1

    .line 754
    iput-boolean v0, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->useAccentForPlus:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    .line 755
    :cond_8
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_5
    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V

    const/4 v0, 0x3

    .line 756
    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSaveState(I)V

    move-object/from16 v0, v21

    .line 757
    invoke-virtual {v15, v0, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    .line 758
    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$4;

    const/4 v1, -0x2

    invoke-direct {v0, v13, v15, v1, v1}, Lorg/telegram/ui/ChannelColorActivity$4;-><init>(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;II)V

    iput-object v0, v13, Lorg/telegram/ui/ChannelColorActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v1, 0x0

    aput-object v0, v17, v1

    .line 765
    aget-object v0, v17, v1

    const/16 v2, 0x35

    move/from16 v11, v20

    invoke-virtual {v0, v14, v1, v11, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 766
    aget-object v0, v17, v1

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dimBehind()V

    :cond_9
    :goto_6
    return-void
.end method

.method public toggleTheme()V
    .locals 17

    move-object/from16 v12, p0

    .line 2011
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/FrameLayout;

    .line 2012
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2013
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2014
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2015
    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2016
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2018
    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    .line 2019
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2020
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2022
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 2023
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v15, 0x2

    new-array v1, v15, [I

    .line 2025
    iget-object v2, v12, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 2026
    aget v2, v1, v2

    int-to-float v10, v2

    .line 2027
    aget v0, v1, v0

    int-to-float v11, v0

    .line 2028
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v4, v10, v0

    .line 2029
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v5, v11, v0

    .line 2031
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 2033
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v8, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2034
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2035
    new-instance v2, Lorg/telegram/ui/ChannelColorActivity$5;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ChannelColorActivity$5;-><init>(Lorg/telegram/ui/ChannelColorActivity;Landroid/content/Context;Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v15, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightView:Landroid/view/View;

    .line 2053
    sget-object v0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2054
    iput v14, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2055
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    .line 2056
    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$6;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ChannelColorActivity$6;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2068
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$7;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ChannelColorActivity$7;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2081
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2082
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2083
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2085
    iget-object v0, v12, Lorg/telegram/ui/ChannelColorActivity;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, v12}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateButton(Z)V
    .locals 6

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity;->minLevelRequired()I

    move-result v0

    .line 157
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    if-lt v1, v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->lock:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 161
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "l"

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->lock:Landroid/text/SpannableStringBuilder;

    .line 162
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v3, 0x1

    .line 163
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    .line 164
    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity;->lock:Landroid/text/SpannableStringBuilder;

    const/16 v5, 0x21

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 166
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 167
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity;->lock:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "BoostLevelRequired"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->adapter:Lorg/telegram/ui/ChannelColorActivity$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelColorActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelColorActivity;)V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    .line 1731
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    return-void
.end method

.method public updateMessagesPreview(Z)V
    .locals 9

    .line 1045
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->messagesPreviewRow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1046
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->replyColorListRow:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1047
    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1048
    iget v3, p0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperThemesRow:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1050
    instance-of v4, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v4, :cond_2

    .line 1051
    check-cast v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    .line 1052
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    const/4 v5, 0x0

    .line 1053
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 1054
    aget-object v6, v4, v5

    if-eqz v6, :cond_0

    .line 1055
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1057
    iget v7, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    .line 1058
    iget-wide v7, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    iput-wide v7, v6, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    .line 1059
    aget-object v7, v4, v5

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAvatar(Lorg/telegram/messenger/MessageObject;)V

    .line 1060
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v6, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-boolean v7, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    :cond_2
    instance-of v0, v1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v0, :cond_3

    .line 1067
    check-cast v1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    goto :goto_1

    .line 1068
    :cond_3
    instance-of v0, v1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    if-eqz v0, :cond_4

    .line 1069
    check-cast v1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->setSelected(IZ)V

    .line 1071
    :cond_4
    :goto_1
    instance-of v0, v2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    if-eqz v0, :cond_5

    .line 1072
    check-cast v2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v1, v4}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    .line 1073
    iget-wide v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    invoke-virtual {v2, v0, v1, p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    .line 1075
    :cond_5
    instance-of v0, v3, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    if-eqz v0, :cond_6

    .line 1076
    check-cast v3, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    .line 1077
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    :cond_6
    return-void
.end method

.method public updateProfilePreview(Z)V
    .locals 6

    .line 1082
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->profilePreviewRow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1083
    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity;->profileColorGridRow:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1084
    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1085
    iget v3, p0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1087
    instance-of v4, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    if-eqz v4, :cond_0

    .line 1088
    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    iget v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v0, v4, p1}, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->setColor(IZ)V

    .line 1089
    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {v0, v4, v5, p1}, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->setEmoji(JZ)V

    .line 1090
    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v0, v4, p1}, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->setEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V

    .line 1091
    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    .line 1093
    :cond_0
    instance-of v0, v1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v0, :cond_1

    .line 1094
    check-cast v1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    goto :goto_0

    .line 1095
    :cond_1
    instance-of v0, v1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    if-eqz v0, :cond_2

    .line 1096
    check-cast v1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->setSelected(IZ)V

    .line 1098
    :cond_2
    :goto_0
    instance-of v0, v2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1099
    check-cast v2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v2, v0, v4, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    .line 1100
    iget-wide v4, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {v2, v4, v5, p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    .line 1102
    :cond_3
    instance-of v0, v3, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    if-eqz v0, :cond_4

    .line 1103
    check-cast v3, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v3, v0, v2, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, p1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZ)V

    .line 1107
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity;->updateRows()V

    return-void
.end method

.method public updateThemeColors()V
    .locals 7

    .line 2130
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastDayTheme"

    const-string v3, "Blue"

    .line 2131
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2132
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v3

    :cond_1
    const-string v4, "lastDarkTheme"

    const-string v5, "Dark Blue"

    .line 2135
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2136
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v0, v5

    .line 2139
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    .line 2140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2141
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Night"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    move-object v5, v0

    goto :goto_0

    :cond_5
    move-object v5, v0

    :cond_6
    move-object v3, v1

    .line 2148
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    if-eqz v0, :cond_7

    .line 2149
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_1

    .line 2151
    :cond_7
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 2154
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2157
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 2158
    invoke-static {v4, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v1

    goto :goto_2

    .line 2160
    :cond_8
    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 2162
    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object v3

    if-eqz v3, :cond_9

    move v4, v2

    .line 2164
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_9

    .line 2165
    iget-object v5, p0, Lorg/telegram/ui/ChannelColorActivity;->currentColors:Landroid/util/SparseIntArray;

    aget v6, v3, v4

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_b

    move v3, v2

    .line 2169
    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 2170
    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2172
    :cond_a
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2174
    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    .line 2177
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2179
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelColorActivity;->isDark:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2180
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity;->messagesPreviewRow:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelColorActivity;->findChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2181
    instance-of v1, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v1, :cond_c

    .line 2182
    check-cast v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    return-void
.end method
