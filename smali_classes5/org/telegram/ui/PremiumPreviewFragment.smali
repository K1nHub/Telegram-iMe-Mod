.class public Lorg/telegram/ui/PremiumPreviewFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PremiumPreviewFragment.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;,
        Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;,
        Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;,
        Lorg/telegram/ui/PremiumPreviewFragment$Adapter;
    }
.end annotation


# instance fields
.field backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private buttonDivider:Landroid/view/View;

.field private contentView:Landroid/widget/FrameLayout;

.field currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

.field private currentYOffset:I

.field dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

.field dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

.field featuresEndRow:I

.field featuresStartRow:I

.field private firstViewHeight:I

.field private forcePremium:Z

.field final gradientCanvas:Landroid/graphics/Canvas;

.field gradientPaint:Landroid/graphics/Paint;

.field final gradientTextureBitmap:Landroid/graphics/Bitmap;

.field gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field helpUsRow:I

.field inc:Z

.field private isDialogVisible:Z

.field isLandscapeMode:Z

.field private isSettingsMode:Z

.field lastPaddingRow:I

.field layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field matrix:Landroid/graphics/Matrix;

.field paddingRow:I

.field particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field private premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field premiumFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;",
            ">;"
        }
    .end annotation
.end field

.field privacyRow:I

.field progress:F

.field progressToFull:F

.field rowCount:I

.field sectionRow:I

.field private selectAnnualByDefault:Z

.field selectedTierIndex:I

.field private settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field settingsView:Landroid/widget/FrameLayout;

.field shader:Landroid/graphics/Shader;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private source:Ljava/lang/String;

.field private statusBarHeight:I

.field statusRow:I

.field subscriptionTiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;",
            ">;"
        }
    .end annotation
.end field

.field tiersGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field totalGradientHeight:I

.field totalProgress:F

.field totalTiersGradientHeight:I


