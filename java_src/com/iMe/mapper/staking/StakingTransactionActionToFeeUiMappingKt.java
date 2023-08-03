package com.iMe.mapper.staking;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTransactionActionToFeeUiMapping.kt */
/* loaded from: classes3.dex */
public final class StakingTransactionActionToFeeUiMappingKt {
    public static final FeeView.ChooseFeeType mapToUi(StakingTransactionAction stakingTransactionAction, DialogModel model) {
        Intrinsics.checkNotNullParameter(stakingTransactionAction, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        GasPriceInfo gasPriceInfo = new GasPriceInfo(stakingTransactionAction.getTransaction().getGasPrice(), stakingTransactionAction.getTransaction().getGasLimit(), stakingTransactionAction.getGas().getDuration(), stakingTransactionAction.getGas().getAsNativeToken().doubleValue(), FiatValue.Companion.createUSDValue(stakingTransactionAction.getGas().getAsUsd().doubleValue()));
        return new FeeView.ChooseFeeType.Default(model, new TransactionParams.Ether(gasPriceInfo, null, null, stakingTransactionAction.getTransaction().getNonce(), stakingTransactionAction.getTransaction().getChainId()), stakingTransactionAction.getGas().getToken(), new GasPriceItem(TransactionSpeedLevel.MEDIUM, stakingTransactionAction.getGas().getToken(), gasPriceInfo), new Function1<GasPriceItem, Unit>() { // from class: com.iMe.mapper.staking.StakingTransactionActionToFeeUiMappingKt$mapToUi$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(GasPriceItem it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GasPriceItem gasPriceItem) {
                invoke2(gasPriceItem);
                return Unit.INSTANCE;
            }
        });
    }
}
