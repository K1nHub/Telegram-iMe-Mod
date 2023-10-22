package com.iMe.p030ui.wallet.crypto.address_mismatch;

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
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.ActionButton;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkFragmentWalletEthAddressMismatchBinding;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Components.RLottieImageView;
/* compiled from: AddressMismatchFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment */
/* loaded from: classes3.dex */
public final class AddressMismatchFragment extends WalletAuthBaseFragment implements AddressMismatchView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(AddressMismatchFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(AddressMismatchFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment
    protected boolean shouldAskPinCode() {
        return false;
    }

    public AddressMismatchFragment() {
        Function0<AddressMismatchPresenter> function0 = new Function0<AddressMismatchPresenter>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AddressMismatchPresenter invoke() {
                Lazy lazy;
                final AddressMismatchFragment addressMismatchFragment = AddressMismatchFragment.this;
                lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<AddressMismatchPresenter>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final AddressMismatchPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(AddressMismatchPresenter.class), qualifier, function02);
                    }
                });
                return (AddressMismatchPresenter) lazy.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, AddressMismatchPresenter.class.getName() + ".presenter", function0);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletEthAddressMismatchBinding>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletEthAddressMismatchBinding invoke() {
                return ForkFragmentWalletEthAddressMismatchBinding.inflate(BaseFragmentExtKt.getLayoutInflater(AddressMismatchFragment.this));
            }
        }, 1, (Object) null);
    }

    private final AddressMismatchPresenter getPresenter() {
        return (AddressMismatchPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ForkFragmentWalletEthAddressMismatchBinding getBinding() {
        return (ForkFragmentWalletEthAddressMismatchBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3702ActionBar c3702ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(c3702ActionBar, i, null, null, null, null, i2), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2), new ThemeDescription(getBinding().textTitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_chat_messagePanelText), new ThemeDescription(getBinding().textDescription, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getBinding().buttonDelete, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                AddressMismatchFragment.getThemeDescriptions$lambda$0(AddressMismatchFragment.this);
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_text_RedRegular));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(AddressMismatchFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().buttonBackup.applyColors();
    }

    @Override // com.iMe.p030ui.wallet.crypto.address_mismatch.AddressMismatchView
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
        C3702ActionBar c3702ActionBar = this.actionBar;
        c3702ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3702ActionBar.setCastShadows(false);
    }

    private final void setupTexts() {
        ForkFragmentWalletEthAddressMismatchBinding binding = getBinding();
        binding.textTitle.setText(getResourceManager().getString(C3630R.string.wallet_eth_address_mismatch_title));
        binding.buttonDelete.setText(getResourceManager().getString(C3630R.string.wallet_eth_address_mismatch_btn_delete));
        binding.buttonBackup.setText(getResourceManager().getString(C3630R.string.wallet_eth_address_mismatch_btn_backup));
        AppCompatTextView appCompatTextView = binding.textDescription;
        appCompatTextView.setText(getResourceManager().getString(C3630R.string.wallet_eth_address_mismatch_description));
        appCompatTextView.setMovementMethod(new ScrollingMovementMethod());
    }

    private final void setupImage() {
        RLottieImageView rLottieImageView = getBinding().imageLogo;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3630R.raw.fork_address_mismatch, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
    }

    private final void setupColors() {
        ForkFragmentWalletEthAddressMismatchBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        AppCompatButton setupColors$lambda$7$lambda$6 = binding.buttonDelete;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$7$lambda$6, "setupColors$lambda$7$lambda$6");
        ViewExtKt.withMediumTypeface(setupColors$lambda$7$lambda$6);
        setupColors$lambda$7$lambda$6.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        binding.textTitle.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        binding.textDescription.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
    }

    private final void setupListeners() {
        ForkFragmentWalletEthAddressMismatchBinding binding = getBinding();
        ActionButton buttonBackup = binding.buttonBackup;
        Intrinsics.checkNotNullExpressionValue(buttonBackup, "buttonBackup");
        ViewExtKt.safeThrottledClick$default(buttonBackup, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$setupListeners$1$1
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
                AddressMismatchFragment.this.openBlockchainsWalletsManagementScreen();
            }
        }, 1, null);
        AppCompatButton buttonDelete = binding.buttonDelete;
        Intrinsics.checkNotNullExpressionValue(buttonDelete, "buttonDelete");
        ViewExtKt.safeThrottledClick$default(buttonDelete, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$setupListeners$1$2
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
                AddressMismatchFragment.this.showDeleteWalletDialog();
            }
        }, 1, null);
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
