.class public final Lcom/smedialink/ui/shop/configuration/BillingConfiguration;
.super Lorg/solovyev/android/checkout/Billing$DefaultConfiguration;
.source "BillingConfiguration.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/solovyev/android/checkout/Billing$DefaultConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjNETw+rBz7l/9U7vTAyf98JT/6OMwFDHaIP3zUJtEahsZ4mjvJ3E/zhb/ji94hqaiHYpQ6ubLBT0uqgydidKHCucP4bLFVcV+SM5tGJR6ZmF8yUjm6VN/5DyePuiSQCMerNOoIocMecZmH6/WCAj+dr5jLgO4V2K/FfAYMhNBh0NBY30O67Md2XiSIujS/bAg8cBaMUk3/nlbUePWn/GZRotDjMQ6cS0pFfm7v7gpAHZve8u2b4AQ7GJKcNtqteSfJ4PwxenlIZgwumyQO7XfFY5RdMHFWQFtCJV5LTHmmRmaqrHo9qfvjrw5MdAEsSsi1TAIpAEhQnYHHdnsxN91QIDAQAB"

    return-object v0
.end method

.method public getPurchaseVerifier()Lorg/solovyev/android/checkout/PurchaseVerifier;
    .locals 2

    .line 14
    invoke-super {p0}, Lorg/solovyev/android/checkout/Billing$DefaultConfiguration;->getPurchaseVerifier()Lorg/solovyev/android/checkout/PurchaseVerifier;

    move-result-object v0

    const-string v1, "super.getPurchaseVerifier()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
