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
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentBlockchainsManagementBinding implements ViewBinding {
    public final TextCell buttonResetAll;
    public final RLottieImageView imageHeader;
    public final LinearLayout linearAddSession;
    public final LinearLayout linearWallets;
    public final RecyclerView recycleWallets;
    private final NestedScrollView rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textWalletsTitle;

    private ForkFragmentBlockchainsManagementBinding(NestedScrollView nestedScrollView, TextCell textCell, RLottieImageView rLottieImageView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = nestedScrollView;
        this.buttonResetAll = textCell;
        this.imageHeader = rLottieImageView;
        this.linearAddSession = linearLayout;
        this.linearWallets = linearLayout3;
        this.recycleWallets = recyclerView;
        this.textDescription = appCompatTextView;
        this.textWalletsTitle = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentBlockchainsManagementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentBlockchainsManagementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3286R.layout.fork_fragment_blockchains_management, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentBlockchainsManagementBinding bind(View view) {
        int i = C3286R.C3289id.button_reset_all;
        TextCell textCell = (TextCell) ViewBindings.findChildViewById(view, i);
        if (textCell != null) {
            i = C3286R.C3289id.image_header;
            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
            if (rLottieImageView != null) {
                i = C3286R.C3289id.linear_add_session;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C3286R.C3289id.linear_root;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = C3286R.C3289id.linear_wallets;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout3 != null) {
                            i = C3286R.C3289id.recycle_wallets;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                            if (recyclerView != null) {
                                i = C3286R.C3289id.text_description;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null) {
                                    i = C3286R.C3289id.text_wallets_title;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView2 != null) {
                                        return new ForkFragmentBlockchainsManagementBinding((NestedScrollView) view, textCell, rLottieImageView, linearLayout, linearLayout2, linearLayout3, recyclerView, appCompatTextView, appCompatTextView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
