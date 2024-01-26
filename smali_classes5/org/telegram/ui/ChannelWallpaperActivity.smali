.class public Lorg/telegram/ui/ChannelWallpaperActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;
    }
.end annotation


# instance fields
.field public adapter:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

.field public boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field public contentView:Landroid/widget/FrameLayout;

.field public currentLevel:I

.field public currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final dialogId:J

.field public galleryRow:I

.field public galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field public infoRow:I

.field public listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private onSelectedWallpaperChange:Lorg/telegram/messenger/Utilities$Callback3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;"
        }
    .end annotation
.end field

.field public removeRow:I

.field public rowsCount:I

.field public selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field public themesRow:I

.field public toggleThemeDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;


# direct methods
.method public static synthetic $r8$lambda$6h1JCDGqacxX7KwXeBFkBnuZzac(Lorg/telegram/ui/ChannelWallpaperActivity;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->lambda$createView$1(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FDmo7TNlwmH70hZE1aLB-jm7Kdo(Lorg/telegram/ui/ChannelWallpaperActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->lambda$toggleTheme$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPstpCzCETCGS_sGYFRmR_pKSWQ(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateColors(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_PvYBsyY29Q53N_8hyzoOoqXnW4(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelWallpaperActivity;->lambda$createView$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3nLjRlcg_nadAsT40x4ojUSKnU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->lambda$toggleTheme$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y7Equxz1EHqMJa4uVdCt7KUY2Js(Lorg/telegram/ui/ChannelWallpaperActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelWallpaperActivity;->lambda$new$0(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public constructor <init>(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 5

    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryRow:I

    .line 203
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    .line 204
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->infoRow:I

    .line 205
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->themesRow:I

    .line 364
    new-instance v0, Lorg/telegram/ui/ChannelWallpaperActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelWallpaperActivity$2;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->toggleThemeDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    .line 61
    iput-wide p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->dialogId:J

    .line 62
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    iput v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->currentLevel:I

    .line 66
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez p3, :cond_1

    .line 68
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p3, v0}, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v3, p1, p2, v4}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_0

    .line 79
    :cond_1
    iget p1, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iput p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->currentLevel:I

    .line 82
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 84
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 85
    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->isNotEmoticonWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelWallpaperActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelWallpaperActivity;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/messenger/Utilities$Callback3;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->onSelectedWallpaperChange:Lorg/telegram/messenger/Utilities$Callback3;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelWallpaperActivity;)F
    .locals 0

    .line 51
    iget p0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChannelWallpaperActivity;F)F
    .locals 0

    .line 51
    iput p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelWallpaperActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->onSelectedWallpaperChange:Lorg/telegram/messenger/Utilities$Callback3;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1, p1, p1}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)V
    .locals 8

    .line 153
    iget p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 155
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 156
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->onSelectedWallpaperChange:Lorg/telegram/messenger/Utilities$Callback3;

    if-eqz p2, :cond_0

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-interface {p2, v0, p1, p1}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->themesRow:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelWallpaperActivity;->findChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 161
    instance-of p2, p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    if-eqz p2, :cond_1

    .line 162
    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateRows()V

    goto :goto_0

    .line 165
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryRow:I

    if-ne p2, p1, :cond_3

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->dialogId:J

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v5, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    iget-object v6, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->toggleThemeDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    iget-object v7, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->openGalleryForBackground(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 69
    iput-object p3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p1, :cond_0

    .line 71
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iput p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->currentLevel:I

    if-eqz p2, :cond_0

    .line 73
    iget p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit16 p3, p3, 0x400

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 74
    iput p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$toggleTheme$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$toggleTheme$4()V
    .locals 2

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of v1, v0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    if-eqz v1, :cond_0

    .line 469
    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->toggle()V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->isDark()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ChannelWallpaperActivity;->setForceDark(ZZ)V

    .line 472
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateColors()V

    return-void
.end method

.method private updateColors(Landroid/view/View;)V
    .locals 4

    .line 351
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_0

    .line 352
    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 353
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 355
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 356
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_1

    .line 357
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    goto :goto_0

    .line 358
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    if-eqz v0, :cond_2

    .line 359
    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->updateColors()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelWallpaper:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelWallpaperActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelWallpaperActivity$1;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 126
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

    iput-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->isDark()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 135
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 136
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 137
    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Sunny.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 138
    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Path 6.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 139
    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Path.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 140
    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v4, "Path 5.**"

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of v0, v0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 145
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->contentView:Landroid/widget/FrameLayout;

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateRows()V

    .line 148
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 149
    new-instance v1, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->adapter:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x77

    const/4 v3, -0x1

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 175
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x15e

    .line 176
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 177
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 179
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelWallpaperActivity;->updateColors()V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public findChildAt(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

.method public isDark()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setForceDark(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 478
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_2
    move p1, v0

    .line 484
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 485
    iget-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_3

    .line 487
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOnSelectedWallpaperChange(Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->onSelectedWallpaperChange:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method

.method public setSelectedWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 93
    iput-object p2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-void
.end method

.method public toggleTheme()V
    .locals 17

    move-object/from16 v12, p0

    .line 391
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/FrameLayout;

    .line 392
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 393
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 394
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 395
    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 396
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 398
    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    .line 399
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 402
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 403
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v15, 0x2

    new-array v1, v15, [I

    .line 405
    iget-object v2, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 406
    aget v2, v1, v2

    int-to-float v10, v2

    .line 407
    aget v0, v1, v0

    int-to-float v11, v0

    .line 408
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v4, v10, v0

    .line 409
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v5, v11, v0

    .line 411
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 413
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v8, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 414
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 415
    new-instance v2, Lorg/telegram/ui/ChannelWallpaperActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ChannelWallpaperActivity$3;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/content/Context;Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v15, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightView:Landroid/view/View;

    .line 433
    sget-object v0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    iput v14, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 435
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    .line 436
    new-instance v1, Lorg/telegram/ui/ChannelWallpaperActivity$4;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ChannelWallpaperActivity$4;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 448
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChannelWallpaperActivity$5;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ChannelWallpaperActivity$5;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 461
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 462
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 465
    iget-object v0, v12, Lorg/telegram/ui/ChannelWallpaperActivity;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v0, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, v12}, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateColors()V
    .locals 3

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->adapter:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelWallpaperActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 346
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->contentView:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public updateRows()V
    .locals 4

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 209
    iput v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryRow:I

    .line 210
    iget v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 212
    iput v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    goto :goto_0

    .line 214
    :cond_0
    iput v3, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    .line 216
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->adapter:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    if-eqz v1, :cond_2

    .line 217
    iget v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    if-eq v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    .line 218
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 220
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->removeRow:I

    if-ne v1, v3, :cond_2

    if-eq v0, v3, :cond_2

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->adapter:Lorg/telegram/ui/ChannelWallpaperActivity$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 224
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->infoRow:I

    add-int/lit8 v0, v1, 0x1

    .line 225
    iput v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelWallpaperActivity;->themesRow:I

    return-void
.end method
