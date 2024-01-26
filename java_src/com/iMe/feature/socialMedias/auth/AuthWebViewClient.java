package com.iMe.feature.socialMedias.auth;

import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AuthWebViewClient.kt */
/* loaded from: classes3.dex */
public final class AuthWebViewClient extends WebViewClient {
    private final Function1<String, Unit> overrideUrl;
    private final Function0<Unit> pageFinished;
    private final Function0<Unit> pageStarted;
    private final Function0<Unit> receivedError;

    /* JADX WARN: Multi-variable type inference failed */
    public AuthWebViewClient(Function1<? super String, Unit> overrideUrl, Function0<Unit> pageStarted, Function0<Unit> pageFinished, Function0<Unit> receivedError) {
        Intrinsics.checkNotNullParameter(overrideUrl, "overrideUrl");
        Intrinsics.checkNotNullParameter(pageStarted, "pageStarted");
        Intrinsics.checkNotNullParameter(pageFinished, "pageFinished");
        Intrinsics.checkNotNullParameter(receivedError, "receivedError");
        this.overrideUrl = overrideUrl;
        this.pageStarted = pageStarted;
        this.pageFinished = pageFinished;
        this.receivedError = receivedError;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if ((webResourceRequest != null ? webResourceRequest.getUrl() : null) == null) {
            return true;
        }
        String uri = webResourceRequest.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "request.url.toString()");
        if (AuthWebViewClientKt.isStubUrl(uri)) {
            this.overrideUrl.invoke(uri);
            Unit unit = Unit.INSTANCE;
            return true;
        } else if (webView != null) {
            webView.loadUrl(uri);
            Unit unit2 = Unit.INSTANCE;
            return false;
        } else {
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.pageStarted.invoke();
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.pageFinished.invoke();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.receivedError.invoke();
    }
}
