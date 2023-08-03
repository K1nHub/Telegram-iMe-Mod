package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.DividerView;
import com.iMe.p031ui.custom.HorizontalActionButtonsView;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Components.BackupImageView;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletAccountBinding implements ViewBinding {
    private final FrameLayout rootView;

    private ForkRecycleItemWalletAccountBinding(FrameLayout frameLayout, CardView cardView, FrameLayout frameLayout2, HorizontalActionButtonsView horizontalActionButtonsView, BackupImageView backupImageView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ActionBarMenuItem actionBarMenuItem, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, DividerView dividerView) {
        this.rootView = frameLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletAccountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_recycle_item_wallet_account, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletAccountBinding bind(View view) {
        int i = C3419R.C3422id.card_crypto_account;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i = C3419R.C3422id.horizontal_action_buttons;
            HorizontalActionButtonsView horizontalActionButtonsView = (HorizontalActionButtonsView) ViewBindings.findChildViewById(view, i);
            if (horizontalActionButtonsView != null) {
                i = C3419R.C3422id.image_account_avatar;
                BackupImageView backupImageView = (BackupImageView) ViewBindings.findChildViewById(view, i);
                if (backupImageView != null) {
                    i = C3419R.C3422id.image_copy;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView != null) {
                        i = C3419R.C3422id.image_verified;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView2 != null) {
                            i = C3419R.C3422id.item_more_options;
                            ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                            if (actionBarMenuItem != null) {
                                i = C3419R.C3422id.text_account_id;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null) {
                                    i = C3419R.C3422id.text_account_name;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView2 != null) {
                                        i = C3419R.C3422id.view_divider;
                                        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                                        if (dividerView != null) {
                                            return new ForkRecycleItemWalletAccountBinding(frameLayout, cardView, frameLayout, horizontalActionButtonsView, backupImageView, appCompatImageView, appCompatImageView2, actionBarMenuItem, appCompatTextView, appCompatTextView2, dividerView);
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
