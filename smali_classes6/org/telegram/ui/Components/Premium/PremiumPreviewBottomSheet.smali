.class public Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "PremiumPreviewBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;
    }
.end annotation


# instance fields
.field animateConfetti:Z

.field bulletinContainer:Landroid/widget/FrameLayout;

.field buttonContainer:Landroid/widget/FrameLayout;

.field buttonRow:I

.field coords:[I

.field currentAccount:I

.field dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

.field enterAnimator:Landroid/animation/ValueAnimator;

.field enterTransitionInProgress:Z

.field enterTransitionProgress:F

.field featuresEndRow:I

.field featuresStartRow:I

.field fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field helpUsRow:I

.field iconContainer:Landroid/view/ViewGroup;

.field iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field public isEmojiStatus:Z

.field isOutboundGift:Z

.field public overrideTitleIcon:Landroid/view/View;

.field paddingRow:I

.field premiumFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;",
            ">;"
        }
    .end annotation
.end field

.field rowCount:I

.field sectionRow:I

.field starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field public startEnterFromScale:F

.field public startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public startEnterFromX:F

.field public startEnterFromX1:F

.field public startEnterFromY:F

.field public startEnterFromY1:F

.field public statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private subtitleView:Landroid/widget/TextView;

.field private titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private titleViewContainer:Landroid/widget/FrameLayout;

.field totalGradientHeight:I

