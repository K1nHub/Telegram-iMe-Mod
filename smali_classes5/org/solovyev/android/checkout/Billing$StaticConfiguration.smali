.class final Lorg/solovyev/android/checkout/Billing$StaticConfiguration;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Billing$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticConfiguration"
.end annotation


# instance fields
.field private final mOriginal:Lorg/solovyev/android/checkout/Billing$Configuration;

.field private final mPublicKey:Ljava/lang/String;

.field private mPurchaseVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/Billing$Configuration;)V
    .locals 1

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mOriginal:Lorg/solovyev/android/checkout/Billing$Configuration;

    .line 761
    invoke-interface {p1}, Lorg/solovyev/android/checkout/Billing$Configuration;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mPublicKey:Ljava/lang/String;

    .line 762
    invoke-interface {p1}, Lorg/solovyev/android/checkout/Billing$Configuration;->getPurchaseVerifier()Lorg/solovyev/android/checkout/PurchaseVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mPurchaseVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/Billing$Configuration;Lorg/solovyev/android/checkout/Billing$1;)V
    .locals 0

    .line 751
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;-><init>(Lorg/solovyev/android/checkout/Billing$Configuration;)V

    return-void
.end method


# virtual methods
.method public getCache()Lorg/solovyev/android/checkout/Cache;
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mOriginal:Lorg/solovyev/android/checkout/Billing$Configuration;

    invoke-interface {v0}, Lorg/solovyev/android/checkout/Billing$Configuration;->getCache()Lorg/solovyev/android/checkout/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackInventory(Lorg/solovyev/android/checkout/Checkout;Ljava/util/concurrent/Executor;)Lorg/solovyev/android/checkout/Inventory;
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mOriginal:Lorg/solovyev/android/checkout/Billing$Configuration;

    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/Billing$Configuration;->getFallbackInventory(Lorg/solovyev/android/checkout/Checkout;Ljava/util/concurrent/Executor;)Lorg/solovyev/android/checkout/Inventory;

    move-result-object p1

    return-object p1
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseVerifier()Lorg/solovyev/android/checkout/PurchaseVerifier;
    .locals 1

    .line 780
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mPurchaseVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    return-object v0
.end method

.method public isAutoConnect()Z
    .locals 1

    .line 795
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$StaticConfiguration;->mOriginal:Lorg/solovyev/android/checkout/Billing$Configuration;

    invoke-interface {v0}, Lorg/solovyev/android/checkout/Billing$Configuration;->isAutoConnect()Z

    move-result v0

    return v0
.end method
