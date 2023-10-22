package com.iMe.storage.data.network.model.request.billing;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ValidateReceiptRequest.kt */
/* loaded from: classes3.dex */
public final class ValidateReceiptRequest {
    private final String orderId;
    private final String packageName;
    private final String productId;
    private final int purchaseState;
    private final long purchaseTime;
    private final String purchaseToken;

    public static /* synthetic */ ValidateReceiptRequest copy$default(ValidateReceiptRequest validateReceiptRequest, String str, String str2, String str3, long j, int i, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = validateReceiptRequest.orderId;
        }
        if ((i2 & 2) != 0) {
            str2 = validateReceiptRequest.packageName;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            str3 = validateReceiptRequest.productId;
        }
        String str6 = str3;
        if ((i2 & 8) != 0) {
            j = validateReceiptRequest.purchaseTime;
        }
        long j2 = j;
        if ((i2 & 16) != 0) {
            i = validateReceiptRequest.purchaseState;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            str4 = validateReceiptRequest.purchaseToken;
        }
        return validateReceiptRequest.copy(str, str5, str6, j2, i3, str4);
    }

    public final String component1() {
        return this.orderId;
    }

    public final String component2() {
        return this.packageName;
    }

    public final String component3() {
        return this.productId;
    }

    public final long component4() {
        return this.purchaseTime;
    }

    public final int component5() {
        return this.purchaseState;
    }

    public final String component6() {
        return this.purchaseToken;
    }

    public final ValidateReceiptRequest copy(String orderId, String packageName, String productId, long j, int i, String purchaseToken) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        return new ValidateReceiptRequest(orderId, packageName, productId, j, i, purchaseToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ValidateReceiptRequest) {
            ValidateReceiptRequest validateReceiptRequest = (ValidateReceiptRequest) obj;
            return Intrinsics.areEqual(this.orderId, validateReceiptRequest.orderId) && Intrinsics.areEqual(this.packageName, validateReceiptRequest.packageName) && Intrinsics.areEqual(this.productId, validateReceiptRequest.productId) && this.purchaseTime == validateReceiptRequest.purchaseTime && this.purchaseState == validateReceiptRequest.purchaseState && Intrinsics.areEqual(this.purchaseToken, validateReceiptRequest.purchaseToken);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.orderId.hashCode() * 31) + this.packageName.hashCode()) * 31) + this.productId.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.purchaseTime)) * 31) + this.purchaseState) * 31) + this.purchaseToken.hashCode();
    }

    public String toString() {
        return "ValidateReceiptRequest(orderId=" + this.orderId + ", packageName=" + this.packageName + ", productId=" + this.productId + ", purchaseTime=" + this.purchaseTime + ", purchaseState=" + this.purchaseState + ", purchaseToken=" + this.purchaseToken + ')';
    }

    public ValidateReceiptRequest(String orderId, String packageName, String productId, long j, int i, String purchaseToken) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        this.orderId = orderId;
        this.packageName = packageName;
        this.productId = productId;
        this.purchaseTime = j;
        this.purchaseState = i;
        this.purchaseToken = purchaseToken;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final int getPurchaseState() {
        return this.purchaseState;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }
}