.field user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public static synthetic $r8$lambda$A41GD2E0LAUoKhBBSdD2-mnkpJ8(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/text/style/ClickableSpan;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$setTitle$5(Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G-awvHim5QU4ug6notL5istsuRs(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$showDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G-jLe6QQ07o-FTHHZNNf1N5_dwQ(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$onCustomOpenAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PS7-SOaY7P2WSp1DGs8N6_cWn48(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XD4ReCXtNVLNN5n60rTo5aS6vw4(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$titleLoaded$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YoOGnEBnraJe0SwLcpdV5mjuc6M(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$titleLoaded$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$YtuXn6aiGncoODFjlts75ofWRIg(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$new$0(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u_4z9LZwjRF2bJVWPqfbJB-ecn8(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$show$6()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 110
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 114
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 66
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    const/4 p5, 0x2

    new-array p5, p5, [I

    .line 100
    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->coords:[I

    const/4 p5, 0x0

    .line 101
    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    .line 115
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const v0, 0x3e851eb8    # 0.26f

    .line 117
    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 118
    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 119
    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    .line 120
    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 121
    new-instance p3, Lorg/telegram/ui/PremiumFeatureCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/telegram/ui/PremiumFeatureCell;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    .line 122
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-static {p3, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;I)V

    .line 124
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-nez p3, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 125
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 128
    :cond_1
    new-instance p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const-string v0, "premiumGradient1"

    const-string v1, "premiumGradient2"

    const-string v2, "premiumGradient3"

    const-string v3, "premiumGradient4"

    invoke-direct {p3, v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    .line 130
    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 131
    iput v0, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    .line 132
    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    .line 133
    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    .line 134
    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cx:F

    .line 135
    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cy:F

    .line 137
    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    add-int/lit8 p5, p3, 0x1

    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->paddingRow:I

    .line 138
    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    .line 139
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p5, p3

    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    .line 140
    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    add-int/lit8 p3, p5, 0x1

    .line 141
    iput p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->sectionRow:I

    .line 142
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 143
    iget p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonRow:I

    .line 145
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p4, 0x6

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p3, p5, v0, p4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 146
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 159
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    const-string p1, "profile"

    .line 160
    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowScreenStat(Ljava/lang/String;)V

    .line 162
    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 163
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 p3, -0x1

    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 166
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 p4, 0x8c

    const/16 p5, 0x57

    invoke-static {p3, p4, p5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;)[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    return-object p1
.end method

.method private synthetic lambda$new$0(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    .line 147
    instance-of p4, p3, Lorg/telegram/ui/PremiumFeatureCell;

    if-eqz p4, :cond_0

    .line 148
    check-cast p3, Lorg/telegram/ui/PremiumFeatureCell;

    .line 149
    iget-object p4, p3, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p4, p4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p1, p4}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowFeaturePreview(II)V

    .line 154
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p3, p3, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p3, p3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->showDialog(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 719
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 1

    .line 200
    invoke-static {}, Lorg/telegram/ui/PremiumPreviewFragment;->sentPremiumButtonClick()V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-string v0, "profile"

    invoke-static {p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTitle$5(Landroid/text/style/ClickableSpan;)V
    .locals 6

    .line 309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 340
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 345
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    return-void
.end method

.method private synthetic lambda$show$6()V
    .locals 3

    .line 613
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 188
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method private synthetic lambda$titleLoaded$3()V
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$titleLoaded$4(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 244
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private measureGradient(II)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 596
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 597
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    .line 598
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 599
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iput v2, v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->yOffset:I

    .line 600
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    :cond_0
    iput v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->totalGradientHeight:I

    return-void
.end method

.method private showDialog(Landroid/app/Dialog;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    .line 184
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private titleLoaded(Ljava/lang/CharSequence;Z)V
    .locals 5

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 232
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 235
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 236
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 242
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 243
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 252
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 2

    .line 381
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;)V

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 758
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_0

    .line 759
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_0

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    const/4 v0, 0x0

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 760
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setTitle(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 5

    .line 622
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 623
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 376
    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    const-string v1, "TelegramPremium"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected mainContainerDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 635
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 636
    iget-boolean v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionInProgress:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 638
    :cond_1
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->mainContainerDispatchDraw(Landroid/graphics/Canvas;)V

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionInProgress:Z

    if-eqz v2, :cond_7

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    if-ne v4, v2, :cond_3

    .line 642
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x2

    new-array v5, v2, [F

    .line 647
    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromX:F

    aput v6, v5, v3

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromY:F

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 648
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 649
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 650
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->coords:[I

    aget v9, v8, v3

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromX1:F

    add-float/2addr v9, v10

    aget v10, v5, v3

    add-float/2addr v9, v10

    .line 651
    aget v8, v8, v7

    neg-int v8, v8

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromY1:F

    add-float/2addr v8, v10

    aget v5, v5, v7

    add-float/2addr v8, v5

    .line 653
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 654
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    .line 655
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    add-float/2addr v9, v7

    .line 656
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    add-float/2addr v8, v7

    .line 659
    :cond_4
    iget v5, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    .line 660
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v10

    div-float v10, v7, v5

    div-float/2addr v5, v7

    .line 664
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    move-object v12, v4

    .line 666
    :goto_2
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eq v12, v13, :cond_6

    if-nez v12, :cond_5

    goto :goto_3

    .line 670
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v13

    add-float/2addr v7, v13

    .line 671
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    goto :goto_2

    .line 674
    :cond_6
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v12

    const/4 v13, 0x0

    add-float/2addr v12, v13

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    add-float/2addr v12, v14

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    add-float/2addr v12, v14

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    add-float/2addr v12, v14

    .line 676
    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v15, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v14

    invoke-static {v9, v7, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 677
    iget v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-static {v8, v12, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    .line 680
    iget v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    iget v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v12

    mul-float/2addr v9, v15

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 682
    invoke-virtual {v1, v9, v9, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    float-to-int v9, v7

    .line 684
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/2addr v10, v2

    sub-int v10, v9, v10

    float-to-int v12, v8

    .line 685
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/2addr v15, v2

    sub-int v15, v12, v15

    .line 686
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v9, v9, v16

    .line 687
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v12, v12, v16

    .line 683
    invoke-virtual {v6, v10, v15, v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v2, 0x437f0000    # 255.0f

    .line 688
    iget v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-static {v9, v14, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v9

    sub-float v9, v14, v9

    mul-float/2addr v9, v2

    float-to-int v2, v9

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 689
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 690
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 693
    iget v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-static {v5, v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 694
    invoke-virtual {v1, v2, v2, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 695
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v7, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v8, v2

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 697
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 746
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 747
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onCustomOpenAnimation()Z
    .locals 4

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 709
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 710
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    const/4 v0, 0x1

    .line 711
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionInProgress:Z

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_1

    const/16 v1, -0x168

    const-wide/16 v2, 0x64

    .line 716
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startEnterAnimation(IJ)V

    .line 718
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 741
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 752
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 753
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onPreMeasure(II)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onPreMeasure(II)V

    .line 222
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->measureGradient(II)V

    .line 223
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->coords:[I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    return-void
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 12

    .line 195
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 196
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    .line 198
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;Z)V

    .line 199
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/PremiumPreviewFragment;->getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    .line 206
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v3, "divider"

    .line 207
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 210
    invoke-static {v1, v5, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 212
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const-string v1, "dialogBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x44

    const/16 v2, 0x50

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAnimateConfetti(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
    .locals 0

    .line 175
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->animateConfetti:Z

    return-object p0
.end method

.method public setOutboundGift(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isOutboundGift:Z

    return-object p0
.end method

.method public setTitle(Z)V
    .locals 12

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 265
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 v2, 0x2

    const-string v3, "windowBackgroundWhiteBlueButton"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    .line 267
    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDialogTitle:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "<STICKERSET>"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 272
    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 274
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 275
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 276
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v7, :cond_4

    move v7, v6

    .line 277
    :goto_1
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 278
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 279
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v4

    :cond_4
    :goto_2
    const/16 v7, 0x21

    if-eqz v3, :cond_5

    .line 287
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string v9, "x"

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v10, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v8, v9, v6, v10, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v2, :cond_6

    .line 289
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v9, :cond_6

    const-string v9, "\u00a0"

    .line 290
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 294
    :cond_5
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string v2, "xxxxxx"

    invoke-direct {v8, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v2, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v9, v9, v6

    const/16 v10, 0x64

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-direct {v2, v9, v10}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v2, v6, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v0, 0xc

    .line 298
    invoke-virtual {v1, v0, v2, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 299
    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    .line 307
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/2addr v8, v0

    .line 299
    invoke-virtual {v1, v2, v0, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v0, v0, v5

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setOnLinkPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V

    if-eqz v3, :cond_7

    .line 348
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleLoaded(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    .line 350
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v6

    invoke-virtual {p1, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 353
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDialogSubtitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 354
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isEmojiStatus:Z

    if-eqz p1, :cond_a

    .line 355
    aget-object p1, v0, v6

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDefaultDialogTitle:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDialogSubtitle:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 357
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz p1, :cond_10

    .line 358
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isOutboundGift:Z

    const-string v7, "GiftMonths"

    if-eqz v1, :cond_d

    .line 359
    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumOutboundDialogTitleWithPlural:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    const-string v9, ""

    if-eqz v8, :cond_b

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v8, v9

    :goto_5
    aput-object v8, v2, v6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result p1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumOutboundDialogSubtitle:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :cond_c
    aput-object v9, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 361
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v8, 0xbdb28

    cmp-long v0, v0, v8

    if-nez v0, :cond_e

    goto :goto_6

    .line 365
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v0, v0, v6

    sget v1, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogTitleWithPlural:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object p1, v2, v6

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result p1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogSubtitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 362
    :cond_f
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v6

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogTitleWithPluralSomeone:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v2

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogSubtitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 369
    :cond_10
    aget-object p1, v0, v6

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserDialogTitle:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserDialogSubtitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_7
    return-void
.end method

.method public show()V
    .locals 5

    .line 608
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 609
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

    .line 610
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->animateConfetti:Z

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
