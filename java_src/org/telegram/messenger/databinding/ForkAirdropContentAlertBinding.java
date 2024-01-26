package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.ActionButton;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkAirdropContentAlertBinding implements ViewBinding {
    private ForkAirdropContentAlertBinding(LinearLayout linearLayout, ActionButton actionButton, CheckBoxCell checkBoxCell, CheckBoxCell checkBoxCell2, CheckBoxCell checkBoxCell3, RLottieImageView rLottieImageView, ActionBarMenuItem actionBarMenuItem, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
    }

    public static ForkAirdropContentAlertBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkAirdropContentAlertBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_airdrop_content_alert, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkAirdropContentAlertBinding bind(View view) {
        int i = C3632R.C3635id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3632R.C3635id.checkbox_auth;
            CheckBoxCell checkBoxCell = (CheckBoxCell) ViewBindings.findChildViewById(view, i);
            if (checkBoxCell != null) {
                i = C3632R.C3635id.checkbox_create_wallet;
                CheckBoxCell checkBoxCell2 = (CheckBoxCell) ViewBindings.findChildViewById(view, i);
                if (checkBoxCell2 != null) {
                    i = C3632R.C3635id.checkbox_take_bonus;
                    CheckBoxCell checkBoxCell3 = (CheckBoxCell) ViewBindings.findChildViewById(view, i);
                    if (checkBoxCell3 != null) {
                        i = C3632R.C3635id.image_alert_picture;
                        RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
                        if (rLottieImageView != null) {
                            i = C3632R.C3635id.item_menu;
                            ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                            if (actionBarMenuItem != null) {
                                LinearLayout linearLayout = (LinearLayout) view;
                                i = C3632R.C3635id.text_additional_action;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null) {
                                    i = C3632R.C3635id.text_alert_description;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView2 != null) {
                                        i = C3632R.C3635id.text_alert_title;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView3 != null) {
                                            return new ForkAirdropContentAlertBinding(linearLayout, actionButton, checkBoxCell, checkBoxCell2, checkBoxCell3, rLottieImageView, actionBarMenuItem, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
