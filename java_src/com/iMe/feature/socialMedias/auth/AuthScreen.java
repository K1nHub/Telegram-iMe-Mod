package com.iMe.feature.socialMedias.auth;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import com.iMe.common.viewBinding.FragmentViewBindingDelegate;
import com.iMe.feature.socialMedias.SocialAuthDomain;
import com.iMe.feature.socialMedias.auth.AuthSideEffects;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.popupMenu.MenuItem;
import com.iMe.p030ui.popupMenu.PopupMenuExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.koin.android.ext.android.AndroidKoinScopeExtKt;
import org.koin.androidx.viewmodel.GetViewModelKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.databinding.ForkToolbarBinding;
import org.telegram.messenger.databinding.ForkWebScreenBinding;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: AuthScreen.kt */
/* loaded from: classes3.dex */
public final class AuthScreen extends Fragment implements KoinComponent {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(AuthScreen.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;", 0))};
    private final NavArgsLazy args$delegate;
    private final FragmentViewBindingDelegate binding$delegate;
    private final Lazy resource$delegate;
    private final Lazy viewModel$delegate;

    public AuthScreen() {
        super(C3630R.layout.fork_web_screen);
        Lazy lazy;
        Lazy lazy2;
        this.binding$delegate = new FragmentViewBindingDelegate(ForkWebScreenBinding.class, this);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$special$$inlined$viewModel$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<AuthViewModel>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$special$$inlined$viewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v3, types: [com.iMe.feature.socialMedias.auth.AuthViewModel, androidx.lifecycle.ViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final AuthViewModel invoke() {
                CreationExtras defaultViewModelCreationExtras;
                ?? resolveViewModel;
                Fragment fragment = Fragment.this;
                Qualifier qualifier = r2;
                Function0 function02 = function0;
                Function0 function03 = r4;
                Function0 function04 = r5;
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) function02.invoke()).getViewModelStore();
                if (function03 == null || (defaultViewModelCreationExtras = (CreationExtras) function03.invoke()) == null) {
                    defaultViewModelCreationExtras = fragment.getDefaultViewModelCreationExtras();
                    Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
                }
                resolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(AuthViewModel.class), viewModelStore, (i & 4) != 0 ? null : null, defaultViewModelCreationExtras, (i & 16) != 0 ? null : qualifier, AndroidKoinScopeExtKt.getKoinScope(fragment), (i & 64) != 0 ? null : function04);
                return resolveViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.args$delegate = new NavArgsLazy(Reflection.getOrCreateKotlinClass(AuthScreenArgs.class), new Function0<Bundle>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$special$$inlined$navArgs$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = Fragment.this.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + Fragment.this + " has null arguments");
            }
        });
        lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$special$$inlined$inject$default$1
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
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function02);
            }
        });
        this.resource$delegate = lazy2;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ForkWebScreenBinding getBinding() {
        return (ForkWebScreenBinding) this.binding$delegate.getValue2((Fragment) this, $$delegatedProperties[0]);
    }

    private final AuthViewModel getViewModel() {
        return (AuthViewModel) this.viewModel$delegate.getValue();
    }

    private final AuthScreenArgs getArgs() {
        return (AuthScreenArgs) this.args$delegate.getValue();
    }

    private final ResourceManager getResource() {
        return (ResourceManager) this.resource$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ContainerHostExtensionsKt.observe(getViewModel(), this, new AuthScreen$onCreate$1(this), new AuthScreen$onCreate$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onCreate$render(AuthScreen authScreen, AuthState authState, Continuation continuation) {
        authScreen.render(authState);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onCreate$sideEffects(AuthScreen authScreen, AuthSideEffects authSideEffects, Continuation continuation) {
        authScreen.sideEffects(authSideEffects);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
        Intrinsics.checkNotNullExpressionValue(onBackPressedDispatcher, "requireActivity().onBackPressedDispatcher");
        OnBackPressedDispatcherKt.addCallback$default(onBackPressedDispatcher, getViewLifecycleOwner(), false, new Function1<OnBackPressedCallback, Unit>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$onViewCreated$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(OnBackPressedCallback onBackPressedCallback) {
                invoke2(onBackPressedCallback);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(OnBackPressedCallback addCallback) {
                Intrinsics.checkNotNullParameter(addCallback, "$this$addCallback");
                AuthScreen.this.showCloseDialog();
            }
        }, 2, null);
        initToolbar();
        setupWebView();
        AuthViewModel viewModel = getViewModel();
        SocialAuthDomain socialAuthDomain = getArgs().getSocialAuthDomain();
        Intrinsics.checkNotNullExpressionValue(socialAuthDomain, "args.socialAuthDomain");
        viewModel.onWebViewCreated(socialAuthDomain);
    }

    private final void render(AuthState authState) {
        getBinding().toolbar.textTitle.setText(authState.getTitleText());
        ProgressBar progressBar = getBinding().progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
        ViewExtKt.visible(progressBar, authState.isLoading());
    }

    private final void sideEffects(AuthSideEffects authSideEffects) {
        if (authSideEffects instanceof AuthSideEffects.LoadUrl) {
            AuthSideEffects.LoadUrl loadUrl = (AuthSideEffects.LoadUrl) authSideEffects;
            getBinding().webView.loadUrl(loadUrl.getUrl(), loadUrl.getAuthHeader());
        } else if (authSideEffects instanceof AuthSideEffects.ShowError) {
            showErrorMessageAndClose(((AuthSideEffects.ShowError) authSideEffects).getMessage());
        } else if (Intrinsics.areEqual(authSideEffects, AuthSideEffects.FinishAuth.INSTANCE)) {
            closeAuthScreen();
        } else if (Intrinsics.areEqual(authSideEffects, AuthSideEffects.ReloadPage.INSTANCE)) {
            getBinding().webView.reload();
        } else if (Intrinsics.areEqual(authSideEffects, AuthSideEffects.RemoveCookies.INSTANCE)) {
            CookieManager.getInstance().removeAllCookies(null);
        } else if (Intrinsics.areEqual(authSideEffects, AuthSideEffects.ShowAccessError.INSTANCE)) {
            showErrorMessageAndClose(getResource().getString(C3630R.string.social_access_error));
        }
    }

    private final void initToolbar() {
        Window window = requireActivity().getWindow();
        int i = Theme.key_actionBarDefault;
        window.setStatusBarColor(Theme.getColor(i));
        ForkToolbarBinding forkToolbarBinding = getBinding().toolbar;
        int color = Theme.getColor(Theme.key_actionBarDefaultIcon);
        ConstraintLayout root = forkToolbarBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "root");
        ViewExtKt.visible$default(root, false, 1, null);
        forkToolbarBinding.getRoot().setBackgroundColor(Theme.getColor(i));
        ImageView initToolbar$lambda$2$lambda$0 = forkToolbarBinding.imageBack;
        initToolbar$lambda$2$lambda$0.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
        Intrinsics.checkNotNullExpressionValue(initToolbar$lambda$2$lambda$0, "initToolbar$lambda$2$lambda$0");
        ViewExtKt.safeThrottledClick$default(initToolbar$lambda$2$lambda$0, 0L, new Function1<View, Unit>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$initToolbar$1$1$1
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
                AuthScreen.this.showCloseDialog();
            }
        }, 1, null);
        ImageView initToolbar$lambda$2$lambda$1 = forkToolbarBinding.imageMenu;
        initToolbar$lambda$2$lambda$1.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
        Intrinsics.checkNotNullExpressionValue(initToolbar$lambda$2$lambda$1, "initToolbar$lambda$2$lambda$1");
        ViewExtKt.safeThrottledClick$default(initToolbar$lambda$2$lambda$1, 0L, new Function1<View, Unit>() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$initToolbar$1$2$1
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
                AuthScreen.this.showPopupMenu();
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPopupMenu() {
        List mutableListOf;
        String string = getResource().getString(C3630R.string.social_clear_cache_menu_item);
        int i = C3630R.C3632drawable.msg_delete;
        int i2 = Theme.key_color_red;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new MenuItem(getResource().getString(C3630R.string.social_refresh_page_menu_item), C3630R.C3632drawable.msg_retry, 0, 0, new AuthScreen$showPopupMenu$menuItems$1(getViewModel()), 12, null), new MenuItem(string, i, Theme.getColor(i2), Theme.getColor(i2), new AuthScreen$showPopupMenu$menuItems$2(getViewModel())));
        ImageView imageView = getBinding().toolbar.imageMenu;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.toolbar.imageMenu");
        PopupMenuExtKt.showPopupMenu(imageView, mutableListOf);
    }

    private final void setupWebView() {
        WebView webView = getBinding().webView;
        WebSettings settings = webView.getSettings();
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        webView.setLayerType(2, null);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new AuthWebViewClient(new AuthScreen$setupWebView$1$2(getViewModel()), new AuthScreen$setupWebView$1$3(getViewModel()), new AuthScreen$setupWebView$1$4(getViewModel()), new AuthScreen$setupWebView$1$5(getViewModel())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCloseDialog() {
        String capitalizeOnlyFirstSymbol = StringExtKt.capitalizeOnlyFirstSymbol(getArgs().getSocialAuthDomain().getSocialType().name());
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        DialogUtils.createDialog$default(requireContext, new DialogModel(getString(C3630R.string.social_connect_account_title, capitalizeOnlyFirstSymbol), getString(C3630R.string.social_connect_account_message), getString(C3630R.string.social_connect_account_negative_button), getString(C3630R.string.social_connect_account_positive_button)), new Callbacks$Callback() { // from class: com.iMe.feature.socialMedias.auth.AuthScreen$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                AuthScreen.this.closeAuthScreen();
            }
        }, null, 8, null).show();
    }

    private final void showErrorMessageAndClose(String str) {
        ContextExtKt.toast(str);
        Unit unit = Unit.INSTANCE;
        closeAuthScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeAuthScreen() {
        requireActivity().finish();
    }
}
