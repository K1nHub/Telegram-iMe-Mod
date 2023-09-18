package com.iMe.model.wallet.crypto.send.fee;

import com.iMe.model.dialog.DialogModel;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FeeType.kt */
/* loaded from: classes4.dex */
public abstract class FeeType {
    public /* synthetic */ FeeType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private FeeType() {
    }

    /* compiled from: FeeType.kt */
    /* loaded from: classes4.dex */
    public static final class Custom extends FeeType {
        private final Function0<Unit> onChooseFee;
        private final GasPriceItem selectedFee;

        public final Function0<Unit> getOnChooseFee() {
            return this.onChooseFee;
        }

        public final GasPriceItem getSelectedFee() {
            return this.selectedFee;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Custom(Function0<Unit> onChooseFee, GasPriceItem selectedFee) {
            super(null);
            Intrinsics.checkNotNullParameter(onChooseFee, "onChooseFee");
            Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
            this.onChooseFee = onChooseFee;
            this.selectedFee = selectedFee;
        }
    }

    /* compiled from: FeeType.kt */
    /* loaded from: classes4.dex */
    public static final class Default extends FeeType {
        private final TokenDetailed feeToken;
        private final DialogModel model;
        private final Function1<GasPriceItem, Unit> onFeeSelectedAction;
        private final GasPriceItem selectedFee;
        private final TransactionParams transactionParams;

        public final DialogModel getModel() {
            return this.model;
        }

        public final TransactionParams getTransactionParams() {
            return this.transactionParams;
        }

        public final TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        public final GasPriceItem getSelectedFee() {
            return this.selectedFee;
        }

        public final Function1<GasPriceItem, Unit> getOnFeeSelectedAction() {
            return this.onFeeSelectedAction;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Default(DialogModel model, TransactionParams transactionParams, TokenDetailed feeToken, GasPriceItem selectedFee, Function1<? super GasPriceItem, Unit> onFeeSelectedAction) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
            Intrinsics.checkNotNullParameter(onFeeSelectedAction, "onFeeSelectedAction");
            this.model = model;
            this.transactionParams = transactionParams;
            this.feeToken = feeToken;
            this.selectedFee = selectedFee;
            this.onFeeSelectedAction = onFeeSelectedAction;
        }
    }
}
