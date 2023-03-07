package com.smedialink.p031ui.shop.configuration;

import kotlin.jvm.internal.Intrinsics;
import org.solovyev.android.checkout.Billing;
import org.solovyev.android.checkout.PurchaseVerifier;
/* compiled from: BillingConfiguration.kt */
/* renamed from: com.smedialink.ui.shop.configuration.BillingConfiguration */
/* loaded from: classes3.dex */
public final class BillingConfiguration extends Billing.DefaultConfiguration {
    @Override // org.solovyev.android.checkout.Billing.Configuration
    public String getPublicKey() {
        return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjNETw+rBz7l/9U7vTAyf98JT/6OMwFDHaIP3zUJtEahsZ4mjvJ3E/zhb/ji94hqaiHYpQ6ubLBT0uqgydidKHCucP4bLFVcV+SM5tGJR6ZmF8yUjm6VN/5DyePuiSQCMerNOoIocMecZmH6/WCAj+dr5jLgO4V2K/FfAYMhNBh0NBY30O67Md2XiSIujS/bAg8cBaMUk3/nlbUePWn/GZRotDjMQ6cS0pFfm7v7gpAHZve8u2b4AQ7GJKcNtqteSfJ4PwxenlIZgwumyQO7XfFY5RdMHFWQFtCJV5LTHmmRmaqrHo9qfvjrw5MdAEsSsi1TAIpAEhQnYHHdnsxN91QIDAQAB";
    }

    @Override // org.solovyev.android.checkout.Billing.DefaultConfiguration, org.solovyev.android.checkout.Billing.Configuration
    public PurchaseVerifier getPurchaseVerifier() {
        PurchaseVerifier purchaseVerifier = super.getPurchaseVerifier();
        Intrinsics.checkNotNullExpressionValue(purchaseVerifier, "super.getPurchaseVerifier()");
        return purchaseVerifier;
    }
}
