package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentBlockchainsManagementBinding implements ViewBinding {
    public final RLottieImageView imageHeader;
    public final LinearLayout linearAddSession;
    public final RecyclerView recycleWallets;
    private final NestedScrollView rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textWalletsTitle;

    private ForkFragmentBlockchainsManagementBinding(NestedScrollView nestedScrollView, RLottieImageView rLottieImageView, LinearLayout linearLayout, LinearLayout linearLayout2, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = nestedScrollView;
        this.imageHeader = rLottieImageView;
        this.linearAddSession = linearLayout;
        this.recycleWallets = recyclerView;
        this.textDescription = appCompatTextView;
        this.textWalletsTitle = appCompatTextView2;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentBlockchainsManagementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentBlockchainsManagementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_fragment_blockchains_management, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentBlockchainsManagementBinding bind(View view) {
        int i = C3630R.C3633id.image_header;
        RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
        if (rLottieImageView != null) {
            i = C3630R.C3633id.linear_add_session;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = C3630R.C3633id.linear_root;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout2 != null) {
                    i = C3630R.C3633id.recycle_wallets;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView != null) {
                        i = C3630R.C3633id.text_description;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView != null) {
                            i = C3630R.C3633id.text_wallets_title;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView2 != null) {
                                return new ForkFragmentBlockchainsManagementBinding((NestedScrollView) view, rLottieImageView, linearLayout, linearLayout2, recyclerView, appCompatTextView, appCompatTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
