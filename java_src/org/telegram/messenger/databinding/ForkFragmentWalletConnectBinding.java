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
import com.iMe.p031ui.custom.BigActionButton;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.Cells.TextCell;
import org.telegram.p044ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletConnectBinding implements ViewBinding {
    public final BigActionButton buttonConnect;
    public final TextCell buttonDisconnectAll;
    public final RLottieImageView imageHeader;
    public final LinearLayout linearAddSession;
    public final LinearLayout linearSessions;
    public final RecyclerView recycleSessions;
    private final NestedScrollView rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textSessionsTitle;

    private ForkFragmentWalletConnectBinding(NestedScrollView nestedScrollView, BigActionButton bigActionButton, TextCell textCell, RLottieImageView rLottieImageView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = nestedScrollView;
        this.buttonConnect = bigActionButton;
        this.buttonDisconnectAll = textCell;
        this.imageHeader = rLottieImageView;
        this.linearAddSession = linearLayout;
        this.linearSessions = linearLayout3;
        this.recycleSessions = recyclerView;
        this.textDescription = appCompatTextView;
        this.textSessionsTitle = appCompatTextView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletConnectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletConnectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3295R.layout.fork_fragment_wallet_connect, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletConnectBinding bind(View view) {
        int i = C3295R.C3298id.button_connect;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3295R.C3298id.button_disconnect_all;
            TextCell textCell = (TextCell) ViewBindings.findChildViewById(view, i);
            if (textCell != null) {
                i = C3295R.C3298id.image_header;
                RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
                if (rLottieImageView != null) {
                    i = C3295R.C3298id.linear_add_session;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = C3295R.C3298id.linear_root;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = C3295R.C3298id.linear_sessions;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout3 != null) {
                                i = C3295R.C3298id.recycle_sessions;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                if (recyclerView != null) {
                                    i = C3295R.C3298id.text_description;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView != null) {
                                        i = C3295R.C3298id.text_sessions_title;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView2 != null) {
                                            return new ForkFragmentWalletConnectBinding((NestedScrollView) view, bigActionButton, textCell, rLottieImageView, linearLayout, linearLayout2, linearLayout3, recyclerView, appCompatTextView, appCompatTextView2);
                                        }
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
