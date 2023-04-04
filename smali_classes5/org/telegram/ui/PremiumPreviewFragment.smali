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

    .line 293
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 177
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->matrix:Landroid/graphics/Matrix;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientPaint:Landroid/graphics/Paint;

    .line 211
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTextureBitmap:Landroid/graphics/Bitmap;

    .line 212
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    .line 213
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const-string v2, "premiumGradientBackground1"

    const-string v3, "premiumGradientBackground2"

    const-string v4, "premiumGradientBackground3"

    const-string v5, "premiumGradientBackground4"

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 298
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const-string v2, "premiumGradient1"

    const-string v3, "premiumGradient2"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->tiersGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 299
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    const/4 v1, 0x0

    .line 300
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    .line 301
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    .line 302
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 303
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    .line 304
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cx:F

    .line 305
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cy:F

    .line 294
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->source:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PremiumPreviewFragment;)I
    .locals 0

    .line 105
    iget p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->firstViewHeight:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/PremiumPreviewFragment;I)I
    .locals 0

    .line 105
    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->firstViewHeight:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->checkButtonDivider()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PremiumPreviewFragment;Z)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->setSettingsMode(Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectAnnualByDefault:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PremiumPreviewFragment;Z)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->updateButtonText(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PremiumPreviewFragment;)I
    .locals 0

    .line 105
    iget p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PremiumPreviewFragment;I)I
    .locals 0

    .line 105
    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateBackgroundImage()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PremiumPreviewFragment;II)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->measureGradient(II)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PremiumPreviewFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isDialogVisible:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I
    .locals 0

    .line 105
    iget p0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentYOffset:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PremiumPreviewFragment;I)I
    .locals 0

    .line 105
    iput p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentYOffset:I

    return p1
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string v0, "settings"

    .line 670
    invoke-static {p0, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 745
    invoke-static {p0, v0, p1, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;Z)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 753
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;Z)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 757
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    return-void
.end method

