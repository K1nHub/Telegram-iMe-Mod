package com.iMe.p031ui.wallet.crypto.enter.pin;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.common.AppRxEvents;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import javax.crypto.Cipher;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.databinding.ForkFragmentWalletEthEnterPinBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.PasscodeView;
import org.telegram.p044ui.PasscodeActivity;
/* compiled from: EnterWalletPinFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment */
/* loaded from: classes3.dex */
public final class EnterWalletPinFragment extends WalletAuthFragment implements EnterWalletPinView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(EnterWalletPinFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(EnterWalletPinFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Function2<EnterPinCodeResult, MvpFragment, Unit> resultDelegate;
    private final EnterPinCodeScreenType screenType;

    /* compiled from: EnterWalletPinFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$WhenMappings */
    /* loaded from: classes3.dex */
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

    @Override // com.iMe.p031ui.base.WalletAuthFragment
    public boolean shouldAskPinCode() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EnterWalletPinFragment(EnterPinCodeScreenType screenType, Function2<? super EnterPinCodeResult, ? super MvpFragment, Unit> resultDelegate) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(resultDelegate, "resultDelegate");
        this.screenType = screenType;
        this.resultDelegate = resultDelegate;
        EnterWalletPinFragment$presenter$2 enterWalletPinFragment$presenter$2 = new EnterWalletPinFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, EnterWalletPinPresenter.class.getName() + ".presenter", enterWalletPinFragment$presenter$2);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new EnterWalletPinFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EnterWalletPinPresenter getPresenter() {
        return (EnterWalletPinPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ForkFragmentWalletEthEnterPinBinding getBinding() {
        return (ForkFragmentWalletEthEnterPinBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        handleBackPress();
        return false;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
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
    public void redirectScreenToPasswordEnter() {
        onForgotPinClick();
    }

    @Override // com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getBinding().passcodeView.onResume();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        getBinding().passcodeView.onPause();
        super.onPause();
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
                if ((baseFragment instanceof WalletAuthFragment) && (i = i + 1) < 0) {
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
            if (obj instanceof WalletAuthFragment) {
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
        AppCompatImageView setupActionBar$lambda$1 = getBinding().imageBack;
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$1, "setupActionBar$lambda$1");
        ViewGroup.LayoutParams layoutParams = setupActionBar$lambda$1.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        ViewGroup.LayoutParams layoutParams3 = setupActionBar$lambda$1.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        layoutParams2.setMargins(((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin, (marginLayoutParams != null ? marginLayoutParams.topMargin : 0) + AndroidUtilities.statusBarHeight, ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        setupActionBar$lambda$1.setLayoutParams(layoutParams2);
        setupActionBar$lambda$1.setImageResource(C3242R.C3244drawable.ic_ab_back);
        ViewExtKt.setCircleRippleBackground(setupActionBar$lambda$1);
        ViewExtKt.setImageColor(setupActionBar$lambda$1, Theme.getColor("actionBarDefaultTitle"));
        ViewExtKt.safeThrottledClick$default(setupActionBar$lambda$1, 0L, new EnterWalletPinFragment$setupActionBar$1$2(this), 1, null);
    }

    private final void setupPasscodeView() {
        PasscodeView passcodeView = getBinding().passcodeView;
        passcodeView.setWalletDelegate(new PasscodeView.WalletDelegate() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$setupPasscodeView$1$1
            @Override // org.telegram.p044ui.Components.PasscodeView.WalletDelegate
            public void onForgotPinCodeClicked() {
                EnterWalletPinFragment.this.onForgotPinClick();
            }

            @Override // org.telegram.p044ui.Components.PasscodeView.WalletDelegate
            public void onPinCodeEntered(String str) {
                EnterWalletPinPresenter presenter;
                presenter = EnterWalletPinFragment.this.getPresenter();
                if (str == null) {
                    str = "";
                }
                presenter.validatePin(str);
            }

            @Override // org.telegram.p044ui.Components.PasscodeView.WalletDelegate
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2126x64e4ff35(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2127x64e4ff36(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onForgotPinClick() {
        presentFragment(PasscodeActivity.newInstanceForWalletPinRestore());
    }

    /* compiled from: EnterWalletPinFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$Companion */
    /* loaded from: classes3.dex */
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
