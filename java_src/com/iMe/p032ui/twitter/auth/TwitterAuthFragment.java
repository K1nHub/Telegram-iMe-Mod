package com.iMe.p032ui.twitter.auth;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.twitter.TwitterAuthResult;
import com.iMe.p032ui.base.mvp.MvpFragment;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.databinding.ForkFragmentWebViewBinding;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: TwitterAuthFragment.kt */
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthFragment */
/* loaded from: classes3.dex */
public final class TwitterAuthFragment extends MvpFragment implements TwitterAuthView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TwitterAuthFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TwitterAuthFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Callbacks$Callback1<TwitterAuthResult> onAuthResultAction;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final String token;
    private final String websiteUrl;

    public static final TwitterAuthFragment newInstance(String str, String str2, Callbacks$Callback1<TwitterAuthResult> callbacks$Callback1) {
        return Companion.newInstance(str, str2, callbacks$Callback1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupWebView$lambda$3$lambda$2(Boolean bool) {
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public TwitterAuthFragment(String websiteUrl, String token, Callbacks$Callback1<TwitterAuthResult> onAuthResultAction) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(websiteUrl, "websiteUrl");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(onAuthResultAction, "onAuthResultAction");
        this.websiteUrl = websiteUrl;
        this.token = token;
        this.onAuthResultAction = onAuthResultAction;
        TwitterAuthFragment$presenter$2 twitterAuthFragment$presenter$2 = new TwitterAuthFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, TwitterAuthPresenter.class.getName() + ".presenter", twitterAuthFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new TwitterAuthFragment$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new TwitterAuthFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TwitterAuthPresenter getPresenter() {
        return (TwitterAuthPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ForkFragmentWebViewBinding getBinding() {
        return (ForkFragmentWebViewBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupWebView();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p032ui.twitter.auth.TwitterAuthView
    public void onAuthResult(TwitterAuthResult authResult) {
        Intrinsics.checkNotNullParameter(authResult, "authResult");
        finishFragment();
        this.onAuthResultAction.invoke(authResult);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        Map<String, String> mapOf;
        if (!z || z2) {
            return;
        }
        WebView webView = getBinding().webView;
        String str = this.websiteUrl;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m94to(RtspHeaders.AUTHORIZATION, this.token));
        webView.loadUrl(str, mapOf);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        c3381ActionBar.setBackButtonImage(C3316R.C3318drawable.ic_ab_back);
        c3381ActionBar.setAllowOverlayTitle(true);
        c3381ActionBar.setTitle(getResourceManager().getString(C3316R.string.twitter_auth_title));
        c3381ActionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.twitter.auth.TwitterAuthFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    TwitterAuthFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupWebView() {
        WebView webView = getBinding().webView;
        WebSettings settings = webView.getSettings();
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        webView.setLayerType(2, null);
        CookieManager.getInstance().removeAllCookies(TwitterAuthFragment$$ExternalSyntheticLambda0.INSTANCE);
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.iMe.ui.twitter.auth.TwitterAuthFragment$setupWebView$1$3
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i) {
                ForkFragmentWebViewBinding binding;
                binding = TwitterAuthFragment.this.getBinding();
                binding.progressBar.setProgress(i);
            }
        });
        webView.setWebViewClient(new WebViewClient() { // from class: com.iMe.ui.twitter.auth.TwitterAuthFragment$setupWebView$1$4
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                TwitterAuthPresenter presenter;
                TwitterAuthPresenter presenter2;
                Uri url = webResourceRequest != null ? webResourceRequest.getUrl() : null;
                if (url == null) {
                    return true;
                }
                presenter = TwitterAuthFragment.this.getPresenter();
                String uri = url.toString();
                Intrinsics.checkNotNullExpressionValue(uri, "url.toString()");
                if (presenter.isAuthResultUrl(uri)) {
                    presenter2 = TwitterAuthFragment.this.getPresenter();
                    presenter2.processAuthResult(url);
                    return true;
                }
                if (webView2 != null) {
                    webView2.loadUrl(url.toString());
                }
                return false;
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                ForkFragmentWebViewBinding binding;
                super.onPageStarted(webView2, str, bitmap);
                binding = TwitterAuthFragment.this.getBinding();
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
                ViewExtKt.visible(progressBar);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                ForkFragmentWebViewBinding binding;
                binding = TwitterAuthFragment.this.getBinding();
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
                ViewExtKt.gone(progressBar);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                ForkFragmentWebViewBinding binding;
                binding = TwitterAuthFragment.this.getBinding();
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
                ViewExtKt.gone(progressBar);
            }
        });
    }

    /* compiled from: TwitterAuthFragment.kt */
    /* renamed from: com.iMe.ui.twitter.auth.TwitterAuthFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TwitterAuthFragment newInstance(String url, String token, Callbacks$Callback1<TwitterAuthResult> onAuthResultAction) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(onAuthResultAction, "onAuthResultAction");
            return new TwitterAuthFragment(url, token, onAuthResultAction);
        }
    }
}
