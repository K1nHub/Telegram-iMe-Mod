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
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
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
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.databinding.ForkContentFeeBinding;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.FeeView$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
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
        int i = Theme.key_chat_messagePanelText;
        AppCompatTextView textFeeValue = forkContentFeeBinding.textFeeValue;
        Intrinsics.checkNotNullExpressionValue(textFeeValue, "textFeeValue");
        AppCompatTextView textTimeValue = forkContentFeeBinding.textTimeValue;
        Intrinsics.checkNotNullExpressionValue(textTimeValue, "textTimeValue");
        ViewExtKt.setTextsColor(i, textFeeValue, textTimeValue);
        int i2 = Theme.key_windowBackgroundWhiteGrayText4;
        AppCompatTextView textFeeTitle = forkContentFeeBinding.textFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textFeeTitle, "textFeeTitle");
        AppCompatTextView textTimeTitle = forkContentFeeBinding.textTimeTitle;
        Intrinsics.checkNotNullExpressionValue(textTimeTitle, "textTimeTitle");
        ViewExtKt.setTextsColor(i2, textFeeTitle, textTimeTitle);
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
        final List<GasPriceItem> mapToUiFees = FeeUiMappingKt.mapToUiFees(r4.getTransactionParams(), r4.getFeeToken());
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
        int i = C3419R.string.wallet_swap_process_fee_price_value;
        Double valueOf = Double.valueOf(gasPriceItem.getInfo().getFeeInFiat().getValue());
        TokenDetailed.Companion companion = TokenDetailed.Companion;
        appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(gasPriceItem.getInfo().getFee()), Integer.valueOf(gasPriceItem.getFeeToken().getDecimals())), gasPriceItem.getFeeToken().getTicker(), BalanceFormatter.formatBalance(valueOf, Integer.valueOf(companion.getUSD().getDecimals())), companion.getUSD().getTicker()));
        forkContentFeeBinding.textTimeValue.setText(getResourceManager().getString(C3419R.string.wallet_swap_process_fee_duration_value, Integer.valueOf(gasPriceItem.getInfo().getDuration())));
    }

    private final void showFeeDialog(DialogModel dialogModel, final List<GasPriceItem> list, int i, final Function1<? super GasPriceItem, Unit> function1) {
        AlertDialog createTwoLineSingleChooserDialog$default;
        BaseFragment baseFragment;
        BaseFragment baseFragment2 = this.fragment;
        if (baseFragment2 == null || (createTwoLineSingleChooserDialog$default = DialogsFactoryKt.createTwoLineSingleChooserDialog$default(baseFragment2, getResourceManager(), dialogModel, null, null, list, i, new Function1<Integer, Unit>() { // from class: com.iMe.ui.custom.FeeView$showFeeDialog$dialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2) {
                GasPriceItem gasPriceItem = list.get(i2);
                function1.invoke(gasPriceItem);
                this.displayFee(gasPriceItem);
            }
        }, 12, null)) == null) {
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
        forkContentFeeBinding.textFeeTitle.setText(getResourceManager().getString(C3419R.string.wallet_swap_process_fee_price));
        forkContentFeeBinding.textTimeTitle.setText(getResourceManager().getString(C3419R.string.wallet_swap_process_fee_duration));
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
}
