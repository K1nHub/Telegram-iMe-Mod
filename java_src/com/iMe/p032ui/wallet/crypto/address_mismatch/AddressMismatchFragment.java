package com.iMe.p032ui.wallet.crypto.address_mismatch;

import android.app.Activity;
import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p032ui.base.WalletAuthFragment;
import com.iMe.p032ui.custom.ActionButton;
import com.iMe.p032ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkFragmentWalletEthAddressMismatchBinding;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Components.RLottieImageView;
/* compiled from: AddressMismatchFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment */
/* loaded from: classes3.dex */
public final class AddressMismatchFragment extends WalletAuthFragment implements AddressMismatchView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(AddressMismatchFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(AddressMismatchFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.iMe.p032ui.base.WalletAuthFragment
    public boolean shouldAskPinCode() {
        return false;
    }

    public AddressMismatchFragment() {
        AddressMismatchFragment$presenter$2 addressMismatchFragment$presenter$2 = new AddressMismatchFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, AddressMismatchPresenter.class.getName() + ".presenter", addressMismatchFragment$presenter$2);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new AddressMismatchFragment$binding$2(this), 1, (Object) null);
    }

    private final AddressMismatchPresenter getPresenter() {
        return (AddressMismatchPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ForkFragmentWalletEthAddressMismatchBinding getBinding() {
        return (ForkFragmentWalletEthAddressMismatchBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupTexts();
        setupImage();
        RelativeLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getBinding().textTitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "chat_messagePanelText"), new ThemeDescription(getBinding().textDescription, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(getBinding().buttonDelete, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                AddressMismatchFragment.getThemeDescriptions$lambda$0(AddressMismatchFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "dialogTextRed"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(AddressMismatchFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().buttonBackup.applyColors();
    }

    @Override // com.iMe.p032ui.wallet.crypto.address_mismatch.AddressMismatchView
    public void closeScreen(long j) {
        postViewActionDelayed(j, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                AddressMismatchFragment.closeScreen$lambda$1(AddressMismatchFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void closeScreen$lambda$1(AddressMismatchFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    private final void setupActionBar() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        c3381ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        c3381ActionBar.setCastShadows(false);
    }

    private final void setupTexts() {
        ForkFragmentWalletEthAddressMismatchBinding binding = getBinding();
        binding.textTitle.setText(getResourceManager().getString(C3316R.string.wallet_eth_address_mismatch_title));
        binding.buttonDelete.setText(getResourceManager().getString(C3316R.string.wallet_eth_address_mismatch_btn_delete));
        binding.buttonBackup.setText(getResourceManager().getString(C3316R.string.wallet_eth_address_mismatch_btn_backup));
        AppCompatTextView appCompatTextView = binding.textDescription;
        appCompatTextView.setText(getResourceManager().getString(C3316R.string.wallet_eth_address_mismatch_description));
        appCompatTextView.setMovementMethod(new ScrollingMovementMethod());
    }

    private final void setupImage() {
        RLottieImageView rLottieImageView = getBinding().imageLogo;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3316R.C3321raw.fork_address_mismatch, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
    }

    private final void setupColors() {
        ForkFragmentWalletEthAddressMismatchBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        AppCompatButton setupColors$lambda$7$lambda$6 = binding.buttonDelete;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$7$lambda$6, "setupColors$lambda$7$lambda$6");
        ViewExtKt.withMediumTypeface(setupColors$lambda$7$lambda$6);
        setupColors$lambda$7$lambda$6.setTextColor(Theme.getColor("dialogTextRed"));
        binding.textTitle.setTextColor(Theme.getColor("chat_messagePanelText"));
        binding.textDescription.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
    }

    private final void setupListeners() {
        ForkFragmentWalletEthAddressMismatchBinding binding = getBinding();
        ActionButton buttonBackup = binding.buttonBackup;
        Intrinsics.checkNotNullExpressionValue(buttonBackup, "buttonBackup");
        ViewExtKt.safeThrottledClick$default(buttonBackup, 0L, new AddressMismatchFragment$setupListeners$1$1(this), 1, null);
        AppCompatButton buttonDelete = binding.buttonDelete;
        Intrinsics.checkNotNullExpressionValue(buttonDelete, "buttonDelete");
        ViewExtKt.safeThrottledClick$default(buttonDelete, 0L, new AddressMismatchFragment$setupListeners$1$2(this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openBlockchainsWalletsManagementScreen() {
        PinCodeCoordinator pinCodeCoordinator = getPinCodeCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        PinCodeCoordinator.start$default(pinCodeCoordinator, parentLayout, BlockchainsManagementFragment.Companion.newInstance(), null, false, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDeleteWalletDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, getPresenter().getDeleteWalletDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                AddressMismatchFragment.showDeleteWalletDialog$lambda$9(AddressMismatchFragment.this);
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteWalletDialog$lambda$9(AddressMismatchFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AddressMismatchPresenter.deleteActiveWallet$default(this$0.getPresenter(), 0L, 1, null);
    }

    /* compiled from: AddressMismatchFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AddressMismatchFragment newInstance() {
            return new AddressMismatchFragment();
        }
    }
}
