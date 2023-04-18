package com.iMe.p031ui.wallet.crypto.buy.processing;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.google.android.gms.common.internal.ImagesContract;
import com.iMe.model.wallet.crypto.simplex.PaymentResult;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.BundleExtractorDelegate;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.io.File;
import java.util.ArrayList;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlin.text.Charsets;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.databinding.ForkFragmentWebViewBinding;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
/* compiled from: SimplexWebViewProcessingFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment */
/* loaded from: classes3.dex */
public final class SimplexWebViewProcessingFragment extends WalletAuthFragment implements SimplexWebViewProcessingView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SimplexWebViewProcessingFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(SimplexWebViewProcessingFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;", 0)), Reflection.property1(new PropertyReference1Impl(SimplexWebViewProcessingFragment.class, ImagesContract.URL, "getUrl()Ljava/lang/String;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private String mCameraPhotoPath;
    private ValueCallback<Uri[]> mFilePathCallback;
    private final MoxyKtxDelegate presenter$delegate;
    private final Function1<PaymentResult, Unit> resultDelegate;
    private final ReadWriteProperty url$delegate;

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimplexWebViewProcessingFragment(Function1<? super PaymentResult, Unit> resultDelegate) {
        Intrinsics.checkNotNullParameter(resultDelegate, "resultDelegate");
        this.resultDelegate = resultDelegate;
        SimplexWebViewProcessingFragment$presenter$2 simplexWebViewProcessingFragment$presenter$2 = new SimplexWebViewProcessingFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, SimplexWebViewProcessingPresenter.class.getName() + ".presenter", simplexWebViewProcessingFragment$presenter$2);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SimplexWebViewProcessingFragment$binding$2(this), 1, (Object) null);
        this.url$delegate = new BundleExtractorDelegate(new SimplexWebViewProcessingFragment$special$$inlined$argument$1("url_arg", "about:blank"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimplexWebViewProcessingPresenter getPresenter() {
        return (SimplexWebViewProcessingPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ForkFragmentWebViewBinding getBinding() {
        return (ForkFragmentWebViewBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final String getUrl() {
        return (String) this.url$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupWebView();
        setupColors();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        clearWebView();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return handleBackPress();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (!z || z2) {
            return;
        }
        getBinding().webView.loadData(getUrl(), "text/html", Charsets.UTF_8.name());
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView
    public void redirectAndShowResult(PaymentResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.resultDelegate.invoke(result);
        finishFragment();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResultFragment(int r3, int r4, android.content.Intent r5) {
        /*
            r2 = this;
            r0 = 1
            if (r3 != r0) goto L40
            android.webkit.ValueCallback<android.net.Uri[]> r1 = r2.mFilePathCallback
            if (r1 != 0) goto L8
            goto L40
        L8:
            r3 = -1
            r1 = 0
            if (r4 != r3) goto L35
            r3 = 0
            if (r5 != 0) goto L21
            java.lang.String r4 = r2.mCameraPhotoPath
            if (r4 == 0) goto L35
            android.net.Uri[] r5 = new android.net.Uri[r0]
            android.net.Uri r4 = android.net.Uri.parse(r4)
            java.lang.String r0 = "parse(mCameraPhotoPath)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            r5[r3] = r4
            goto L36
        L21:
            java.lang.String r4 = r5.getDataString()
            if (r4 == 0) goto L35
            android.net.Uri[] r5 = new android.net.Uri[r0]
            android.net.Uri r4 = android.net.Uri.parse(r4)
            java.lang.String r0 = "parse(dataString)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            r5[r3] = r4
            goto L36
        L35:
            r5 = r1
        L36:
            android.webkit.ValueCallback<android.net.Uri[]> r3 = r2.mFilePathCallback
            if (r3 == 0) goto L3d
            r3.onReceiveValue(r5)
        L3d:
            r2.mFilePathCallback = r1
            return
        L40:
            super.onActivityResultFragment(r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.onActivityResultFragment(int, int, android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(SimplexWebViewProcessingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                SimplexWebViewProcessingFragment.getThemeDescriptions$lambda$0(SimplexWebViewProcessingFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        return arrayListOf;
    }

    private final void setupWebView() {
        WebView webView = getBinding().webView;
        WebSettings settings = webView.getSettings();
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(2);
        webView.setLayerType(2, null);
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$setupWebView$1$2
            @Override // android.webkit.WebChromeClient
            public void onPermissionRequest(PermissionRequest permissionRequest) {
                if (permissionRequest != null) {
                    permissionRequest.grant(permissionRequest.getResources());
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i) {
                ForkFragmentWebViewBinding binding;
                binding = SimplexWebViewProcessingFragment.this.getBinding();
                binding.progressBar.setProgress(i);
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
            @Override // android.webkit.WebChromeClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onShowFileChooser(android.webkit.WebView r3, android.webkit.ValueCallback<android.net.Uri[]> r4, android.webkit.WebChromeClient.FileChooserParams r5) {
                /*
                    r2 = this;
                    java.lang.String r0 = "webView"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                    java.lang.String r3 = "filePathCallback"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r3)
                    java.lang.String r3 = "fileChooserParams"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r3)
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r3 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this
                    android.webkit.ValueCallback r3 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.access$getMFilePathCallback$p(r3)
                    r5 = 0
                    if (r3 == 0) goto L1b
                    r3.onReceiveValue(r5)
                L1b:
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r3 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this
                    com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.access$setMFilePathCallback$p(r3, r4)
                    android.content.Intent r3 = new android.content.Intent
                    java.lang.String r4 = "android.media.action.IMAGE_CAPTURE"
                    r3.<init>(r4)
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r4 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this
                    android.app.Activity r4 = r4.getParentActivity()
                    android.content.pm.PackageManager r4 = r4.getPackageManager()
                    android.content.ComponentName r4 = r3.resolveActivity(r4)
                    if (r4 == 0) goto L75
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r4 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this     // Catch: java.io.IOException -> L4b
                    java.io.File r4 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.access$createImageFile(r4)     // Catch: java.io.IOException -> L4b
                    java.lang.String r0 = "PhotoPath"
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r1 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this     // Catch: java.io.IOException -> L49
                    java.lang.String r1 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.access$getMCameraPhotoPath$p(r1)     // Catch: java.io.IOException -> L49
                    r3.putExtra(r0, r1)     // Catch: java.io.IOException -> L49
                    goto L50
                L49:
                    r0 = move-exception
                    goto L4d
                L4b:
                    r0 = move-exception
                    r4 = r5
                L4d:
                    timber.log.Timber.m4e(r0)
                L50:
                    if (r4 == 0) goto L76
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r5 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r1 = "file:"
                    r0.append(r1)
                    java.lang.String r1 = r4.getAbsolutePath()
                    r0.append(r1)
                    java.lang.String r0 = r0.toString()
                    com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.access$setMCameraPhotoPath$p(r5, r0)
                    android.net.Uri r4 = android.net.Uri.fromFile(r4)
                    java.lang.String r5 = "output"
                    r3.putExtra(r5, r4)
                L75:
                    r5 = r3
                L76:
                    android.content.Intent r3 = new android.content.Intent
                    java.lang.String r4 = "android.intent.action.CHOOSER"
                    r3.<init>(r4)
                    android.content.Intent r4 = new android.content.Intent
                    java.lang.String r0 = "android.intent.action.GET_CONTENT"
                    r4.<init>(r0)
                    java.lang.String r0 = "android.intent.category.OPENABLE"
                    r4.addCategory(r0)
                    java.lang.String r0 = "image/*"
                    r4.setType(r0)
                    kotlin.Unit r0 = kotlin.Unit.INSTANCE
                    java.lang.String r0 = "android.intent.extra.INTENT"
                    r3.putExtra(r0, r4)
                    java.lang.String r4 = "android.intent.extra.TITLE"
                    java.lang.String r0 = "Image Chooser"
                    r3.putExtra(r4, r0)
                    r4 = 1
                    android.content.Intent[] r0 = new android.content.Intent[r4]
                    r1 = 0
                    r0[r1] = r5
                    java.lang.String r5 = "android.intent.extra.INITIAL_INTENTS"
                    r3.putExtra(r5, r0)
                    com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment r5 = com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment.this
                    r5.startActivityForResult(r3, r4)
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$setupWebView$1$2.onShowFileChooser(android.webkit.WebView, android.webkit.ValueCallback, android.webkit.WebChromeClient$FileChooserParams):boolean");
            }
        });
        webView.setWebViewClient(new WebViewClient() { // from class: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$setupWebView$1$3
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                ForkFragmentWebViewBinding binding;
                super.onPageStarted(webView2, str, bitmap);
                binding = SimplexWebViewProcessingFragment.this.getBinding();
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
                ViewExtKt.visible(progressBar);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                SimplexWebViewProcessingPresenter presenter;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                presenter = SimplexWebViewProcessingFragment.this.getPresenter();
                return presenter.isNeedHandleManually(url);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                SimplexWebViewProcessingPresenter presenter;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(request, "request");
                presenter = SimplexWebViewProcessingFragment.this.getPresenter();
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "request.url.toString()");
                return presenter.isNeedHandleManually(uri);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                ForkFragmentWebViewBinding binding;
                binding = SimplexWebViewProcessingFragment.this.getBinding();
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
                ViewExtKt.gone(progressBar);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                ForkFragmentWebViewBinding binding;
                binding = SimplexWebViewProcessingFragment.this.getBinding();
                ProgressBar progressBar = binding.progressBar;
                Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
                ViewExtKt.gone(progressBar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File createImageFile() {
        File externalFilesDir = getParentActivity().getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        return File.createTempFile("JPEG_" + DateExtKt.now() + '_', ".jpg", externalFilesDir);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean handleBackPress() {
        if (getBinding().webView.canGoBack()) {
            getBinding().webView.goBack();
            return false;
        }
        finishFragment();
        return false;
    }

    private final void setupActionBar() {
        C3306ActionBar c3306ActionBar = this.actionBar;
        c3306ActionBar.setBackButtonImage(C3242R.C3244drawable.ic_ab_back);
        c3306ActionBar.setAllowOverlayTitle(true);
        c3306ActionBar.setTitle(getResourceManager().getString(C3242R.string.wallet_crypto_buy_processing_toolbar_title));
        c3306ActionBar.setActionBarMenuOnItemClick(new C3306ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3306ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SimplexWebViewProcessingFragment.this.handleBackPress();
                }
            }
        });
    }

    private final void clearWebView() {
        WebView webView = getBinding().webView;
        webView.setLayerType(0, null);
        webView.stopLoading();
        webView.loadUrl("about:blank");
        webView.destroy();
    }

    private final void setupColors() {
        ForkFragmentWebViewBinding binding = getBinding();
        ProgressBar progressBar = binding.progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "progressBar");
        ViewExtKt.tintIndeterminateProgress(progressBar, Theme.getColor("chats_actionBackground"));
        binding.progressBar.setBackgroundColor(Theme.getColor("actionBarDefault"));
    }

    /* compiled from: SimplexWebViewProcessingFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SimplexWebViewProcessingFragment newInstance(String url, Function1<? super PaymentResult, Unit> resultDelegate) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(resultDelegate, "resultDelegate");
            return (SimplexWebViewProcessingFragment) BaseFragmentExtKt.withArgs(new SimplexWebViewProcessingFragment(resultDelegate), TuplesKt.m80to("url_arg", url));
        }
    }
}
