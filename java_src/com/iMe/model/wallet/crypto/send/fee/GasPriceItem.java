package com.iMe.model.wallet.crypto.send.fee;

import com.iMe.model.common.DialogChooseItem;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: GasPriceItem.kt */
/* loaded from: classes3.dex */
public final class GasPriceItem implements DialogChooseItem {
    private final TokenInfo feeTokenInfo;
    private final GasPriceInfo info;
    private final TransactionSpeedLevel speedLevel;

    public static /* synthetic */ GasPriceItem copy$default(GasPriceItem gasPriceItem, TransactionSpeedLevel transactionSpeedLevel, TokenInfo tokenInfo, GasPriceInfo gasPriceInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionSpeedLevel = gasPriceItem.speedLevel;
        }
        if ((i & 2) != 0) {
            tokenInfo = gasPriceItem.feeTokenInfo;
        }
        if ((i & 4) != 0) {
            gasPriceInfo = gasPriceItem.info;
        }
        return gasPriceItem.copy(transactionSpeedLevel, tokenInfo, gasPriceInfo);
    }

    public final TransactionSpeedLevel component1() {
        return this.speedLevel;
    }

    public final TokenInfo component2() {
        return this.feeTokenInfo;
    }

    public final GasPriceInfo component3() {
        return this.info;
    }

    public final GasPriceItem copy(TransactionSpeedLevel speedLevel, TokenInfo feeTokenInfo, GasPriceInfo info) {
        Intrinsics.checkNotNullParameter(speedLevel, "speedLevel");
        Intrinsics.checkNotNullParameter(feeTokenInfo, "feeTokenInfo");
        Intrinsics.checkNotNullParameter(info, "info");
        return new GasPriceItem(speedLevel, feeTokenInfo, info);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GasPriceItem) {
            GasPriceItem gasPriceItem = (GasPriceItem) obj;
            return this.speedLevel == gasPriceItem.speedLevel && Intrinsics.areEqual(this.feeTokenInfo, gasPriceItem.feeTokenInfo) && Intrinsics.areEqual(this.info, gasPriceItem.info);
        }
        return false;
    }

    public int hashCode() {
        return (((this.speedLevel.hashCode() * 31) + this.feeTokenInfo.hashCode()) * 31) + this.info.hashCode();
    }

    public String toString() {
        return "GasPriceItem(speedLevel=" + this.speedLevel + ", feeTokenInfo=" + this.feeTokenInfo + ", info=" + this.info + ')';
    }

    public GasPriceItem(TransactionSpeedLevel speedLevel, TokenInfo feeTokenInfo, GasPriceInfo info) {
        Intrinsics.checkNotNullParameter(speedLevel, "speedLevel");
        Intrinsics.checkNotNullParameter(feeTokenInfo, "feeTokenInfo");
        Intrinsics.checkNotNullParameter(info, "info");
        this.speedLevel = speedLevel;
        this.feeTokenInfo = feeTokenInfo;
        this.info = info;
    }

    public final TransactionSpeedLevel getSpeedLevel() {
        return this.speedLevel;
    }

    public final TokenInfo getFeeTokenInfo() {
        return this.feeTokenInfo;
    }

    public final GasPriceInfo getInfo() {
        return this.info;
    }

    @Override // com.iMe.model.common.DialogChooseItem
    public String getTitle(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(C3295R.string.wallet_amount_send_fee_title, resourceManager.getString(this.speedLevel.getTitle()), Integer.valueOf(this.info.getDuration()));
    }

    @Override // com.iMe.model.common.DialogChooseItem
    public String getValue(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        int i = C3295R.string.wallet_amount_send_fee_value;
        Float valueOf = Float.valueOf(this.info.getFeeInDollars());
        TokenInfo.Fiat.USD usd = TokenInfo.Fiat.USD.INSTANCE;
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(this.info.getFee()), this.feeTokenInfo.getDecimals()), resourceManager.getString(this.feeTokenInfo.getShortName()), BalanceFormatter.formatBalance(valueOf, usd.getDecimals()), resourceManager.getString(usd.getShortName()));
    }
}
