package com.iMe.p030ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.mapper.crypto.FeeUiMappingKt;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkContentFeeBinding;
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

    public final void init(BaseFragment baseFragment, FeeType type) {
        Intrinsics.checkNotNullParameter(baseFragment, "baseFragment");
        Intrinsics.checkNotNullParameter(type, "type");
        this.fragment = baseFragment;
        configureViewForType(type);
    }

    public final void init(BaseFragment baseFragment, MvpBottomSheet mvpBottomSheet, FeeType type) {
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
        ViewExtKt.setTextsColorKey(i, textFeeValue, textTimeValue);
        int i2 = Theme.key_windowBackgroundWhiteGrayText4;
        AppCompatTextView textFeeTitle = forkContentFeeBinding.textFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textFeeTitle, "textFeeTitle");
        AppCompatTextView textTimeTitle = forkContentFeeBinding.textTimeTitle;
        Intrinsics.checkNotNullExpressionValue(textTimeTitle, "textTimeTitle");
        ViewExtKt.setTextsColorKey(i2, textFeeTitle, textTimeTitle);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.fragment = null;
    }

    private final void configureViewForType(FeeType feeType) {
        if (feeType instanceof FeeType.Custom) {
            configureCustomFeeChooser((FeeType.Custom) feeType);
        } else if (feeType instanceof FeeType.Default) {
            configureDefaultFeeChooser((FeeType.Default) feeType);
        }
    }

    private final void configureCustomFeeChooser(final FeeType.Custom custom) {
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        displayFee(custom.getSelectedFee());
        forkContentFeeBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.custom.FeeView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeeView.configureCustomFeeChooser$lambda$2$lambda$1(FeeType.Custom.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configureCustomFeeChooser$lambda$2$lambda$1(FeeType.Custom type, View view) {
        Intrinsics.checkNotNullParameter(type, "$type");
        type.getOnChooseFee().invoke();
    }

    private final void configureDefaultFeeChooser(final FeeType.Default r4) {
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
    public static final void configureDefaultFeeChooser$lambda$4$lambda$3(FeeView this$0, FeeType.Default type, List fees, View view) {
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
        int i = C3632R.string.wallet_swap_process_fee_price_value;
        Double valueOf = Double.valueOf(gasPriceItem.getInfo().getFeeInFiat().getValue());
        TokenDetailed.Companion companion = TokenDetailed.Companion;
        appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.format(Double.valueOf(gasPriceItem.getInfo().getFee()), Integer.valueOf(gasPriceItem.getFeeToken().getDecimals())), gasPriceItem.getFeeToken().getTicker(), BalanceFormatter.format(valueOf, Integer.valueOf(companion.getUSD().getDecimals())), companion.getUSD().getTicker()));
        forkContentFeeBinding.textTimeValue.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_fee_duration_value, Integer.valueOf(gasPriceItem.getInfo().getDuration())));
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0004, code lost:
        r11 = com.iMe.utils.dialogs.DialogsFactoryKt.createTwoLineSingleChooserDialog(r0, getResourceManager(), r11, (r18 & 4) != 0 ? null : null, (r18 & 8) != 0 ? null : null, r12, r13, new com.iMe.p030ui.custom.FeeView$showFeeDialog$dialog$1(r12, r14, r10));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void showFeeDialog(com.iMe.model.dialog.DialogModel r11, final java.util.List<com.iMe.model.wallet.crypto.send.fee.GasPriceItem> r12, int r13, final kotlin.jvm.functions.Function1<? super com.iMe.model.wallet.crypto.send.fee.GasPriceItem, kotlin.Unit> r14) {
        /*
            r10 = this;
            org.telegram.ui.ActionBar.BaseFragment r0 = r10.fragment
            if (r0 == 0) goto L2d
            com.iMe.storage.domain.utils.system.ResourceManager r1 = r10.getResourceManager()
            r3 = 0
            r4 = 0
            com.iMe.ui.custom.FeeView$showFeeDialog$dialog$1 r7 = new com.iMe.ui.custom.FeeView$showFeeDialog$dialog$1
            r7.<init>()
            r8 = 12
            r9 = 0
            r2 = r11
            r5 = r12
            r6 = r13
            org.telegram.ui.ActionBar.AlertDialog r11 = com.iMe.utils.dialogs.DialogsFactoryKt.createTwoLineSingleChooserDialog$default(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)
            if (r11 != 0) goto L1c
            goto L2d
        L1c:
            com.iMe.ui.base.mvp.MvpBottomSheet r12 = r10.mvpBottomSheet
            if (r12 == 0) goto L26
            android.app.Dialog r12 = r12.showDialog(r11)
            if (r12 != 0) goto L2d
        L26:
            org.telegram.ui.ActionBar.BaseFragment r12 = r10.fragment
            if (r12 == 0) goto L2d
            r12.showDialog(r11)
        L2d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.custom.FeeView.showFeeDialog(com.iMe.model.dialog.DialogModel, java.util.List, int, kotlin.jvm.functions.Function1):void");
    }

    private final void setupView() {
        setupColors();
        setupTexts();
        addView(this.binding.getRoot());
    }

    private final void setupTexts() {
        ForkContentFeeBinding forkContentFeeBinding = this.binding;
        forkContentFeeBinding.textFeeTitle.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_fee_price));
        forkContentFeeBinding.textTimeTitle.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_fee_duration));
    }
}
