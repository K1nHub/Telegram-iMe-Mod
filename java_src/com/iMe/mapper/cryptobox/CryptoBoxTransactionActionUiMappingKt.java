package com.iMe.mapper.cryptobox;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: CryptoBoxTransactionActionUiMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTransactionActionUiMappingKt {
    public static final FeeType mapToUi(CryptoBoxTransactionAction cryptoBoxTransactionAction, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(cryptoBoxTransactionAction, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        GasPriceInfo gasPriceInfo = new GasPriceInfo(cryptoBoxTransactionAction.getTransaction().getGasPrice(), cryptoBoxTransactionAction.getTransaction().getGasLimit(), cryptoBoxTransactionAction.getGas().getDurationMinutes(), cryptoBoxTransactionAction.getGas().getValue().getAsToken().doubleValue(), FiatValue.Companion.createUSDValue(cryptoBoxTransactionAction.getGas().getValue().getAsUsd()));
        return new FeeType.Default(new DialogModel(resourceManager.getString(C3630R.string.wallet_amount_send_fee_dialog_title), null, null, resourceManager.getString(C3630R.string.common_cancel), 6, null), new TransactionParams.Ether(gasPriceInfo, null, null, cryptoBoxTransactionAction.getTransaction().getNonce(), cryptoBoxTransactionAction.getTransaction().getChainId()), cryptoBoxTransactionAction.getGas().getToken(), new GasPriceItem(TransactionSpeedLevel.MEDIUM, cryptoBoxTransactionAction.getGas().getToken(), gasPriceInfo), new Function1<GasPriceItem, Unit>() { // from class: com.iMe.mapper.cryptobox.CryptoBoxTransactionActionUiMappingKt$mapToUi$1
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
