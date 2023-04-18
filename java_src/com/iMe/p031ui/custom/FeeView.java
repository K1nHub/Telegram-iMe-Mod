package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.mapper.crypto.FeeUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.databinding.ForkContentFeeBinding;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: FeeView.kt */
/* renamed from: com.iMe.ui.custom.FeeView */
/* loaded from: classes3.dex */
public final class FeeView extends FrameLayout implements KoinComponent {
    private ForkContentFeeBinding binding;
    private BaseFragment fragment;
    private MvpBottomSheet mvpBottomSheet;
    private final Lazy resourceManager$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FeeView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FeeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ FeeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new FeeView$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        ForkContentFeeBinding inflate = ForkContentFeeBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void init(BaseFragment baseFragment, ChooseFeeType type) {
        Intrinsics.checkNotNullParameter(baseFragment, "baseFragment");
        Intrinsics.checkNotNullParameter(type, "type");
        this.fragment = baseFragment;
        configureViewForType(type);
    }

    public final void init(BaseFragment baseFragment, MvpBottomSheet mvpBottomSheet, ChooseFeeType type) {
        Intrinsics.checkNotNullParameter(baseFragment, "baseFragment");
        Intrinsics.checkNotNullParameter(mvpBottomSheet, "mvpBottomSheet");
        Intrinsics.checkNotNullParameter(type, "type");
        this.fragment = baseFragment;
        this.mvpBottomSheet = mvpBottomSheet;
        configureViewForType(type);
    }

    public final void setSelectedFee(GasPriceItem selectedFee) {
        Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
        displayFee(selectedFee);
    }

