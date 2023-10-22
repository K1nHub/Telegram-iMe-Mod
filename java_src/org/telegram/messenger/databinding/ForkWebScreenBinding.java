package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkWebScreenBinding implements ViewBinding {
    public final ProgressBar progressBar;
    public final ForkToolbarBinding toolbar;
    public final WebView webView;

    private ForkWebScreenBinding(ConstraintLayout constraintLayout, ProgressBar progressBar, ForkToolbarBinding forkToolbarBinding, WebView webView) {
        this.progressBar = progressBar;
        this.toolbar = forkToolbarBinding;
        this.webView = webView;
    }

    public static ForkWebScreenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkWebScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_web_screen, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkWebScreenBinding bind(View view) {
        View findChildViewById;
        int i = C3630R.C3633id.progress_bar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3630R.C3633id.toolbar))) != null) {
            ForkToolbarBinding bind = ForkToolbarBinding.bind(findChildViewById);
            int i2 = C3630R.C3633id.web_view;
            WebView webView = (WebView) ViewBindings.findChildViewById(view, i2);
            if (webView != null) {
                return new ForkWebScreenBinding((ConstraintLayout) view, progressBar, bind, webView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
