package com.iMe.feature.socialMedias.webScreen;

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
import android.webkit.WebViewClient;
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
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.webScreen.SocialSideEffects;
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
import kotlin.collections.CollectionsKt;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkToolbarBinding;
import org.telegram.messenger.databinding.ForkWebScreenBinding;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: SocialWebScreen.kt */
/* loaded from: classes3.dex */
public final class SocialWebScreen extends Fragment implements KoinComponent {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SocialWebScreen.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;", 0))};
    private final NavArgsLazy args$delegate;
    private final FragmentViewBindingDelegate binding$delegate;
    private final Lazy resource$delegate;
    private final Lazy viewModel$delegate;

    public SocialWebScreen() {
        super(C3632R.layout.fork_web_screen);
        Lazy lazy;
        Lazy lazy2;
        this.binding$delegate = new FragmentViewBindingDelegate(ForkWebScreenBinding.class, this);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$special$$inlined$viewModel$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<SocialWebViewModel>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$special$$inlined$viewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v3, types: [com.iMe.feature.socialMedias.webScreen.SocialWebViewModel, androidx.lifecycle.ViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final SocialWebViewModel invoke() {
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
                resolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(SocialWebViewModel.class), viewModelStore, (i & 4) != 0 ? null : null, defaultViewModelCreationExtras, (i & 16) != 0 ? null : qualifier, AndroidKoinScopeExtKt.getKoinScope(fragment), (i & 64) != 0 ? null : function04);
                return resolveViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.args$delegate = new NavArgsLazy(Reflection.getOrCreateKotlinClass(SocialWebScreenArgs.class), new Function0<Bundle>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$special$$inlined$navArgs$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$special$$inlined$inject$default$1
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

    /* JADX INFO: Access modifiers changed from: private */
    public final SocialWebViewModel getViewModel() {
        return (SocialWebViewModel) this.viewModel$delegate.getValue();
    }

    private final SocialWebScreenArgs getArgs() {
        return (SocialWebScreenArgs) this.args$delegate.getValue();
    }

    private final ResourceManager getResource() {
        return (ResourceManager) this.resource$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ContainerHostExtensionsKt.observe(getViewModel(), this, new SocialWebScreen$onCreate$1(this), new SocialWebScreen$onCreate$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onCreate$render(SocialWebScreen socialWebScreen, SocialWebState socialWebState, Continuation continuation) {
        socialWebScreen.render(socialWebState);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onCreate$sideEffects(SocialWebScreen socialWebScreen, SocialSideEffects socialSideEffects, Continuation continuation) {
        socialWebScreen.sideEffects(socialSideEffects);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
        Intrinsics.checkNotNullExpressionValue(onBackPressedDispatcher, "requireActivity().onBackPressedDispatcher");
        OnBackPressedDispatcherKt.addCallback$default(onBackPressedDispatcher, getViewLifecycleOwner(), false, new Function1<OnBackPressedCallback, Unit>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$onViewCreated$1
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
                SocialWebScreen.this.showCloseDialog();
            }
        }, 2, null);
        initToolbar();
        setupWebView();
        SocialWebViewModel viewModel = getViewModel();
        SocialNetwork socialNetwork = getArgs().getSocialNetwork();
        Intrinsics.checkNotNullExpressionValue(socialNetwork, "args.socialNetwork");
        viewModel.onWebViewCreated(socialNetwork);
    }

    private final void render(SocialWebState socialWebState) {
        getBinding().toolbar.textTitle.setText(socialWebState.getTitleText());
        ProgressBar progressBar = getBinding().progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
        ViewExtKt.visible(progressBar, socialWebState.isLoading());
    }

    private final void sideEffects(SocialSideEffects socialSideEffects) {
        if (socialSideEffects instanceof SocialSideEffects.LoadUrl) {
            getBinding().webView.loadUrl(((SocialSideEffects.LoadUrl) socialSideEffects).getUrl());
        } else if (Intrinsics.areEqual(socialSideEffects, SocialSideEffects.FinishAuth.INSTANCE)) {
            requireActivity().finish();
        } else if (Intrinsics.areEqual(socialSideEffects, SocialSideEffects.ShowError.INSTANCE)) {
            ContextExtKt.toast(getResource().getString(C3632R.string.social_unable_to_load_page));
        } else if (socialSideEffects instanceof SocialSideEffects.ShowResetAlert) {
            showResetDialog(((SocialSideEffects.ShowResetAlert) socialSideEffects).getNetworkName());
        } else if (Intrinsics.areEqual(socialSideEffects, SocialSideEffects.RemoveCookies.INSTANCE)) {
            CookieManager.getInstance().removeAllCookies(null);
        } else if (socialSideEffects instanceof SocialSideEffects.OpenInApp) {
            Browser.openUrl(requireActivity(), ((SocialSideEffects.OpenInApp) socialSideEffects).getUrl());
        } else if (socialSideEffects instanceof SocialSideEffects.ShowMenu) {
            showImageMenu(((SocialSideEffects.ShowMenu) socialSideEffects).getSocialNetwork());
        }
    }

    private final void setupWebView() {
        WebView webView = getBinding().webView;
        WebSettings settings = webView.getSettings();
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        webView.setLayerType(2, null);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new WebViewClient());
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
        ImageView initToolbar$lambda$4$lambda$2 = forkToolbarBinding.imageBack;
        initToolbar$lambda$4$lambda$2.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
        Intrinsics.checkNotNullExpressionValue(initToolbar$lambda$4$lambda$2, "initToolbar$lambda$4$lambda$2");
        ViewExtKt.safeThrottledClick$default(initToolbar$lambda$4$lambda$2, 0L, new Function1<View, Unit>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$initToolbar$1$1$1
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
                SocialWebScreen.this.showCloseDialog();
            }
        }, 1, null);
        ImageView initToolbar$lambda$4$lambda$3 = forkToolbarBinding.imageMenu;
        initToolbar$lambda$4$lambda$3.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
        Intrinsics.checkNotNullExpressionValue(initToolbar$lambda$4$lambda$3, "initToolbar$lambda$4$lambda$3");
        ViewExtKt.safeThrottledClick$default(initToolbar$lambda$4$lambda$3, 0L, new Function1<View, Unit>() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$initToolbar$1$2$1
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
                SocialWebViewModel viewModel;
                Intrinsics.checkNotNullParameter(it, "it");
                viewModel = SocialWebScreen.this.getViewModel();
                viewModel.onMenuClicked();
            }
        }, 1, null);
    }

    private final void showImageMenu(SocialNetwork socialNetwork) {
        List mutableListOf;
        String socialName = socialNetwork.getSocialName();
        String string = getResource().getString(C3632R.string.social_reset_menu_item);
        int i = C3632R.C3634drawable.msg_delete;
        int i2 = Theme.key_color_red;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new MenuItem(getResource().getString(C3632R.string.social_social_open_in_menu_item, socialName), C3632R.C3634drawable.msg_openin, 0, 0, new SocialWebScreen$showImageMenu$menuItems$1(getViewModel()), 12, null), new MenuItem(string, i, Theme.getColor(i2), Theme.getColor(i2), new SocialWebScreen$showImageMenu$menuItems$2(getViewModel())));
        if (!socialNetwork.getHasEditAccess()) {
            CollectionsKt.removeLast(mutableListOf);
        }
        ImageView imageView = getBinding().toolbar.imageMenu;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.toolbar.imageMenu");
        PopupMenuExtKt.showPopupMenu(imageView, mutableListOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCloseDialog() {
        String capitalizeOnlyFirstSymbol = StringExtKt.capitalizeOnlyFirstSymbol(getArgs().getSocialNetwork().getSocial().name());
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(requireContext, new DialogModel(getResource().getString(C3632R.string.social_exit_confirmation_title), getResource().getString(C3632R.string.social_exit_confirmation_message, capitalizeOnlyFirstSymbol), getResource().getString(C3632R.string.social_web_cancel_button), getResource().getString(C3632R.string.social_web_exit_button)), new Callbacks$Callback() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                SocialWebScreen.showCloseDialog$lambda$5(SocialWebScreen.this);
            }
        }, null, 8, null);
        createDialog$default.show();
        Unit unit = Unit.INSTANCE;
        createDialog$default.redPositive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCloseDialog$lambda$5(SocialWebScreen this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireActivity().finish();
    }

    private final void showResetDialog(String str) {
        String string = getResource().getString(C3632R.string.social_reset_account_title, str);
        String string2 = getResource().getString(C3632R.string.social_reset_account_message, str);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        DialogModel dialogModel = new DialogModel(string, string2, getResource().getString(C3632R.string.social_reset_account_negative_button), getResource().getString(C3632R.string.social_reset_account_positive_button));
        final SocialWebViewModel viewModel = getViewModel();
        AlertDialog createDialog$default = DialogUtils.createDialog$default(requireContext, dialogModel, new Callbacks$Callback() { // from class: com.iMe.feature.socialMedias.webScreen.SocialWebScreen$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                SocialWebViewModel.this.onResetClicked();
            }
        }, null, 8, null);
        createDialog$default.show();
        Unit unit = Unit.INSTANCE;
        createDialog$default.redPositive();
    }
}
