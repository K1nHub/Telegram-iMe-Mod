package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.HorizontalActionButtonsView;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletDashboardAccountEmptyBinding implements ViewBinding {
    private ForkRecycleItemWalletDashboardAccountEmptyBinding(FrameLayout frameLayout, CardView cardView, FrameLayout frameLayout2, HorizontalActionButtonsView horizontalActionButtonsView) {
    }

    public static ForkRecycleItemWalletDashboardAccountEmptyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletDashboardAccountEmptyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_wallet_dashboard_account_empty, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletDashboardAccountEmptyBinding bind(View view) {
        int i = C3630R.C3633id.card_empty_account;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            int i2 = C3630R.C3633id.horizontal_action_buttons;
            HorizontalActionButtonsView horizontalActionButtonsView = (HorizontalActionButtonsView) ViewBindings.findChildViewById(view, i2);
            if (horizontalActionButtonsView != null) {
                return new ForkRecycleItemWalletDashboardAccountEmptyBinding(frameLayout, cardView, frameLayout, horizontalActionButtonsView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