# direct methods
.method public static synthetic $r8$lambda$-0T59uNNd2L1eQVWa-UP5Q8thX8(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$updateButtonText$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-ksu7nDN6TUVvLJQZ8tSaFnNhCY(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$updateButtonText$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ae4Zlu1mIgML36tXMk0frgCRhsg(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$updateButtonText$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Anp8mPqJ5vQ3iq7y7bjWi5FPw-E(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$fillPremiumFeaturesList$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GhcKRTgg3uA5H6nHBxjiKtdUEO0(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ItME0nYf6I1mQtgCGCWJW-ekp90(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$sentPremiumButtonClick$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KU7WhzD5sBFhnmTisjK4fvULIB0(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$5(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWUSdFSOQDTJgDbT3jWEsFfNY0I(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$OvuZomSXCa7WM8h2aQM40ckeYw8(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$10(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PhoVf85HySR2LtrGecniDNaOJtI(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ri90h4Q2rEQ5xafZ5bHFANMZdqg(Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$6(Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTjJ2wPMxnU1fBwAhFUS7pd3fco(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$sentShowFeaturePreview$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XTtJ4FxFlD8lOwFEZaE9DSHPp2g(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$4(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_OxBW5u1y2JhGxLhAxK9yOix6OI(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$sentPremiumBuyCanceled$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRvD9aj_ft1ssfrXl2Dqk15EWqA(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$8(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hCvFvOpaeiE0CmE4JyDeEnikq5A(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$sentShowScreenStat$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiQ0jF5sZZFnWWBrX1Lft94CRSc(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$9(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$laoIaqFRIfRm4JenrhWDsQBYXDc(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$3(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oiO3EW1vUNMiY5h_IBoFgQ2lxb0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/PremiumPreviewFragment;->lambda$buyPremium$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 350
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 183
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->matrix:Landroid/graphics/Matrix;

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientPaint:Landroid/graphics/Paint;

    .line 228
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTextureBitmap:Landroid/graphics/Bitmap;

    .line 229
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    .line 230
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 355
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->tiersGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 356
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    const/4 v1, 0x0

    .line 357
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    .line 358
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    .line 359
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 360
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    .line 361
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cx:F

    .line 362
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cy:F

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->source:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PremiumPreviewFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->firstViewHeight:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/PremiumPreviewFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->firstViewHeight:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->checkButtonDivider()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PremiumPreviewFragment;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->setSettingsMode(Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectAnnualByDefault:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PremiumPreviewFragment;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->updateButtonText(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PremiumPreviewFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PremiumPreviewFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateBackgroundImage()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PremiumPreviewFragment;II)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->measureGradient(II)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isDialogVisible:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentYOffset:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PremiumPreviewFragment;I)I
    .locals 0

    .line 111
    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentYOffset:I

    return p1
.end method

.method public static applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 796
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, "  d"

    .line 797
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 798
    new-instance p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(Z)V

    .line 799
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    .line 800
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string v0, "settings"

    .line 728
    invoke-static {p0, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 821
    invoke-static {p0, v0, p1, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;Z)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 829
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;Z)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 833
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V
    .locals 4

    .line 837
    sget-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$ClickBuyPremiumButton;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$ClickBuyPremiumButton;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 838
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-eqz v0, :cond_0

    .line 839
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumNotAvailableBottomSheet;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/PremiumNotAvailableBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 845
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 847
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->period_options:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    .line 848
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    if-ne v2, v0, :cond_2

    .line 849
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-direct {p1, v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 851
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-direct {p1, v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;)V

    :cond_3
    move p3, v0

    :cond_4
    if-nez p1, :cond_5

    return-void

    .line 864
    :cond_5
    invoke-static {}, Lorg/telegram/ui/PremiumPreviewFragment;->sentPremiumButtonClick()V

    .line 866
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 867
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 868
    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_b

    .line 869
    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    .line 871
    iget-object p3, p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    if-nez p3, :cond_6

    goto :goto_1

    .line 879
    :cond_6
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 880
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string p3, "t.me"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 881
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/$"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p2, "/invoice/"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 882
    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumBot(Z)V

    .line 885
    :cond_7
    iget-object p0, p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 872
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->premiumBotUsername:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, "android.intent.action.VIEW"

    if-nez p1, :cond_9

    .line 873
    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumBot(Z)V

    .line 874
    new-instance p1, Landroid/content/Intent;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://t.me/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->premiumBotUsername:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?start="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/LaunchActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_2

    .line 875
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 876
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "https://t.me/$"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/LaunchActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_a
    :goto_2
    return-void

    .line 891
    :cond_b
    sget-object p2, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-nez p2, :cond_c

    return-void

    .line 895
    :cond_c
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p2

    .line 896
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    return-void

    .line 900
    :cond_d
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getGooglePlayProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p2

    if-nez p2, :cond_e

    .line 901
    sget-object p2, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V

    .line 904
    :cond_e
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 909
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p4, p1}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    const-string p0, "subs"

    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/BillingController;->queryPurchases(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method private checkButtonDivider()V
    .locals 4

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method private closeSetting()V
    .locals 2

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PremiumPreviewFragment$6;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static featureTypeToServerString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "peer_colors"

    return-object p0

    :pswitch_1
    const-string p0, "wallpapers"

    return-object p0

    :pswitch_2
    const-string p0, "stories__caption"

    return-object p0

    :pswitch_3
    const-string p0, "stories__priority_order"

    return-object p0

    :pswitch_4
    const-string p0, "stories__links_and_formatting"

    return-object p0

    :pswitch_5
    const-string p0, "stories__save_stories_to_gallery"

    return-object p0

    :pswitch_6
    const-string p0, "stories__expiration_durations"

    return-object p0

    :pswitch_7
    const-string p0, "stories__permanent_views_history"

    return-object p0

    :pswitch_8
    const-string p0, "stories__stealth_mode"

    return-object p0

    :pswitch_9
    const-string p0, "stories"

    return-object p0

    :pswitch_a
    const-string p0, "translations"

    return-object p0

    :pswitch_b
    const-string p0, "emoji_status"

    return-object p0

    :pswitch_c
    const-string p0, "animated_emoji"

    return-object p0

    :pswitch_d
    const-string p0, "app_icons"

    return-object p0

    :pswitch_e
    const-string p0, "advanced_chat_management"

    return-object p0

    :pswitch_f
    const-string p0, "voice_to_text"

    return-object p0

    :pswitch_10
    const-string p0, "animated_userpics"

    return-object p0

    :pswitch_11
    const-string p0, "profile_badge"

    return-object p0

    :pswitch_12
    const-string p0, "premium_stickers"

    return-object p0

    :pswitch_13
    const-string p0, "infinite_reactions"

    return-object p0

    :pswitch_14
    const-string p0, "no_ads"

    return-object p0

    :pswitch_15
    const-string p0, "faster_download"

    return-object p0

    :pswitch_16
    const-string p0, "more_upload"

    return-object p0

    :pswitch_17
    const-string p0, "double_limits"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
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
.end method

.method public static fillPremiumFeaturesList(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public static fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 732
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 733
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_0

    .line 736
    new-instance v9, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_premium_limits:I

    sget v11, Lorg/telegram/messenger/R$string;->PremiumPreviewLimits:I

    const-string v12, "PremiumPreviewLimits"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$string;->PremiumPreviewLimitsDescription:I

    new-array v13, v5, [Ljava/lang/Object;

    iget v14, v1, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    .line 737
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    iget v14, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    iget v14, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    iget v14, v1, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "PremiumPreviewLimitsDescription"

    .line 736
    invoke-static {v14, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v8, v10, v11, v12}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez p2, :cond_1

    .line 740
    new-instance v9, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v10, 0xe

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_filled_stories:I

    sget v12, Lorg/telegram/messenger/R$string;->PremiumPreviewStories:I

    const-string v13, "PremiumPreviewStories"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->PremiumPreviewStoriesDescription:I

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "PremiumPreviewStoriesDescription"

    invoke-static {v15, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 743
    new-instance v9, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_premium_uploads:I

    sget v11, Lorg/telegram/messenger/R$string;->PremiumPreviewUploads:I

    const-string v12, "PremiumPreviewUploads"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$string;->PremiumPreviewUploadsDescription:I

    const-string v13, "PremiumPreviewUploadsDescription"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v7, v10, v11, v12}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez p2, :cond_3

    .line 746
    new-instance v9, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_premium_speed:I

    sget v11, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeed:I

    const-string v12, "PremiumPreviewDownloadSpeed"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeedDescription:I

    const-string v13, "PremiumPreviewDownloadSpeedDescription"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v4, v10, v11, v12}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p2, :cond_4

    .line 749
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v9, 0x8

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_premium_voice:I

    sget v11, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToText:I

    const-string v12, "PremiumPreviewVoiceToText"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToTextDescription:I

    const-string v13, "PremiumPreviewVoiceToTextDescription"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v9, v10, v11, v12}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p2, :cond_5

    .line 752
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_premium_ads:I

    sget v10, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAds:I

    const-string v11, "PremiumPreviewNoAds"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAdsDescription:I

    const-string v12, "PremiumPreviewNoAdsDescription"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v3, v9, v10, v11}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez p2, :cond_6

    .line 755
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_reactions:I

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewReactions2:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->PremiumPreviewReactions2Description:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v6, v4, v9, v10}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_6
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_stickers:I

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewStickers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_7

    sget v9, Lorg/telegram/messenger/R$string;->premium_settings_animate_stickers:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_7
    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewStickersDescription:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-direct {v3, v5, v4, v6, v9}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_8

    .line 759
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v4, 0xb

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_premium_emoji:I

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewEmoji:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiDescription:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v4, v5, v6, v9}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez p2, :cond_9

    .line 762
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v4, 0x9

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_premium_tools:I

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagement:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagementDescription:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v4, v5, v6, v9}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_9
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/4 v4, 0x6

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_premium_badge:I

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileBadge:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_a

    if-nez v2, :cond_a

    sget v9, Lorg/telegram/messenger/R$string;->premium_settings_not_premium_show_badge:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_a
    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileBadgeDescription:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-direct {v3, v4, v5, v6, v9}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/4 v4, 0x7

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_premium_avatar:I

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewAnimatedProfiles:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_b

    if-nez v2, :cond_b

    sget v2, Lorg/telegram/messenger/R$string;->premium_settings_not_premium_animate_avatars:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_b
    sget v2, Lorg/telegram/messenger/R$string;->PremiumPreviewAnimatedProfilesDescription:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {v3, v4, v5, v6, v2}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_c

    .line 767
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v3, 0xa

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_icons:I

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIcon:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIconDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_c
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v3, 0xc

    sget v4, Lorg/telegram/messenger/R$drawable;->premium_status:I

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiStatus:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiStatusDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_d

    .line 771
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v3, 0xd

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_translate:I

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewTranslations:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewTranslationsDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez p2, :cond_e

    .line 774
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v3, 0x16

    sget v4, Lorg/telegram/messenger/R$drawable;->premium_wallpaper:I

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewWallpaper:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewWallpaperDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez p2, :cond_f

    .line 777
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v3, 0x17

    sget v4, Lorg/telegram/messenger/R$drawable;->premium_colors:I

    sget v5, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileColor:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileColorDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_f
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 780
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_11

    .line 781
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v3, v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_10

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v2, :cond_10

    .line 782
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :cond_10
    add-int/2addr v8, v7

    goto :goto_3

    .line 788
    :cond_11
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;
    .locals 0

    .line 995
    sget p0, Lorg/telegram/messenger/R$string;->Next:I

    const-string p1, "Next"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buyPremium$10(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8

    .line 909
    new-instance v7, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda5;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p0

    move v3, p1

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyPremium$3(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 2

    .line 912
    instance-of v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz v0, :cond_1

    .line 913
    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz p1, :cond_0

    .line 915
    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    .line 917
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->loadPremiumPromo(Z)V

    .line 919
    iget-object p1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 921
    :cond_1
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 923
    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    .line 925
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 927
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_3

    .line 929
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :catch_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$buyPremium$4(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V
    .locals 2

    .line 953
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p0, p2, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$buyPremium$5(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 948
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 951
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 953
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p4, p2}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$buyPremium$6(Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 963
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 964
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$buyPremium$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;)V
    .locals 7

    .line 976
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p0, :cond_0

    .line 977
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    .line 978
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    sget-object p1, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    .line 979
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    .line 980
    invoke-virtual {p3}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    .line 981
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p0

    .line 977
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Z)V

    goto :goto_0

    .line 984
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p5, p1, p6, p2}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private static synthetic lambda$buyPremium$8(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 975
    new-instance v8, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyPremium$9(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
    .locals 8

    .line 910
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_4

    .line 911
    new-instance p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const-string p2, "telegram_premium"

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 935
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_2

    .line 936
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 937
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 938
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;-><init>()V

    .line 939
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->receipt:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 940
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 941
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;-><init>()V

    .line 942
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->restore:Z

    if-eqz p4, :cond_1

    .line 944
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->upgrade:Z

    .line 946
    :cond_1
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 947
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda11;

    invoke-direct {p4, p1, p0, p2}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V

    const/16 p0, 0x42

    invoke-virtual {p3, p2, p4, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 962
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, p2, v1}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 968
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;-><init>()V

    .line 969
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;-><init>()V

    if-eqz p4, :cond_3

    .line 971
    iput-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->upgrade:Z

    .line 973
    :cond_3
    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 974
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda12;

    move-object v2, p3

    move-object v3, p1

    move-object v5, p5

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;)V

    invoke-virtual {p2, p0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 3

    .line 630
    instance-of p2, p1, Lorg/telegram/ui/PremiumFeatureCell;

    if-eqz p2, :cond_7

    .line 631
    check-cast p1, Lorg/telegram/ui/PremiumFeatureCell;

    .line 633
    iget-boolean p2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 634
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumFeatureCell;->isChecked()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/PremiumFeatureCell;->setChecked(ZZ)V

    .line 635
    iget-object p1, p1, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 636
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkCommonController;->setPremiumAnimateStickers(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    .line 638
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkCommonController;->setShowPremiumBadgeEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    .line 640
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkCommonController;->setPremiumAnimateAvatars(Z)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xc

    if-ne p1, p2, :cond_3

    .line 642
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkCommonController;->setShowPremiumStatusEnabled(Z)V

    .line 644
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    .line 645
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 646
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 647
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 651
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v1, p1, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p2, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowFeaturePreview(II)V

    .line 662
    iget p2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    if-ltz p2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p2, 0x0

    .line 663
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_7
    return-void
.end method

.method private synthetic lambda$createView$1()V
    .locals 2

    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadPremiumPromo(Z)V

    return-void
.end method

.method private static synthetic lambda$fillPremiumFeaturesList$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)I
    .locals 2

    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 790
    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    iget p2, p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$sentPremiumButtonClick$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$sentPremiumBuyCanceled$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$sentShowFeaturePreview$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$sentShowScreenStat$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateButtonText$11(Landroid/view/View;)V
    .locals 0

    .line 1708
    invoke-static {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private static synthetic lambda$updateButtonText$12(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateButtonText$13(Landroid/view/View;)V
    .locals 3

    .line 1718
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->transaction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1721
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    .line 1722
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BillingController;->getLastPremiumToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1723
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setReplaceProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    .line 1724
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const-string v2, "settings"

    .line 1726
    invoke-static {p0, p1, v2, v1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    return-void
.end method

.method private measureGradient(II)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1074
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1075
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    .line 1076
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1077
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iput v2, v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->yOffset:I

    .line 1078
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1081
    :cond_0
    iput v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->totalGradientHeight:I

    return-void
.end method

.method public static sentPremiumButtonClick()V
    .locals 4

    .line 1878
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1879
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1880
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v2, "premium.promo_screen_accept"

    .line 1881
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1882
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1883
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda13;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda13;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static sentPremiumBuyCanceled()V
    .locals 4

    .line 1891
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1892
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1893
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v2, "premium.promo_screen_fail"

    .line 1894
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1895
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1896
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda15;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static sentShowFeaturePreview(II)V
    .locals 5

    .line 1904
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1905
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1906
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v2, "premium.promo_screen_tap"

    .line 1907
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1908
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;-><init>()V

    .line 1909
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1910
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;-><init>()V

    .line 1911
    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1913
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_jsonString;-><init>()V

    .line 1914
    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    .line 1915
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    goto :goto_0

    .line 1917
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    :goto_0
    const-string p1, "item"

    .line 1919
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    .line 1920
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    sget-object p1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static sentShowScreenStat(Ljava/lang/String;)V
    .locals 6

    .line 1848
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 1849
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1850
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1851
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    int-to-double v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v3, "premium.promo_screen_show"

    .line 1852
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1853
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;-><init>()V

    .line 1854
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1856
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;-><init>()V

    if-eqz p0, :cond_0

    .line 1859
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_jsonString;-><init>()V

    .line 1860
    iput-object p0, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    goto :goto_0

    .line 1863
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    :goto_0
    const-string p0, "source"

    .line 1866
    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    .line 1867
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1869
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    sget-object p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda16;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static serverStringToFeatureType(Ljava/lang/String;)I
    .locals 24

    move-object/from16 v0, p0

    .line 237
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move/from16 v0, v23

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "app_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "stories__permanent_views_history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "advanced_chat_management"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "stories__links_and_formatting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "stories__priority_order"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "stories__stealth_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v4

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "stories__expiration_durations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v5

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "double_limits"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v6

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "premium_stickers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v7

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "faster_download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v8

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "profile_badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    move v0, v9

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "emoji_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move v0, v10

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "more_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    move v0, v11

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "no_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    move v0, v12

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "translations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    move v0, v13

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "animated_emoji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    move v0, v14

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "wallpapers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    move v0, v15

    goto :goto_1

    :sswitch_11
    const-string v1, "voice_to_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    move/from16 v0, v16

    goto :goto_1

    :sswitch_12
    const-string v1, "peer_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    move/from16 v0, v17

    goto :goto_1

    :sswitch_13
    const-string v1, "stories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    move/from16 v0, v18

    goto :goto_1

    :sswitch_14
    const-string v1, "stories__save_stories_to_gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move/from16 v0, v19

    goto :goto_1

    :sswitch_15
    const-string v1, "stories__caption"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    move/from16 v0, v20

    goto :goto_1

    :sswitch_16
    const-string v1, "infinite_reactions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    move/from16 v0, v21

    goto :goto_1

    :sswitch_17
    const-string v1, "animated_userpics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    move/from16 v0, v22

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v23

    :pswitch_0
    return v12

    :pswitch_1
    return v6

    :pswitch_2
    return v13

    :pswitch_3
    return v3

    :pswitch_4
    return v2

    :pswitch_5
    return v7

    :pswitch_6
    return v5

    :pswitch_7
    return v22

    :pswitch_8
    return v17

    :pswitch_9
    return v20

    :pswitch_a
    return v16

    :pswitch_b
    return v10

    :pswitch_c
    return v21

    :pswitch_d
    return v19

    :pswitch_e
    return v9

    :pswitch_f
    return v11

    :pswitch_10
    const/16 v0, 0x16

    return v0

    :pswitch_11
    return v14

    :pswitch_12
    const/16 v0, 0x17

    return v0

    :pswitch_13
    return v8

    :pswitch_14
    return v4

    :pswitch_15
    const/16 v0, 0x15

    return v0

    :pswitch_16
    return v18

    :pswitch_17
    return v15

    :sswitch_data_0
    .sparse-switch
        -0x7fe94270 -> :sswitch_17
        -0x7bfab901 -> :sswitch_16
        -0x789040ed -> :sswitch_15
        -0x726b2dd7 -> :sswitch_14
        -0x704f9fad -> :sswitch_13
        -0x6903a913 -> :sswitch_12
        -0x68a3059c -> :sswitch_11
        -0x5b244d4f -> :sswitch_10
        -0x54f1f956 -> :sswitch_f
        -0x490b9c1e -> :sswitch_e
        -0x3e0212ce -> :sswitch_d
        -0x3d03a9d5 -> :sswitch_c
        -0x39c26df5 -> :sswitch_b
        -0x2b901a73 -> :sswitch_a
        -0x1ac08a02 -> :sswitch_9
        -0x9d64c42 -> :sswitch_8
        -0x5bc0fba -> :sswitch_7
        0xdfdc7c2 -> :sswitch_6
        0x1726c352 -> :sswitch_5
        0x2a06b726 -> :sswitch_4
        0x405f9806 -> :sswitch_3
        0x48b56d6d -> :sswitch_2
        0x55c4e11f -> :sswitch_1
        0x6d3e537c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
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
.end method

.method private setSettingsMode(Z)V
    .locals 2

    .line 138
    iput-boolean p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateSettingsItemVisibility()V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updateText()V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-boolean v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V

    .line 143
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateRows()V

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->measureGradient(II)V

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateBackgroundImage()V
    .locals 9

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 811
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTextureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateButtonText(Z)V
    .locals 5

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 1704
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    .line 1707
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-eqz v0, :cond_2

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-static {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;->getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    return-void

    .line 1711
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->access$2800(Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1712
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 1713
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setFlickerDisabled(Z)V

    return-void

    .line 1716
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-static {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;->getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 1728
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setFlickerDisabled(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateColors()V
    .locals 5

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1776
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v4, 0x3c

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    if-eqz v0, :cond_1

    .line 1780
    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1781
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$1500(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-eqz v0, :cond_1

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 1786
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateBackgroundImage()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDialogVisibility(Z)V
    .locals 1

    .line 1829
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isDialogVisible:Z

    if-eq p1, v0, :cond_1

    .line 1830
    iput-boolean p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isDialogVisible:Z

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 1834
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    .line 1835
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, 0x0

    .line 1085
    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    const/4 v1, -0x1

    .line 1086
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->sectionRow:I

    .line 1087
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->privacyRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1089
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->paddingRow:I

    .line 1090
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->featuresStartRow:I

    .line 1091
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    .line 1092
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->featuresEndRow:I

    .line 1094
    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1095
    iput v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusRow:I

    .line 1096
    :cond_0
    iget v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->lastPaddingRow:I

    .line 1098
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v4}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1100
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1102
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-eqz v2, :cond_4

    .line 1103
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    goto :goto_2

    .line 1105
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    iget v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    add-int/2addr v2, v1

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    .line 1106
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMinimumLastViewHeight(I)V

    return-void
.end method

.method private updateSettingsItemVisibility()V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->touched:Z

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

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 373
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 374
    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v3, 0x5

    new-array v8, v3, [I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    .line 377
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v12, 0x0

    aput v4, v8, v12

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    .line 378
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    aput v4, v8, v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    .line 379
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v8, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    .line 380
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v8, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient0:I

    .line 381
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v5, 0x4

    aput v4, v8, v5

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shader:Landroid/graphics/Shader;

    .line 386
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 387
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    new-instance v3, Lorg/telegram/ui/PremiumFeatureCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PremiumFeatureCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    .line 390
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 392
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3, v4}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;I)V

    .line 395
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 398
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 400
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 401
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    iput v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    .line 404
    :cond_1
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment$1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    .line 574
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 576
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$2;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/PremiumPreviewFragment$2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 584
    new-instance v3, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/16 v5, 0x44

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    add-int/2addr v7, v8

    const/16 v8, 0x10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v1, v7, v8}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 587
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7}, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/PremiumPreviewFragment$1;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 588
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PremiumPreviewFragment$3;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 618
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment$4;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    .line 624
    new-instance v3, Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    .line 625
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    .line 626
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 666
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 668
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v3, v1, v12, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 669
    invoke-direct {v0, v12}, Lorg/telegram/ui/PremiumPreviewFragment;->updateButtonText(Z)V

    .line 670
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    .line 672
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    .line 673
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 674
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    invoke-static {v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 676
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 678
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v13, -0x1

    const/16 v14, 0x30

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 680
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x50

    invoke-static {v8, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 683
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 685
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 686
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PremiumPreviewFragment$5;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 702
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setForceSkipTouches(Z)V

    .line 704
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->SETTINGS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_settings_filled:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 705
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateSettingsItemVisibility()V

    .line 706
    sget-object v1, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenBuyTelegramPremiumScreen;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenBuyTelegramPremiumScreen;

    invoke-static {v1}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 709
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateColors()V

    .line 710
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateRows()V

    .line 712
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    const/16 v2, -0xb4

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startEnterAnimation(IJ)V

    .line 713
    iget-boolean v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    if-eqz v1, :cond_2

    .line 714
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 716
    :cond_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    .line 718
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->source:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowScreenStat(Ljava/lang/String;)V

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3ea3d70a    # 0.32f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1144
    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 1145
    invoke-direct {p0, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->updateButtonText(Z)V

    .line 1146
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updatePremiumTiers()V

    .line 1148
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    if-ne p1, p2, :cond_3

    .line 1149
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updateText()V

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updatePremiumTiers()V

    .line 1151
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateRows()V

    .line 1152
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 1765
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    const/16 v3, 0x8

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartGradient1:I

    const/16 v3, 0x9

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartGradient2:I

    const/16 v3, 0xa

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor:I

    const/16 v3, 0xb

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    const/16 v3, 0xc

    aput v2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1791
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1792
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->closeSetting()V

    return v1

    .line 1796
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-eqz v0, :cond_1

    .line 1797
    invoke-direct {p0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->setSettingsMode(Z)V

    return v1

    .line 1801
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 1824
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    .line 1825
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->updateDialogVisibility(Z)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 6

    .line 1116
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1119
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1120
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1123
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1125
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v2, v4, v5, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1129
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 1134
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1136
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1137
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1749
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1750
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 1753
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    if-eqz v0, :cond_1

    .line 1754
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1739
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 1744
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method public setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;
    .locals 1

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    return-object p0
.end method

.method public setSelectAnnualByDefault()Lorg/telegram/ui/PremiumPreviewFragment;
    .locals 1

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectAnnualByDefault:Z

    return-object p0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    .line 1817
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1818
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateDialogVisibility(Z)V

    return-object p1
.end method
