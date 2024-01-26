package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.Components.Switch;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletAppearanceSettingsBinding implements ViewBinding {
    private ForkRecycleItemWalletAppearanceSettingsBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, DividerView dividerView, Switch r7) {
    }

    public static ForkRecycleItemWalletAppearanceSettingsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletAppearanceSettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_wallet_appearance_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletAppearanceSettingsBinding bind(View view) {
        int i = C3632R.C3635id.image_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = C3632R.C3635id.text_setting_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3632R.C3635id.text_setting_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3632R.C3635id.view_divider;
                    DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                    if (dividerView != null) {
                        i = C3632R.C3635id.view_switch;
                        Switch r9 = (Switch) ViewBindings.findChildViewById(view, i);
                        if (r9 != null) {
                            return new ForkRecycleItemWalletAppearanceSettingsBinding(linearLayout, appCompatImageView, linearLayout, appCompatTextView, appCompatTextView2, dividerView, r9);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
