.class public final Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;
.super Ljava/lang/Object;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PremiumPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionTier"
.end annotation


# instance fields
.field private discount:I

.field private googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

.field private offerDetails:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

.field private pricePerMonth:J

.field private pricePerYear:J

.field private pricePerYearRegular:J

.field public final subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

.field public yOffset:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;)V
    .locals 0

    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1941
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    .line 1928
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object p0
.end method

.method private checkOfferDetails()V
    .locals 7

    .line 2057
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_0

    return-void

    .line 2061
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->offerDetails:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-nez v1, :cond_3

    .line 2062
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 2063
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v2

    .line 2064
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    const-string v3, "P1Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "P%dM"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2065
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->offerDetails:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    :cond_3
    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 2

    .line 2046
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2049
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    .line 2052
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->checkOfferDetails()V

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->offerDetails:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 2047
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()I
    .locals 6

    .line 1966
    iget v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->discount:I

    if-nez v0, :cond_1

    .line 1967
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1971
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYearRegular:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1972
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYearRegular:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->discount:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 1975
    iput v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->discount:I

    .line 1979
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->discount:I

    return v0
.end method

.method public getFormattedPricePerMonth()Ljava/lang/String;
    .locals 5

    .line 2019
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2023
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerMonth()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getCurrency()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2020
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerMonth()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPricePerYear()Ljava/lang/String;
    .locals 5

    .line 2011
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2015
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getCurrency()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2012
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPricePerYearRegular()Ljava/lang/String;
    .locals 5

    .line 2003
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2007
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYearRegular:J

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getCurrency()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2004
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYearRegular:J

    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGooglePlayProductDetails()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method

.method public getMonths()I
    .locals 1

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    return v0
.end method

.method public getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
    .locals 1

    .line 1949
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->checkOfferDetails()V

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->offerDetails:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    return-object v0
.end method

.method public getPrice()J
    .locals 3

    .line 2035
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2038
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    return-wide v1

    .line 2041
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->checkOfferDetails()V

    .line 2042
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->offerDetails:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 2036
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->amount:J

    return-wide v0
.end method

.method public getPricePerMonth()J
    .locals 4

    .line 1993
    iget-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerMonth:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1994
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPrice()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1996
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerMonth:J

    .line 1999
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerMonth:J

    return-wide v0
.end method

.method public getPricePerYear()J
    .locals 4

    .line 1983
    iget-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYear:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPrice()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    long-to-double v0, v0

    .line 1986
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYear:J

    .line 1989
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYear:J

    return-wide v0
.end method

.method public setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 1954
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method

.method public setPricePerYearRegular(J)V
    .locals 0

    .line 1958
    iput-wide p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->pricePerYearRegular:J

    return-void
.end method
