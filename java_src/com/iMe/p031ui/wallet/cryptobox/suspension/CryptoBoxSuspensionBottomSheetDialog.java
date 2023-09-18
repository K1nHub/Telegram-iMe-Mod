package com.iMe.p031ui.wallet.cryptobox.suspension;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.databinding.ForkContentCryptoboxSuspensionBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoBoxSuspensionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog */
/* loaded from: classes6.dex */
public final class CryptoBoxSuspensionBottomSheetDialog extends MvpBottomSheet implements CryptoBoxSuspensionView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CryptoBoxSuspensionBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CryptoBoxSuspensionBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return true;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CryptoBoxSuspensionBottomSheetDialog(final com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction r5, org.telegram.p043ui.ActionBar.BaseFragment r6) {
        /*
            r4 = this;
            java.lang.String r0 = "transactionAction"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.fragment = r6
            com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$presenter$2 r6 = new com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$presenter$2
            r6.<init>()
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter> r3 = com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r5.<init>(r0, r2, r6)
            r4.presenter$delegate = r5
            org.koin.mp.KoinPlatformTools r5 = org.koin.p042mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$special$$inlined$inject$default$1 r6 = new com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$special$$inlined$inject$default$1
            r0 = 0
            r6.<init>()
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r4.resourceManager$delegate = r5
            com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$binding$2 r5 = new com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$binding$2
            r5.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r5 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r0, r5, r1, r0)
            r4.binding$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog.<init>(com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CryptoBoxSuspensionPresenter getPresenter() {
        return (CryptoBoxSuspensionPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentCryptoboxSuspensionBinding getBinding() {
        return (ForkContentCryptoboxSuspensionBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupViews();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void renderButtonLoading(boolean z) {
        getBinding().buttonProcess.updateLoadingState(z);
    }

    @Override // com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void showFee(FeeType feeType) {
        Intrinsics.checkNotNullParameter(feeType, "feeType");
        getBinding().feeView.init(this.fragment, this, feeType);
    }

    @Override // com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void showTransactionSuccess() {
        DialogsFactoryKt.showSuccessAlert$default(this.fragment, getResourceManager().getString(C3473R.string.status_ok), getResourceManager().getString(C3473R.string.cryptobox_stop_success), getResourceManager().getString(C3473R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p031ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void showTransactionError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showErrorAlert$default(this.fragment, getResourceManager().getString(C3473R.string.common_error), message, getResourceManager().getString(C3473R.string.common_ok), null, 8, null);
    }

    private final void setupColors() {
        ForkContentCryptoboxSuspensionBinding binding = getBinding();
        binding.buttonProcess.applyColors();
        ActionBarMenuItem setupColors$lambda$1$lambda$0 = binding.buttonClose;
        setupColors$lambda$1$lambda$0.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$1$lambda$0, "setupColors$lambda$1$lambda$0");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$1$lambda$0);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        AppCompatTextView textTitle = binding.textTitle;
        Intrinsics.checkNotNullExpressionValue(textTitle, "textTitle");
        AppCompatTextView textDescription = binding.textDescription;
        Intrinsics.checkNotNullExpressionValue(textDescription, "textDescription");
        ViewExtKt.setTextsColor(i, textTitle, textDescription);
        AppCompatTextView textTitle2 = binding.textTitle;
        Intrinsics.checkNotNullExpressionValue(textTitle2, "textTitle");
        ViewExtKt.withMediumTypeface(textTitle2);
    }

    private final void setupViews() {
        ForkContentCryptoboxSuspensionBinding binding = getBinding();
        binding.textTitle.setText(getResourceManager().getString(C3473R.string.cryptobox_stop_confirmation_title));
        binding.textDescription.setText(AndroidUtilities.replaceTags(getResourceManager().getString(C3473R.string.cryptobox_stop_confirmation_description)));
        binding.buttonProcess.setText(getResourceManager().getString(C3473R.string.cryptobox_details_stop));
        ActionBarMenuItem actionBarMenuItem = getBinding().buttonClose;
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setIcon(C3473R.C3475drawable.ic_close_white);
    }

    private final void setupListeners() {
        ForkContentCryptoboxSuspensionBinding binding = getBinding();
        BigActionButton buttonProcess = binding.buttonProcess;
        Intrinsics.checkNotNullExpressionValue(buttonProcess, "buttonProcess");
        ViewExtKt.safeThrottledClick$default(buttonProcess, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$setupListeners$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                CryptoBoxSuspensionPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = CryptoBoxSuspensionBottomSheetDialog.this.getPresenter();
                presenter.onStopClick();
            }
        }, 1, null);
        ActionBarMenuItem buttonClose = binding.buttonClose;
        Intrinsics.checkNotNullExpressionValue(buttonClose, "buttonClose");
        ViewExtKt.safeThrottledClick$default(buttonClose, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$setupListeners$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                CryptoBoxSuspensionBottomSheetDialog.this.dismiss();
            }
        }, 1, null);
    }

    /* compiled from: CryptoBoxSuspensionBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionBottomSheetDialog$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CryptoBoxSuspensionBottomSheetDialog newInstance(CryptoBoxTransactionAction transactionAction, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(transactionAction, "transactionAction");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new CryptoBoxSuspensionBottomSheetDialog(transactionAction, fragment);
        }
    }
}
