package com.iMe.p031ui.wallet.crypto.enter.pin;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.common.AppRxEvents;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.common.WalletRootFragment;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import javax.crypto.Cipher;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
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
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.databinding.ForkFragmentWalletEthEnterPinBinding;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.PasscodeView;
import org.telegram.p043ui.PasscodeActivity;
import timber.log.Timber;
/* compiled from: EnterWalletPinFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment */
/* loaded from: classes4.dex */
public final class EnterWalletPinFragment extends WalletAuthBaseFragment implements EnterWalletPinView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(EnterWalletPinFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(EnterWalletPinFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Function2<EnterPinCodeResult, MvpFragment, Unit> resultDelegate;
    private final EnterPinCodeScreenType screenType;

    /* compiled from: EnterWalletPinFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterPinCodeScreenType.values().length];
            try {
                iArr[EnterPinCodeScreenType.TOTAL_LOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterPinCodeScreenType.CHECK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment
    protected boolean shouldAskPinCode() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EnterWalletPinFragment(EnterPinCodeScreenType screenType, Function2<? super EnterPinCodeResult, ? super MvpFragment, Unit> resultDelegate) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(resultDelegate, "resultDelegate");
        this.screenType = screenType;
        this.resultDelegate = resultDelegate;
        Function0<EnterWalletPinPresenter> function0 = new Function0<EnterWalletPinPresenter>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final EnterWalletPinPresenter invoke() {
                Lazy lazy;
                final EnterWalletPinFragment enterWalletPinFragment = EnterWalletPinFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        EnterPinCodeScreenType enterPinCodeScreenType;
                        enterPinCodeScreenType = EnterWalletPinFragment.this.screenType;
                        return ParametersHolderKt.parametersOf(enterPinCodeScreenType);
                    }
                };
                lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<EnterWalletPinPresenter>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final EnterWalletPinPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(EnterWalletPinPresenter.class), qualifier, function03);
                    }
                });
                return (EnterWalletPinPresenter) lazy.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, EnterWalletPinPresenter.class.getName() + ".presenter", function0);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletEthEnterPinBinding>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletEthEnterPinBinding invoke() {
                return ForkFragmentWalletEthEnterPinBinding.inflate(BaseFragmentExtKt.getLayoutInflater(EnterWalletPinFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EnterWalletPinPresenter getPresenter() {
        return (EnterWalletPinPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ForkFragmentWalletEthEnterPinBinding getBinding() {
        return (ForkFragmentWalletEthEnterPinBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        handleBackPress();
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return !this.screenType.isTotalLock() || isLastWalletScreen();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupListeners();
        setupActionBar();
        setupPasscodeView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getBinding().passcodeView.onResume();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        getBinding().passcodeView.onPause();
        super.onPause();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getBinding().passcodeView.resetWalletLoadingAnimation();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void updateLoadingState(boolean z, boolean z2) {
        getBinding().passcodeView.updateLoadingState(z, z2);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void onSuccessEnterPinCode(String pin, String password) {
        Intrinsics.checkNotNullParameter(pin, "pin");
        Intrinsics.checkNotNullParameter(password, "password");
        getRxEventBus().publish(new AppRxEvents.SuccessEnterPinCode(this.screenType));
        this.resultDelegate.invoke(new EnterPinCodeResult.Success(pin, password), this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void onPinCodeErrorShake() {
        getBinding().passcodeView.onWalletPinCodeError();
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void onDeleteWalletSuccess() {
        postViewActionDelayed(150L, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                EnterWalletPinFragment.onDeleteWalletSuccess$lambda$1(EnterWalletPinFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDeleteWalletSuccess$lambda$1(EnterWalletPinFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = 0;
        for (BaseFragment baseFragment : this$0.parentLayout.getFragmentStack()) {
            if (baseFragment instanceof WalletAuthBaseFragment) {
                i++;
            }
        }
        if (i == 1) {
            this$0.presentFragment(WalletRootFragment.Companion.newInstance(), true);
            return;
        }
        this$0.parentLayout.finishWalletScreens();
        RxEventBus rxEventBus = this$0.getRxEventBus();
        rxEventBus.publish(DomainRxEvents.AllWalletsReset.INSTANCE);
        rxEventBus.publish(DomainRxEvents.SelectWalletCryptoTab.INSTANCE);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void openPasswordEnterScreen() {
        presentFragment(PasscodeActivity.newInstanceForWalletPinRestore());
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void openRestoreWalletScreen(String walletAddress) {
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        presentFragment(CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.Import(walletAddress, "")));
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void showDeleteWalletDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog = DialogUtils.createDialog(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                EnterWalletPinFragment.showDeleteWalletDialog$lambda$2(EnterWalletPinFragment.this);
            }
        }, null);
        showDialog(createDialog);
        DialogExtKt.makeRedPositiveButton(createDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteWalletDialog$lambda$2(EnterWalletPinFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().deleteWallets();
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void showForgotPasswordOptionsDialog() {
        showDialog(DialogsFactoryKt.createForgotPinOptionsBottomSheetDialog(this, new DialogInterface.OnClickListener() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                EnterWalletPinFragment.showForgotPasswordOptionsDialog$lambda$4(EnterWalletPinFragment.this, dialogInterface, i);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showForgotPasswordOptionsDialog$lambda$4(EnterWalletPinFragment this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onForgotPasscodeOptionSelected(i);
    }

    private final boolean isLastWalletScreen() {
        int i;
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
        Intrinsics.checkNotNullExpressionValue(fragmentStack, "fragmentStack");
        if ((fragmentStack instanceof Collection) && fragmentStack.isEmpty()) {
            i = 0;
        } else {
            i = 0;
            for (BaseFragment baseFragment : fragmentStack) {
                if ((baseFragment instanceof WalletAuthBaseFragment) && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleBackPress() {
        int lastIndex;
        int i = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            finishFragment();
            return;
        }
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
        Intrinsics.checkNotNullExpressionValue(fragmentStack, "fragmentStack");
        ArrayList arrayList = new ArrayList();
        for (Object obj : fragmentStack) {
            if (obj instanceof WalletAuthBaseFragment) {
                arrayList.add(obj);
            }
        }
        int i2 = 0;
        for (Object obj2 : arrayList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BaseFragment baseFragment = (BaseFragment) obj2;
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(arrayList);
            if (i2 == lastIndex) {
                baseFragment.finishFragment();
            } else {
                baseFragment.removeSelfFromStack();
            }
            i2 = i3;
        }
    }

    private final void setupActionBar() {
        this.actionBar.setAddToContainer(false);
        AppCompatImageView setupActionBar$lambda$6 = getBinding().imageBack;
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$6, "setupActionBar$lambda$6");
        ViewGroup.LayoutParams layoutParams = setupActionBar$lambda$6.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        ViewGroup.LayoutParams layoutParams3 = setupActionBar$lambda$6.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        layoutParams2.setMargins(((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin, (marginLayoutParams != null ? marginLayoutParams.topMargin : 0) + AndroidUtilities.statusBarHeight, ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        setupActionBar$lambda$6.setLayoutParams(layoutParams2);
        setupActionBar$lambda$6.setImageResource(C3558R.C3560drawable.ic_ab_back);
        ViewExtKt.setCircleRippleBackground(setupActionBar$lambda$6);
        ImageViewExtKt.setImageColor(setupActionBar$lambda$6, Theme.getColor(Theme.key_actionBarDefaultTitle));
        ViewExtKt.safeThrottledClick$default(setupActionBar$lambda$6, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$setupActionBar$1$2
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
                EnterWalletPinFragment.this.handleBackPress();
            }
        }, 1, null);
    }

    private final void setupPasscodeView() {
        PasscodeView passcodeView = getBinding().passcodeView;
        passcodeView.setWalletDelegate(new PasscodeView.WalletDelegate() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$setupPasscodeView$1$1
            @Override // org.telegram.p043ui.Components.PasscodeView.WalletDelegate
            public void onForgotPinCodeClicked() {
                EnterWalletPinPresenter presenter;
                presenter = EnterWalletPinFragment.this.getPresenter();
                presenter.onForgotPinClick();
            }

            @Override // org.telegram.p043ui.Components.PasscodeView.WalletDelegate
            public void onPinCodeEntered(String str) {
                EnterWalletPinPresenter presenter;
                presenter = EnterWalletPinFragment.this.getPresenter();
                if (str == null) {
                    str = "";
                }
                presenter.validatePin(str, false);
            }

            @Override // org.telegram.p043ui.Components.PasscodeView.WalletDelegate
            public void onFingerPrintConfirmed(Cipher cipher) {
                EnterWalletPinPresenter presenter;
                presenter = EnterWalletPinFragment.this.getPresenter();
                presenter.unlockWithFingerprint(cipher);
            }
        });
        passcodeView.onShow(false, false);
    }

    private final void setupListeners() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1455invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1455invoke(DomainRxEvents.CryptoEvent it) {
                RxEventBus rxEventBus2;
                EnterPinCodeScreenType enterPinCodeScreenType;
                Function2 function2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
                    EnterWalletPinFragment.this.removeSelfFromStack();
                    return;
                }
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletRestored.INSTANCE)) {
                    rxEventBus2 = EnterWalletPinFragment.this.getRxEventBus();
                    enterPinCodeScreenType = EnterWalletPinFragment.this.screenType;
                    rxEventBus2.publish(new AppRxEvents.SuccessEnterPinCode(enterPinCodeScreenType));
                    function2 = EnterWalletPinFragment.this.resultDelegate;
                    function2.invoke(new EnterPinCodeResult.Success(null, null, 3, null), EnterWalletPinFragment.this);
                    EnterWalletPinFragment.this.removeSelfFromStack();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        autoDispose(subscribe);
    }

    /* compiled from: EnterWalletPinFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final EnterWalletPinFragment newInstance(EnterPinCodeScreenType screenType, Function2<? super EnterPinCodeResult, ? super MvpFragment, Unit> resultDelegate) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            Intrinsics.checkNotNullParameter(resultDelegate, "resultDelegate");
            return new EnterWalletPinFragment(screenType, resultDelegate);
        }
    }
}
