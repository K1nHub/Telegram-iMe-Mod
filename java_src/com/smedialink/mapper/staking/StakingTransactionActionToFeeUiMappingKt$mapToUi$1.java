package com.smedialink.mapper.staking;

import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: StakingTransactionActionToFeeUiMapping.kt */
/* loaded from: classes3.dex */
final class StakingTransactionActionToFeeUiMappingKt$mapToUi$1 extends Lambda implements Function1<GasPriceItem, Unit> {
    public static final StakingTransactionActionToFeeUiMappingKt$mapToUi$1 INSTANCE = new StakingTransactionActionToFeeUiMappingKt$mapToUi$1();

    StakingTransactionActionToFeeUiMappingKt$mapToUi$1() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(GasPriceItem it) {
        Intrinsics.checkNotNullParameter(it, "it");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(GasPriceItem gasPriceItem) {
        invoke2(gasPriceItem);
        return Unit.INSTANCE;
    }
}
