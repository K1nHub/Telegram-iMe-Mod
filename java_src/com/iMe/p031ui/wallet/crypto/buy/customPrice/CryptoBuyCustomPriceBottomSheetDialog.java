package com.iMe.p031ui.wallet.crypto.buy.customPrice;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkContentWalletCryptoBuyCustomPriceLayoutBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog */
/* loaded from: classes3.dex */
public final class CryptoBuyCustomPriceBottomSheetDialog extends MvpBottomSheet implements CryptoBuyCustomPriceView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CryptoBuyCustomPriceBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CryptoBuyCustomPriceBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final CryptoBuyItem minItem;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Function2<Float, Currency, Unit> resultDelegate;

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CryptoBuyCustomPriceBottomSheetDialog(org.telegram.p044ui.ActionBar.BaseFragment r4, com.iMe.model.wallet.crypto.buy.CryptoBuyItem r5, kotlin.jvm.functions.Function2<? super java.lang.Float, ? super com.iMe.storage.domain.model.crypto.simplex.Currency, kotlin.Unit> r6) {
        /*
            r3 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "minItem"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "resultDelegate"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r4.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r3.<init>(r0, r1)
            r3.fragment = r4
            r3.minItem = r5
            r3.resultDelegate = r6
            com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$presenter$2 r4 = new com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$presenter$2
            r4.<init>(r3)
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r6 = r3.getMvpDelegate()
            java.lang.String r0 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class<com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter> r2 = com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter.class
            java.lang.String r2 = r2.getName()
            r0.append(r2)
            java.lang.String r2 = "."
            r0.append(r2)
            java.lang.String r2 = "presenter"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.<init>(r6, r0, r4)
            r3.presenter$delegate = r5
            org.koin.mp.KoinPlatformTools r4 = org.koin.p043mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r4 = r4.defaultLazyMode()
            com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$special$$inlined$inject$default$1 r5 = new com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$special$$inlined$inject$default$1
            r6 = 0
            r5.<init>(r3, r6, r6)
            kotlin.Lazy r4 = kotlin.LazyKt.lazy(r4, r5)
            r3.resourceManager$delegate = r4
            com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$binding$2 r4 = new com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$binding$2
            r4.<init>(r3)
            com.iMe.utils.extentions.delegate.ResettableLazy r4 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r3, r6, r4, r1, r6)
            r3.binding$delegate = r4
            r4 = 0
            r3.setApplyBottomPadding(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog.<init>(org.telegram.ui.ActionBar.BaseFragment, com.iMe.model.wallet.crypto.buy.CryptoBuyItem, kotlin.jvm.functions.Function2):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CryptoBuyCustomPricePresenter getPresenter() {
        return (CryptoBuyCustomPricePresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletCryptoBuyCustomPriceLayoutBinding getBinding() {
        return (ForkContentWalletCryptoBuyCustomPriceLayoutBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        AndroidUtilities.hideKeyboard(getBinding().editFromAmount);
        super.dismiss();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupActionBar();
        setupStyles();
        setupListeners();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void showConfirmDialog(final float f, final Currency currency, DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = this.fragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "fragment.parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CryptoBuyCustomPriceBottomSheetDialog.showConfirmDialog$lambda$0(CryptoBuyCustomPriceBottomSheetDialog.this, f, currency);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmDialog$lambda$0(CryptoBuyCustomPriceBottomSheetDialog this$0, float f, Currency currency) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(currency, "$currency");
        this$0.resultDelegate.invoke(Float.valueOf(f), currency);
        this$0.dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036  */
    @Override // com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void configureExchangeState(float r5, float r6, com.iMe.storage.domain.model.crypto.simplex.Currency r7, com.iMe.storage.domain.model.crypto.simplex.Currency r8) {
        /*
            r4 = this;
            java.lang.String r0 = "fromCurrency"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "toCurrency"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            org.telegram.messenger.databinding.ForkContentWalletCryptoBuyCustomPriceLayoutBinding r0 = r4.getBinding()
            androidx.appcompat.widget.AppCompatTextView r1 = r0.textFromCurrency
            com.iMe.storage.domain.utils.system.ResourceManager r2 = r4.getResourceManager()
            int r7 = r7.getSymbol()
            java.lang.String r7 = r2.getString(r7)
            r1.setText(r7)
            androidx.appcompat.widget.AppCompatEditText r7 = r0.editFromAmount
            android.text.Editable r7 = r7.getText()
            r1 = 0
            r2 = 1
            if (r7 == 0) goto L32
            boolean r7 = kotlin.text.StringsKt.isBlank(r7)
            if (r7 == 0) goto L30
            goto L32
        L30:
            r7 = r1
            goto L33
        L32:
            r7 = r2
        L33:
            r3 = 0
            if (r7 != 0) goto L43
            androidx.appcompat.widget.AppCompatEditText r7 = r0.editFromAmount
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r5 = com.iMe.utils.extentions.common.StringExtKt.stripZeros$default(r5, r1, r2, r3)
            r7.setText(r5)
        L43:
            androidx.appcompat.widget.AppCompatTextView r5 = r0.textToCurrency
            com.iMe.storage.domain.utils.system.ResourceManager r7 = r4.getResourceManager()
            int r8 = r8.getSymbol()
            java.lang.String r7 = r7.getString(r8)
            r5.setText(r7)
            androidx.appcompat.widget.AppCompatTextView r5 = r0.textToAmount
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.String r6 = com.iMe.utils.extentions.common.StringExtKt.stripZeros$default(r6, r1, r2, r3)
            r5.setText(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog.configureExchangeState(float, float, com.iMe.storage.domain.model.crypto.simplex.Currency, com.iMe.storage.domain.model.crypto.simplex.Currency):void");
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void showExchangedValue(float f) {
        getBinding().textToAmount.setText(StringExtKt.stripZeros$default(String.valueOf(f), (char) 0, 1, null));
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void showInputError(String errorText) {
        Intrinsics.checkNotNullParameter(errorText, "errorText");
        AppCompatTextView appCompatTextView = getBinding().textAction;
        appCompatTextView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        appCompatTextView.setText(errorText);
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void resetInputError() {
        AppCompatTextView appCompatTextView = getBinding().textAction;
        appCompatTextView.setTextColor(Theme.getColor(Theme.key_chats_actionBackground));
        appCompatTextView.setText(getResourceManager().getString(C3295R.string.wallet_crypto_buy_custom_price_dialog_action));
    }

    private final void setupStyles() {
        Drawable drawable = this.shadowDrawable;
        int i = Theme.key_actionBarDefault;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
        ForkContentWalletCryptoBuyCustomPriceLayoutBinding binding = getBinding();
        AppCompatImageView setupStyles$lambda$11$lambda$5 = binding.imageBack;
        Intrinsics.checkNotNullExpressionValue(setupStyles$lambda$11$lambda$5, "setupStyles$lambda$11$lambda$5");
        ViewExtKt.setCircleRippleBackground(setupStyles$lambda$11$lambda$5);
        int i2 = Theme.key_actionBarDefaultTitle;
        ViewExtKt.setImageColor(setupStyles$lambda$11$lambda$5, Theme.getColor(i2));
        AppCompatTextView setupStyles$lambda$11$lambda$6 = binding.textAction;
        Intrinsics.checkNotNullExpressionValue(setupStyles$lambda$11$lambda$6, "setupStyles$lambda$11$lambda$6");
        ViewExtKt.setRippleBackground$default(setupStyles$lambda$11$lambda$6, false, 1, null);
        ViewExtKt.withMediumTypeface(setupStyles$lambda$11$lambda$6);
        int i3 = Theme.key_chats_actionBackground;
        setupStyles$lambda$11$lambda$6.setTextColor(Theme.getColor(i3));
        AppCompatEditText setupStyles$lambda$11$lambda$7 = binding.editFromAmount;
        Intrinsics.checkNotNullExpressionValue(setupStyles$lambda$11$lambda$7, "setupStyles$lambda$11$lambda$7");
        ViewExtKt.withMediumTypeface(setupStyles$lambda$11$lambda$7);
        setupStyles$lambda$11$lambda$7.setTextColor(Theme.getColor(i3));
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        setupStyles$lambda$11$lambda$7.setHintTextColor(Theme.getColor(i4));
        AppCompatTextView setupStyles$lambda$11$lambda$8 = binding.textToAmount;
        Intrinsics.checkNotNullExpressionValue(setupStyles$lambda$11$lambda$8, "setupStyles$lambda$11$lambda$8");
        ViewExtKt.withMediumTypeface(setupStyles$lambda$11$lambda$8);
        ViewExtKt.setCompoundDrawablesColor(setupStyles$lambda$11$lambda$8, Theme.getColor(i3));
        setupStyles$lambda$11$lambda$8.setTextColor(Theme.getColor(i4));
        AppCompatTextView setupStyles$lambda$11$lambda$9 = binding.textFromCurrency;
        Intrinsics.checkNotNullExpressionValue(setupStyles$lambda$11$lambda$9, "setupStyles$lambda$11$lambda$9");
        ViewExtKt.withMediumTypeface(setupStyles$lambda$11$lambda$9);
        setupStyles$lambda$11$lambda$9.setTextColor(Theme.getColor(i3));
        AppCompatTextView setupStyles$lambda$11$lambda$10 = binding.textToCurrency;
        Intrinsics.checkNotNullExpressionValue(setupStyles$lambda$11$lambda$10, "setupStyles$lambda$11$lambda$10");
        ViewExtKt.withMediumTypeface(setupStyles$lambda$11$lambda$10);
        setupStyles$lambda$11$lambda$10.setTextColor(Theme.getColor(i4));
        binding.linearRoot.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        binding.linearHeader.setBackgroundColor(Theme.getColor(i));
        binding.textTax.setTextColor(Theme.getColor(i4));
        binding.textTitle.setTextColor(Theme.getColor(i2));
        binding.viewDivider.setBackgroundColor(Theme.getColor(Theme.key_divider));
    }

    private final void setupActionBar() {
        ForkContentWalletCryptoBuyCustomPriceLayoutBinding binding = getBinding();
        binding.imageBack.setImageResource(C3295R.C3297drawable.ic_ab_back);
        binding.textTitle.setText(getResourceManager().getString(C3295R.string.wallet_crypto_buy_custom_price_dialog_toolbar_title));
    }

    private final void setupListeners() {
        final ForkContentWalletCryptoBuyCustomPriceLayoutBinding binding = getBinding();
        AppCompatEditText editFromAmount = binding.editFromAmount;
        Intrinsics.checkNotNullExpressionValue(editFromAmount, "editFromAmount");
        editFromAmount.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CryptoBuyCustomPricePresenter presenter;
                presenter = CryptoBuyCustomPriceBottomSheetDialog.this.getPresenter();
                presenter.calculateExchangeValues(String.valueOf(binding.editFromAmount.getText()));
            }
        });
        AppCompatImageView imageBack = binding.imageBack;
        Intrinsics.checkNotNullExpressionValue(imageBack, "imageBack");
        ViewExtKt.safeThrottledClick$default(imageBack, 0L, new CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$2(this), 1, null);
        AppCompatEditText editFromAmount2 = binding.editFromAmount;
        Intrinsics.checkNotNullExpressionValue(editFromAmount2, "editFromAmount");
        ViewExtKt.onAction(editFromAmount2, 6, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CryptoBuyCustomPriceBottomSheetDialog.setupListeners$lambda$16$lambda$15(CryptoBuyCustomPriceBottomSheetDialog.this);
            }
        });
        AppCompatTextView textAction = binding.textAction;
        Intrinsics.checkNotNullExpressionValue(textAction, "textAction");
        ViewExtKt.safeThrottledClick$default(textAction, 0L, new CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$4(this), 1, null);
        LinearLayout linearTo = binding.linearTo;
        Intrinsics.checkNotNullExpressionValue(linearTo, "linearTo");
        ViewExtKt.safeThrottledClick$default(linearTo, 0L, new CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5(this, binding), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$16$lambda$15(CryptoBuyCustomPriceBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.validateExchange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void validateExchange() {
        getPresenter().validateExchange(String.valueOf(getBinding().editFromAmount.getText()), getBinding().textToAmount.getText().toString());
    }

    /* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CryptoBuyCustomPriceBottomSheetDialog newInstance(BaseFragment fragment, CryptoBuyItem minItem, Function2<? super Float, ? super Currency, Unit> resultDelegate) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(minItem, "minItem");
            Intrinsics.checkNotNullParameter(resultDelegate, "resultDelegate");
            return new CryptoBuyCustomPriceBottomSheetDialog(fragment, minItem, resultDelegate);
        }
    }
}