    public final void setupColors() {
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        AppCompatTextView textFeeValue = forkContentFeeBinding.textFeeValue;
        Intrinsics.checkNotNullExpressionValue(textFeeValue, "textFeeValue");
        AppCompatTextView textTimeValue = forkContentFeeBinding.textTimeValue;
        Intrinsics.checkNotNullExpressionValue(textTimeValue, "textTimeValue");
        ViewExtKt.setTextsColor("chat_messagePanelText", textFeeValue, textTimeValue);
        AppCompatTextView textFeeTitle = forkContentFeeBinding.textFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textFeeTitle, "textFeeTitle");
        AppCompatTextView textTimeTitle = forkContentFeeBinding.textTimeTitle;
        Intrinsics.checkNotNullExpressionValue(textTimeTitle, "textTimeTitle");
        ViewExtKt.setTextsColor("windowBackgroundWhiteGrayText4", textFeeTitle, textTimeTitle);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.fragment = null;
    }

    private final void configureViewForType(ChooseFeeType chooseFeeType) {
        if (chooseFeeType instanceof ChooseFeeType.Custom) {
            configureCustomFeeChooser((ChooseFeeType.Custom) chooseFeeType);
        } else if (chooseFeeType instanceof ChooseFeeType.Default) {
            configureDefaultFeeChooser((ChooseFeeType.Default) chooseFeeType);
        }
    }

    private final void configureCustomFeeChooser(final ChooseFeeType.Custom custom) {
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        displayFee(custom.getSelectedFee());
        forkContentFeeBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.custom.FeeView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeeView.configureCustomFeeChooser$lambda$2$lambda$1(FeeView.ChooseFeeType.Custom.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configureCustomFeeChooser$lambda$2$lambda$1(ChooseFeeType.Custom type, View view) {
        Intrinsics.checkNotNullParameter(type, "$type");
        type.getOnChooseFee().invoke();
    }

    private final void configureDefaultFeeChooser(final ChooseFeeType.Default r4) {
        final List<GasPriceItem> mapToUiFees = FeeUiMappingKt.mapToUiFees(r4.getTransactionParams(), r4.getFeeTokenInfo());
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        displayFee(r4.getSelectedFee());
        forkContentFeeBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.custom.FeeView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeeView.configureDefaultFeeChooser$lambda$4$lambda$3(FeeView.this, r4, mapToUiFees, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configureDefaultFeeChooser$lambda$4$lambda$3(FeeView this$0, ChooseFeeType.Default type, List fees, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(type, "$type");
        Intrinsics.checkNotNullParameter(fees, "$fees");
        this$0.showFeeDialog(type.getModel(), fees, fees.indexOf(type.getSelectedFee()), type.getOnFeeSelectedAction());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void displayFee(GasPriceItem gasPriceItem) {
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        AppCompatTextView appCompatTextView = forkContentFeeBinding.textFeeValue;
        ResourceManager resourceManager = getResourceManager();
        int i = C3242R.string.wallet_swap_process_fee_price_value;
        Float valueOf = Float.valueOf(gasPriceItem.getInfo().getFeeInDollars());
        TokenInfo.Fiat.USD usd = TokenInfo.Fiat.USD.INSTANCE;
        appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(gasPriceItem.getInfo().getFee()), gasPriceItem.getFeeTokenInfo().getDecimals()), getResourceManager().getString(gasPriceItem.getFeeTokenInfo().getShortName()), BalanceFormatter.formatBalance(valueOf, usd.getDecimals()), getResourceManager().getString(usd.getShortName())));
        forkContentFeeBinding.textTimeValue.setText(getResourceManager().getString(C3242R.string.wallet_swap_process_fee_duration_value, Integer.valueOf(gasPriceItem.getInfo().getDuration())));
    }

    private final void showFeeDialog(DialogModel dialogModel, List<GasPriceItem> list, int i, Function1<? super GasPriceItem, Unit> function1) {
        AlertDialog createTwoLineSingleChooserDialog$default;
        BaseFragment baseFragment;
        BaseFragment baseFragment2 = this.fragment;
        if (baseFragment2 == null || (createTwoLineSingleChooserDialog$default = DialogsFactoryKt.createTwoLineSingleChooserDialog$default(baseFragment2, getResourceManager(), dialogModel, null, null, list, i, new FeeView$showFeeDialog$dialog$1(list, function1, this), 12, null)) == null) {
            return;
        }
        MvpBottomSheet mvpBottomSheet = this.mvpBottomSheet;
        if ((mvpBottomSheet == null || mvpBottomSheet.showDialog(createTwoLineSingleChooserDialog$default) == null) && (baseFragment = this.fragment) != null) {
            baseFragment.showDialog(createTwoLineSingleChooserDialog$default);
        }
    }

    private final void setupView() {
        setupColors();
        setupTexts();
        addView(this.binding.getRoot());
    }

    private final void setupTexts() {
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        forkContentFeeBinding.textFeeTitle.setText(getResourceManager().getString(C3242R.string.wallet_swap_process_fee_price));
        forkContentFeeBinding.textTimeTitle.setText(getResourceManager().getString(C3242R.string.wallet_swap_process_fee_duration));
    }

    /* compiled from: FeeView.kt */
    /* renamed from: com.iMe.ui.custom.FeeView$ChooseFeeType */
    /* loaded from: classes3.dex */
    public static abstract class ChooseFeeType {
        public /* synthetic */ ChooseFeeType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ChooseFeeType() {
        }

        /* compiled from: FeeView.kt */
        /* renamed from: com.iMe.ui.custom.FeeView$ChooseFeeType$Custom */
        /* loaded from: classes3.dex */
        public static final class Custom extends ChooseFeeType {
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

        /* compiled from: FeeView.kt */
        /* renamed from: com.iMe.ui.custom.FeeView$ChooseFeeType$Default */
        /* loaded from: classes3.dex */
        public static final class Default extends ChooseFeeType {
            private final TokenInfo feeTokenInfo;
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

            public final TokenInfo getFeeTokenInfo() {
                return this.feeTokenInfo;
            }

            public final GasPriceItem getSelectedFee() {
                return this.selectedFee;
            }

            public final Function1<GasPriceItem, Unit> getOnFeeSelectedAction() {
                return this.onFeeSelectedAction;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public Default(DialogModel model, TransactionParams transactionParams, TokenInfo feeTokenInfo, GasPriceItem selectedFee, Function1<? super GasPriceItem, Unit> onFeeSelectedAction) {
                super(null);
                Intrinsics.checkNotNullParameter(model, "model");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(feeTokenInfo, "feeTokenInfo");
                Intrinsics.checkNotNullParameter(selectedFee, "selectedFee");
                Intrinsics.checkNotNullParameter(onFeeSelectedAction, "onFeeSelectedAction");
                this.model = model;
                this.transactionParams = transactionParams;
                this.feeTokenInfo = feeTokenInfo;
                this.selectedFee = selectedFee;
                this.onFeeSelectedAction = onFeeSelectedAction;
            }
        }
    }
}
