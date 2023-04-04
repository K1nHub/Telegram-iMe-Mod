package com.iMe.mapper.staking;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.p032ui.custom.FeeView;
import com.iMe.storage.domain.model.crypto.Chain;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTransactionActionToFeeUiMapping.kt */
/* loaded from: classes3.dex */
public final class StakingTransactionActionToFeeUiMappingKt {
    public static final FeeView.ChooseFeeType mapToUi(StakingTransactionAction stakingTransactionAction, DialogModel model) {
        Intrinsics.checkNotNullParameter(stakingTransactionAction, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        TokenInfo map = TokenInfo.Companion.map(stakingTransactionAction.getGas().getToken().getTicker());
        GasPriceInfo gasPriceInfo = new GasPriceInfo(stakingTransactionAction.getTransaction().getGasPrice(), stakingTransactionAction.getTransaction().getGasLimit(), stakingTransactionAction.getGas().getDuration(), stakingTransactionAction.getGas().getAsNativeToken().doubleValue(), stakingTransactionAction.getGas().getAsUsd().floatValue());
        return new FeeView.ChooseFeeType.Default(model, new TransactionParams.Ether(gasPriceInfo, null, null, stakingTransactionAction.getTransaction().getNonce(), Chain.Companion.getChainById(stakingTransactionAction.getTransaction().getChainId())), map, new GasPriceItem(TransactionSpeedLevel.MEDIUM, map, gasPriceInfo), StakingTransactionActionToFeeUiMappingKt$mapToUi$1.INSTANCE);
    }
}
