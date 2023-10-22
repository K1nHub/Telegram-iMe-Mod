package com.iMe.model.wallet.crypto.send.fee;

import com.iMe.model.common.DialogChooseItem;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: GasPriceItem.kt */
/* loaded from: classes3.dex */
public final class GasPriceItem implements DialogChooseItem {
    private final TokenDetailed feeToken;
    private final GasPriceInfo info;
    private final TransactionSpeedLevel speedLevel;

    public static /* synthetic */ GasPriceItem copy$default(GasPriceItem gasPriceItem, TransactionSpeedLevel transactionSpeedLevel, TokenDetailed tokenDetailed, GasPriceInfo gasPriceInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionSpeedLevel = gasPriceItem.speedLevel;
        }
        if ((i & 2) != 0) {
            tokenDetailed = gasPriceItem.feeToken;
        }
        if ((i & 4) != 0) {
            gasPriceInfo = gasPriceItem.info;
        }
        return gasPriceItem.copy(transactionSpeedLevel, tokenDetailed, gasPriceInfo);
    }

    public final TransactionSpeedLevel component1() {
        return this.speedLevel;
    }

    public final TokenDetailed component2() {
        return this.feeToken;
    }

    public final GasPriceInfo component3() {
        return this.info;
    }

    public final GasPriceItem copy(TransactionSpeedLevel speedLevel, TokenDetailed feeToken, GasPriceInfo info) {
        Intrinsics.checkNotNullParameter(speedLevel, "speedLevel");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(info, "info");
        return new GasPriceItem(speedLevel, feeToken, info);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GasPriceItem) {
            GasPriceItem gasPriceItem = (GasPriceItem) obj;
            return this.speedLevel == gasPriceItem.speedLevel && Intrinsics.areEqual(this.feeToken, gasPriceItem.feeToken) && Intrinsics.areEqual(this.info, gasPriceItem.info);
        }
        return false;
    }

    public int hashCode() {
        return (((this.speedLevel.hashCode() * 31) + this.feeToken.hashCode()) * 31) + this.info.hashCode();
    }

    public String toString() {
        return "GasPriceItem(speedLevel=" + this.speedLevel + ", feeToken=" + this.feeToken + ", info=" + this.info + ')';
    }

    public GasPriceItem(TransactionSpeedLevel speedLevel, TokenDetailed feeToken, GasPriceInfo info) {
        Intrinsics.checkNotNullParameter(speedLevel, "speedLevel");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(info, "info");
        this.speedLevel = speedLevel;
        this.feeToken = feeToken;
        this.info = info;
    }

    public final TransactionSpeedLevel getSpeedLevel() {
        return this.speedLevel;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    public final GasPriceInfo getInfo() {
        return this.info;
    }

    @Override // com.iMe.model.common.DialogChooseItem
    public String getTitle(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(C3630R.string.wallet_amount_send_fee_title, resourceManager.getString(this.speedLevel.getTitle()), Integer.valueOf(this.info.getDuration()));
    }

    @Override // com.iMe.model.common.DialogChooseItem
    public String getValue(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(C3630R.string.wallet_amount_send_fee_value, BalanceFormatter.format(Double.valueOf(this.info.getFee()), Integer.valueOf(this.feeToken.getDecimals())), this.feeToken.getTicker(), BalanceFormatter.format(Double.valueOf(this.info.getFeeInFiat().getValue()), Integer.valueOf(TokenDetailed.Companion.getUSD().getDecimals())), this.info.getFeeInFiat().getSymbol());
    }
}
