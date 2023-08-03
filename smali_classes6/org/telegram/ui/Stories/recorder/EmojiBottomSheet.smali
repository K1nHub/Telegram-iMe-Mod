.class public Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "EmojiBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;
    }
.end annotation


# instance fields
.field private categoryIndex:I

.field private drawBlurBitmap:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final galleryButton:Landroid/widget/ImageView;

.field private maxPadding:F

.field private onDocumentSelected:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private final tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

.field private top:F

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private wasKeyboardVisible:Z


# direct methods
.method public static synthetic $r8$lambda$WooJ6z1BZ6Qx3ygGXk4f03jgqP0(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZwfdBiucVGrQbWQFRSW7h4iMPQ(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->lambda$new$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    const/4 v0, 0x1

    .line 800
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->query:Ljava/lang/String;

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->categoryIndex:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 794
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    .line 802
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    .line 803
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 805
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    const/4 p2, 0x0

    .line 806
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setUseLightStatusBar(Z)V

    .line 808
    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 809
    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 817
    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    .line 831
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v4, 0x57

    invoke-static {v1, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    new-instance v2, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-direct {v2, v3, v5}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 842
    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    .line 843
    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;->setOnTypeSelected(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 849
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v5, -0x2

    invoke-static {v1, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->galleryButton:Landroid/widget/ImageView;

    .line 852
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p1, 0x8

    .line 853
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 854
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_tabs_media:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 855
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const v3, 0x70ffffff

    invoke-direct {p1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 856
    invoke-static {v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x53

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 860
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 862
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 863
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    .line 865
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 866
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p2, p2, v0, p2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 867
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2, v0, p2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->categoryIndex:I

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I
    .locals 0

    .line 112
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->categoryIndex:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F
    .locals 0

    .line 112
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onDocumentSelected:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->drawBlurBitmap:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/widget/ImageView;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->galleryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F
    .locals 0

    .line 112
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    return p1
.end method

.method static synthetic access$3616(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F
    .locals 1

    .line 112
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    .line 112
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 3

    .line 834
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->wasKeyboardVisible:Z

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eq p1, v0, :cond_1

    .line 835
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->wasKeyboardVisible:Z

    .line 836
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 837
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    sub-float/2addr p1, v2

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 838
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;)V
    .locals 2

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->isManualScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)V

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;->setType(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 2

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    float-to-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closeKeyboard()V
    .locals 4

    const/4 v0, 0x0

    .line 871
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    .line 872
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 873
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v1

    .line 874
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 875
    aget-object v2, v1, v0

    .line 876
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    if-eqz v2, :cond_0

    .line 877
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 774
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_4

    .line 775
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 776
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 777
    aget-object v2, p2, v1

    .line 778
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v3, :cond_3

    .line 779
    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    .line 780
    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-eq p1, v3, :cond_2

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-nez v3, :cond_1

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 781
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    :cond_1
    iget v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 782
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 784
    :cond_2
    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->update()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 889
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 890
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 891
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->closeKeyboard()V

    .line 892
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public getContainerViewHeight()I
    .locals 2

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1036
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setBlurDelegate(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 898
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->drawBlurBitmap:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setOnGalleryClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->galleryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->galleryButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public whenSelected(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;"
        }
    .end annotation

    .line 1043
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onDocumentSelected:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method