.method public static buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V
    .locals 3

    .line 761
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-eqz v0, :cond_0

    .line 762
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumNotAvailableBottomSheet;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/PremiumNotAvailableBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 769
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 770
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->period_options:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    .line 771
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    if-ne v2, v0, :cond_1

    .line 772
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-direct {p1, v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;)V

    :cond_2
    move p3, v0

    .line 779
    :cond_3
    invoke-static {}, Lorg/telegram/ui/PremiumPreviewFragment;->sentPremiumButtonClick()V

    .line 781
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 782
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 783
    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_8

    .line 784
    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    .line 786
    iget-object p3, p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    if-nez p3, :cond_5

    .line 787
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->premiumBotUsername:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, "android.intent.action.VIEW"

    if-nez p1, :cond_4

    .line 788
    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumBot(Z)V

    .line 789
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

    goto :goto_0

    .line 790
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->premiumInvoiceSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 791
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

    goto :goto_0

    .line 794
    :cond_5
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 795
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string p3, "t.me"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 796
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/$"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p2, "/invoice/"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 797
    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumBot(Z)V

    .line 800
    :cond_6
    iget-object p0, p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void

    .line 806
    :cond_8
    sget-object p2, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-nez p2, :cond_9

    return-void

    .line 810
    :cond_9
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p2

    .line 811
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    return-void

    .line 815
    :cond_a
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getGooglePlayProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p2

    if-nez p2, :cond_b

    .line 816
    sget-object p2, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V

    .line 819
    :cond_b
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p2

    if-nez p2, :cond_c

    return-void

    .line 824
    :cond_c
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

    .line 741
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

    .line 1689
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
    const-string p0, "translations"

    return-object p0

    :pswitch_1
    const-string p0, "emoji_status"

    return-object p0

    :pswitch_2
    const-string p0, "animated_emoji"

    return-object p0

    :pswitch_3
    const-string p0, "app_icons"

    return-object p0

    :pswitch_4
    const-string p0, "advanced_chat_management"

    return-object p0

    :pswitch_5
    const-string p0, "voice_to_text"

    return-object p0

    :pswitch_6
    const-string p0, "animated_userpics"

    return-object p0

    :pswitch_7
    const-string p0, "profile_badge"

    return-object p0

    :pswitch_8
    const-string p0, "premium_stickers"

    return-object p0

    :pswitch_9
    const-string p0, "infinite_reactions"

    return-object p0

    :pswitch_a
    const-string p0, "no_ads"

    return-object p0

    :pswitch_b
    const-string p0, "faster_download"

    return-object p0

    :pswitch_c
    const-string p0, "more_upload"

    return-object p0

    :pswitch_d
    const-string p0, "double_limits"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 117
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public static fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;",
            ">;IZ)V"
        }
    .end annotation

    .line 674
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 675
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    .line 678
    new-instance v7, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_premium_limits:I

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewLimits:I

    const-string v10, "PremiumPreviewLimits"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->PremiumPreviewLimitsDescription:I

    new-array v11, v3, [Ljava/lang/Object;

    iget v12, v0, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    .line 679
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    iget v12, v0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    iget v12, v0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    iget v12, v0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    const-string v12, "PremiumPreviewLimitsDescription"

    .line 678
    invoke-static {v12, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v6, v8, v9, v10}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez p2, :cond_1

    .line 682
    new-instance v7, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_premium_uploads:I

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewUploads:I

    const-string v10, "PremiumPreviewUploads"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->PremiumPreviewUploadsDescription:I

    const-string v11, "PremiumPreviewUploadsDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v8, v9, v10}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 685
    new-instance v7, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_premium_speed:I

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeed:I

    const-string v10, "PremiumPreviewDownloadSpeed"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeedDescription:I

    const-string v11, "PremiumPreviewDownloadSpeedDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez p2, :cond_3

    .line 688
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v7, 0x8

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_premium_voice:I

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToText:I

    const-string v10, "PremiumPreviewVoiceToText"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToTextDescription:I

    const-string v11, "PremiumPreviewVoiceToTextDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v7, v8, v9, v10}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p2, :cond_4

    .line 691
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_premium_ads:I

    sget v8, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAds:I

    const-string v9, "PremiumPreviewNoAds"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAdsDescription:I

    const-string v10, "PremiumPreviewNoAdsDescription"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v1, v7, v8, v9}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p2, :cond_5

    .line 694
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_reactions:I

    sget v7, Lorg/telegram/messenger/R$string;->PremiumPreviewReactions2:I

    const-string v8, "PremiumPreviewReactions2"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->PremiumPreviewReactions2Description:I

    const-string v9, "PremiumPreviewReactions2Description"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v4, v2, v7, v8}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_5
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_stickers:I

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewStickers:I

    const-string v7, "PremiumPreviewStickers"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_6

    sget v7, Lorg/telegram/messenger/R$string;->premium_settings_animate_stickers:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->PremiumPreviewStickersDescription:I

    const-string v8, "PremiumPreviewStickersDescription"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-direct {v1, v3, v2, v4, v7}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_7

    .line 698
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v2, 0xb

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_premium_emoji:I

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewEmoji:I

    const-string v7, "PremiumPreviewEmoji"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiDescription:I

    const-string v8, "PremiumPreviewEmojiDescription"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v3, v4, v7}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez p2, :cond_8

    .line 701
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v2, 0x9

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_premium_tools:I

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagement:I

    const-string v7, "PremiumPreviewAdvancedChatManagement"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagementDescription:I

    const-string v8, "PremiumPreviewAdvancedChatManagementDescription"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v3, v4, v7}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_8
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/4 v2, 0x6

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_premium_badge:I

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileBadge:I

    const-string v7, "PremiumPreviewProfileBadge"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_9

    if-nez p1, :cond_9

    sget v7, Lorg/telegram/messenger/R$string;->premium_settings_not_premium_show_badge:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_9
    sget v7, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileBadgeDescription:I

    const-string v8, "PremiumPreviewProfileBadgeDescription"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-direct {v1, v2, v3, v4, v7}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/4 v2, 0x7

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_premium_avatar:I

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewAnimatedProfiles:I

    const-string v7, "PremiumPreviewAnimatedProfiles"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    sget p1, Lorg/telegram/messenger/R$string;->premium_settings_not_premium_animate_avatars:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    sget p1, Lorg/telegram/messenger/R$string;->PremiumPreviewAnimatedProfilesDescription:I

    const-string v7, "PremiumPreviewAnimatedProfilesDescription"

    invoke-static {v7, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-direct {v1, v2, v3, v4, p1}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_b

    .line 706
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v1, 0xa

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_icons:I

    sget v3, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIcon:I

    const-string v4, "PremiumPreviewAppIcon"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIconDescription:I

    const-string v7, "PremiumPreviewAppIconDescription"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_b
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 v1, 0xc

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_status:I

    sget v3, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiStatus:I

    const-string v4, "PremiumPreviewEmojiStatus"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiStatusDescription:I

    const-string v7, "PremiumPreviewEmojiStatusDescription"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_c

    .line 710
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    const/16 p2, 0xd

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_premium_translate:I

    sget v2, Lorg/telegram/messenger/R$string;->PremiumPreviewTranslations:I

    const-string v3, "PremiumPreviewTranslations"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->PremiumPreviewTranslationsDescription:I

    const-string v4, "PremiumPreviewTranslationsDescription"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p2, v1, v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_c
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 713
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v6, p1, :cond_e

    .line 714
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p2, p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 715
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_d
    add-int/2addr v6, v5

    goto :goto_3

    .line 721
    :cond_e
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;
    .locals 0

    .line 910
    sget p0, Lorg/telegram/messenger/R$string;->Next:I

    const-string p1, "Next"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buyPremium$10(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8

    .line 824
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

    .line 827
    instance-of v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz v0, :cond_1

    .line 828
    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz p1, :cond_0

    .line 830
    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    .line 832
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->loadPremiumPromo(Z)V

    .line 834
    iget-object p1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 836
    :cond_1
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 838
    invoke-virtual {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;

    .line 840
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 842
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_3

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
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

    .line 868
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p0, p2, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$buyPremium$5(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 863
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 866
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 868
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p4, p2}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$buyPremium$6(Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 878
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 879
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$buyPremium$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;)V
    .locals 7

    .line 891
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p0, :cond_0

    .line 892
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    .line 893
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    sget-object p1, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    .line 895
    invoke-virtual {p3}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    .line 896
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p0

    .line 892
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Z)V

    goto :goto_0

    .line 899
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

    .line 890
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

    .line 825
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_4

    .line 826
    new-instance p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const-string p2, "telegram_premium"

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 850
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_2

    .line 851
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 852
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;-><init>()V

    .line 854
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->receipt:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 855
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 856
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;-><init>()V

    .line 857
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->restore:Z

    if-eqz p4, :cond_1

    .line 859
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->upgrade:Z

    .line 861
    :cond_1
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 862
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda11;

    invoke-direct {p4, p1, p0, p2}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;)V

    const/16 p0, 0x42

    invoke-virtual {p3, p2, p4, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 877
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, p2, v1}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 883
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;-><init>()V

    .line 884
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;-><init>()V

    if-eqz p4, :cond_3

    .line 886
    iput-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->upgrade:Z

    .line 888
    :cond_3
    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchasePremium;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 889
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

    .line 573
    instance-of p2, p1, Lorg/telegram/ui/PremiumFeatureCell;

    if-eqz p2, :cond_7

    .line 574
    check-cast p1, Lorg/telegram/ui/PremiumFeatureCell;

    .line 576
    iget-boolean p2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 577
    invoke-virtual {p1}, Lorg/telegram/ui/PremiumFeatureCell;->isChecked()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/PremiumFeatureCell;->setChecked(ZZ)V

    .line 578
    iget-object p1, p1, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 579
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

    .line 581
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

    .line 583
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

    .line 585
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ForkCommonController;->setShowPremiumStatusEnabled(Z)V

    .line 587
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    .line 588
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 590
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

    .line 594
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v1, p1, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p2, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowFeaturePreview(II)V

    .line 605
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

    .line 606
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

    .line 656
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadPremiumPromo(Z)V

    return-void
.end method

.method private static synthetic lambda$fillPremiumFeaturesList$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)I
    .locals 2

    .line 722
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 723
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

    .line 1600
    invoke-static {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private static synthetic lambda$updateButtonText$12(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateButtonText$13(Landroid/view/View;)V
    .locals 3

    .line 1610
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->transaction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1613
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    .line 1614
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BillingController;->getLastPremiumToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1615
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setReplaceProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    .line 1616
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const-string v2, "settings"

    .line 1618
    invoke-static {p0, p1, v2, v1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;ZLcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    return-void
.end method

.method private measureGradient(II)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 966
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 967
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    .line 968
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 969
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iput v2, v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->yOffset:I

    .line 970
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    :cond_0
    iput v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->totalGradientHeight:I

    return-void
.end method

.method public static sentPremiumButtonClick()V
    .locals 4

    .line 1760
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1761
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1762
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v2, "premium.promo_screen_accept"

    .line 1763
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1764
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1765
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda13;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda13;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static sentPremiumBuyCanceled()V
    .locals 4

    .line 1773
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1774
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1775
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v2, "premium.promo_screen_fail"

    .line 1776
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1777
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1778
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda15;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static sentShowFeaturePreview(II)V
    .locals 5

    .line 1786
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1787
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1788
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v2, "premium.promo_screen_tap"

    .line 1789
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1790
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;-><init>()V

    .line 1791
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1792
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;-><init>()V

    .line 1793
    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1795
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_jsonString;-><init>()V

    .line 1796
    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    .line 1797
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    goto :goto_0

    .line 1799
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    :goto_0
    const-string p1, "item"

    .line 1801
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    .line 1802
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    sget-object p1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static sentShowScreenStat(Ljava/lang/String;)V
    .locals 6

    .line 1730
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    .line 1731
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 1732
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 1733
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    int-to-double v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v3, "premium.promo_screen_show"

    .line 1734
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 1735
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;-><init>()V

    .line 1736
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1738
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;-><init>()V

    if-eqz p0, :cond_0

    .line 1741
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_jsonString;-><init>()V

    .line 1742
    iput-object p0, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    goto :goto_0

    .line 1745
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    :goto_0
    const-string p0, "source"

    .line 1748
    iput-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    .line 1749
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 1751
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    sget-object p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda16;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static serverStringToFeatureType(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    .line 220
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move/from16 v0, v16

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "app_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "advanced_chat_management"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "double_limits"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "premium_stickers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v5

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "faster_download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v6

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "profile_badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "emoji_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v8

    goto :goto_1

    :sswitch_7
    const-string v1, "more_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v9

    goto :goto_1

    :sswitch_8
    const-string v1, "no_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v10

    goto :goto_1

    :sswitch_9
    const-string v1, "translations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v11

    goto :goto_1

    :sswitch_a
    const-string v1, "animated_emoji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    move v0, v12

    goto :goto_1

    :sswitch_b
    const-string v1, "voice_to_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move v0, v13

    goto :goto_1

    :sswitch_c
    const-string v1, "infinite_reactions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    move v0, v14

    goto :goto_1

    :sswitch_d
    const-string v1, "animated_userpics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    move v0, v15

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v16

    :pswitch_0
    return v5

    :pswitch_1
    return v6

    :pswitch_2
    return v15

    :pswitch_3
    return v10

    :pswitch_4
    return v13

    :pswitch_5
    return v9

    :pswitch_6
    return v3

    :pswitch_7
    return v14

    :pswitch_8
    return v12

    :pswitch_9
    return v2

    :pswitch_a
    return v4

    :pswitch_b
    return v7

    :pswitch_c
    return v11

    :pswitch_d
    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fe94270 -> :sswitch_d
        -0x7bfab901 -> :sswitch_c
        -0x68a3059c -> :sswitch_b
        -0x54f1f956 -> :sswitch_a
        -0x490b9c1e -> :sswitch_9
        -0x3e0212ce -> :sswitch_8
        -0x3d03a9d5 -> :sswitch_7
        -0x39c26df5 -> :sswitch_6
        -0x2b901a73 -> :sswitch_5
        -0x1ac08a02 -> :sswitch_4
        -0x9d64c42 -> :sswitch_3
        -0x5bc0fba -> :sswitch_2
        0x48b56d6d -> :sswitch_1
        0x6d3e537c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateSettingsItemVisibility()V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updateText()V

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-boolean v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateRows()V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->measureGradient(II)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateBackgroundImage()V
    .locals 9

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 732
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

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 734
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

    .line 735
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

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 737
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

    .line 1593
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

    .line 1596
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    .line 1599
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-eqz v0, :cond_2

    .line 1600
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

    .line 1603
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

    .line 1604
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setFlickerDisabled(Z)V

    return-void

    .line 1608
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1609
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

    .line 1620
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setFlickerDisabled(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateColors()V
    .locals 5

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "premiumGradientBackgroundOverlay"

    .line 1662
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x3c

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1664
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1665
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$1500(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1666
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 1670
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateBackgroundImage()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDialogVisibility(Z)V
    .locals 1

    .line 1713
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isDialogVisible:Z

    if-eq p1, v0, :cond_0

    .line 1714
    iput-boolean p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isDialogVisible:Z

    .line 1715
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, 0x0

    .line 977
    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    const/4 v1, -0x1

    .line 978
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->sectionRow:I

    .line 979
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->privacyRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 981
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->paddingRow:I

    .line 982
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->featuresStartRow:I

    .line 983
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    .line 984
    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->featuresEndRow:I

    .line 986
    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 987
    iput v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusRow:I

    .line 988
    :cond_0
    iget v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PremiumPreviewFragment;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->lastPaddingRow:I

    .line 990
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

    .line 992
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

    .line 994
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-eqz v2, :cond_4

    .line 995
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    goto :goto_2

    .line 997
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    iget v2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    add-int/2addr v2, v1

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    .line 998
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMinimumLastViewHeight(I)V

    return-void
.end method

.method private updateSettingsItemVisibility()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 128
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

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->touched:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 316
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 317
    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v3, 0x5

    new-array v8, v3, [I

    const-string v4, "premiumGradient4"

    .line 320
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v12, 0x0

    aput v4, v8, v12

    const-string v4, "premiumGradient3"

    .line 321
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v8, v2

    const-string v4, "premiumGradient2"

    .line 322
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v8, v5

    const-string v4, "premiumGradient1"

    .line 323
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v8, v5

    const-string v4, "premiumGradient0"

    .line 324
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

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

    .line 329
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 330
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->gradientPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 332
    new-instance v3, Lorg/telegram/ui/PremiumFeatureCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PremiumFeatureCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    .line 333
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 335
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumFeatures:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3, v4}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;I)V

    .line 338
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "dialogBackground"

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 341
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 343
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 344
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    iput v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->statusBarHeight:I

    .line 347
    :cond_1
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment$1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    .line 517
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 519
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$2;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/PremiumPreviewFragment$2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 527
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

    .line 530
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7}, Lorg/telegram/ui/PremiumPreviewFragment$Adapter;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/PremiumPreviewFragment$1;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 531
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PremiumPreviewFragment$3;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 561
    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment$4;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    .line 567
    new-instance v3, Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    .line 568
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    .line 569
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 609
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 611
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-direct {v3, v1, v12}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 612
    invoke-direct {v0, v12}, Lorg/telegram/ui/PremiumPreviewFragment;->updateButtonText(Z)V

    .line 613
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    .line 615
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    const-string v1, "divider"

    .line 616
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    invoke-static {v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 619
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonDivider:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 621
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

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 623
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x50

    invoke-static {v8, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->contentView:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 626
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 628
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 629
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PremiumPreviewFragment$5;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 645
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setForceSkipTouches(Z)V

    .line 647
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->SETTINGS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_settings_filled:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 648
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateSettingsItemVisibility()V

    .line 651
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateColors()V

    .line 652
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateRows()V

    .line 654
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    const/16 v2, -0xb4

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startEnterAnimation(IJ)V

    .line 655
    iget-boolean v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    if-eqz v1, :cond_2

    .line 656
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 658
    :cond_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    .line 660
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->source:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowScreenStat(Ljava/lang/String;)V

    .line 661
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1

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

    .line 1036
    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 1037
    invoke-direct {p0, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->updateButtonText(Z)V

    .line 1038
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updatePremiumTiers()V

    .line 1040
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    if-ne p1, p2, :cond_3

    .line 1041
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updateText()V

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updatePremiumTiers()V

    .line 1043
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateRows()V

    .line 1044
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 1651
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;)V

    const-string v1, "premiumGradient1"

    const-string v2, "premiumGradient2"

    const-string v3, "premiumGradient3"

    const-string v4, "premiumGradient4"

    const-string v5, "premiumGradientBackground1"

    const-string v6, "premiumGradientBackground2"

    const-string v7, "premiumGradientBackground3"

    const-string v8, "premiumGradientBackground4"

    const-string v9, "premiumGradientBackgroundOverlay"

    const-string v10, "premiumStarGradient1"

    const-string v11, "premiumStarGradient2"

    const-string v12, "premiumStartSmallStarsColor"

    const-string v13, "premiumStartSmallStarsColor2"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->settingsView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1676
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment;->closeSetting()V

    return v1

    .line 1680
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->isSettingsMode:Z

    if-eqz v0, :cond_1

    .line 1681
    invoke-direct {p0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->setSettingsMode(Z)V

    return v1

    .line 1685
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 1708
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    .line 1709
    invoke-direct {p0, p1}, Lorg/telegram/ui/PremiumPreviewFragment;->updateDialogVisibility(Z)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 6

    .line 1008
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1011
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1012
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1013
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1015
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1016
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

    .line 1017
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

    .line 1021
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 1026
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1028
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1029
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1030
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1639
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1631
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method public setForcePremium()Lorg/telegram/ui/PremiumPreviewFragment;
    .locals 1

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->forcePremium:Z

    return-object p0
.end method

.method public setSelectAnnualByDefault()Lorg/telegram/ui/PremiumPreviewFragment;
    .locals 1

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment;->selectAnnualByDefault:Z

    return-object p0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    .line 1701
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1702
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->updateDialogVisibility(Z)V

    return-object p1
.end method
