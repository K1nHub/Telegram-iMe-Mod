package com.iMe.model.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxCreationRulesItem.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxCreationRulesItem {
    private final String creationFeeText;
    private final String totalAmountText;
    private final String totalFeeText;
    private final String totalUsersFeeText;

    public static /* synthetic */ CryptoBoxCreationRulesItem copy$default(CryptoBoxCreationRulesItem cryptoBoxCreationRulesItem, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxCreationRulesItem.totalUsersFeeText;
        }
        if ((i & 2) != 0) {
            str2 = cryptoBoxCreationRulesItem.totalAmountText;
        }
        if ((i & 4) != 0) {
            str3 = cryptoBoxCreationRulesItem.creationFeeText;
        }
        if ((i & 8) != 0) {
            str4 = cryptoBoxCreationRulesItem.totalFeeText;
        }
        return cryptoBoxCreationRulesItem.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.totalUsersFeeText;
    }

    public final String component2() {
        return this.totalAmountText;
    }

    public final String component3() {
        return this.creationFeeText;
    }

    public final String component4() {
        return this.totalFeeText;
    }

    public final CryptoBoxCreationRulesItem copy(String totalUsersFeeText, String totalAmountText, String creationFeeText, String totalFeeText) {
        Intrinsics.checkNotNullParameter(totalUsersFeeText, "totalUsersFeeText");
        Intrinsics.checkNotNullParameter(totalAmountText, "totalAmountText");
        Intrinsics.checkNotNullParameter(creationFeeText, "creationFeeText");
        Intrinsics.checkNotNullParameter(totalFeeText, "totalFeeText");
        return new CryptoBoxCreationRulesItem(totalUsersFeeText, totalAmountText, creationFeeText, totalFeeText);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxCreationRulesItem) {
            CryptoBoxCreationRulesItem cryptoBoxCreationRulesItem = (CryptoBoxCreationRulesItem) obj;
            return Intrinsics.areEqual(this.totalUsersFeeText, cryptoBoxCreationRulesItem.totalUsersFeeText) && Intrinsics.areEqual(this.totalAmountText, cryptoBoxCreationRulesItem.totalAmountText) && Intrinsics.areEqual(this.creationFeeText, cryptoBoxCreationRulesItem.creationFeeText) && Intrinsics.areEqual(this.totalFeeText, cryptoBoxCreationRulesItem.totalFeeText);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.totalUsersFeeText.hashCode() * 31) + this.totalAmountText.hashCode()) * 31) + this.creationFeeText.hashCode()) * 31) + this.totalFeeText.hashCode();
    }

    public String toString() {
        return "CryptoBoxCreationRulesItem(totalUsersFeeText=" + this.totalUsersFeeText + ", totalAmountText=" + this.totalAmountText + ", creationFeeText=" + this.creationFeeText + ", totalFeeText=" + this.totalFeeText + ')';
    }

    public CryptoBoxCreationRulesItem(String totalUsersFeeText, String totalAmountText, String creationFeeText, String totalFeeText) {
        Intrinsics.checkNotNullParameter(totalUsersFeeText, "totalUsersFeeText");
        Intrinsics.checkNotNullParameter(totalAmountText, "totalAmountText");
        Intrinsics.checkNotNullParameter(creationFeeText, "creationFeeText");
        Intrinsics.checkNotNullParameter(totalFeeText, "totalFeeText");
        this.totalUsersFeeText = totalUsersFeeText;
        this.totalAmountText = totalAmountText;
        this.creationFeeText = creationFeeText;
        this.totalFeeText = totalFeeText;
    }

    public final String getTotalUsersFeeText() {
        return this.totalUsersFeeText;
    }

    public final String getTotalAmountText() {
        return this.totalAmountText;
    }

    public final String getCreationFeeText() {
        return this.creationFeeText;
    }

    public final String getTotalFeeText() {
        return this.totalFeeText;
    }
}
