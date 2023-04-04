package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p032ui.custom.ActionButton;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkAirdropContentAlertBinding implements ViewBinding {
    public final ActionButton buttonAction;
    public final CheckBoxCell checkboxAuth;
    public final CheckBoxCell checkboxCreateWallet;
    public final CheckBoxCell checkboxTakeBonus;
    public final RLottieImageView imageAlertPicture;
    public final ActionBarMenuItem itemMenu;
    private final LinearLayout rootView;
    public final AppCompatTextView textAdditionalAction;
    public final AppCompatTextView textAlertDescription;
    public final AppCompatTextView textAlertTitle;

    private ForkAirdropContentAlertBinding(LinearLayout linearLayout, ActionButton actionButton, CheckBoxCell checkBoxCell, CheckBoxCell checkBoxCell2, CheckBoxCell checkBoxCell3, RLottieImageView rLottieImageView, ActionBarMenuItem actionBarMenuItem, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = linearLayout;
        this.buttonAction = actionButton;
        this.checkboxAuth = checkBoxCell;
        this.checkboxCreateWallet = checkBoxCell2;
        this.checkboxTakeBonus = checkBoxCell3;
        this.imageAlertPicture = rLottieImageView;
        this.itemMenu = actionBarMenuItem;
        this.textAdditionalAction = appCompatTextView;
        this.textAlertDescription = appCompatTextView2;
        this.textAlertTitle = appCompatTextView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkAirdropContentAlertBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkAirdropContentAlertBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3316R.layout.fork_airdrop_content_alert, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkAirdropContentAlertBinding bind(View view) {
        int i = C3316R.C3319id.button_action;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3316R.C3319id.checkbox_auth;
            CheckBoxCell checkBoxCell = (CheckBoxCell) ViewBindings.findChildViewById(view, i);
            if (checkBoxCell != null) {
                i = C3316R.C3319id.checkbox_create_wallet;
                CheckBoxCell checkBoxCell2 = (CheckBoxCell) ViewBindings.findChildViewById(view, i);
                if (checkBoxCell2 != null) {
                    i = C3316R.C3319id.checkbox_take_bonus;
                    CheckBoxCell checkBoxCell3 = (CheckBoxCell) ViewBindings.findChildViewById(view, i);
                    if (checkBoxCell3 != null) {
                        i = C3316R.C3319id.image_alert_picture;
                        RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
                        if (rLottieImageView != null) {
                            i = C3316R.C3319id.item_menu;
                            ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                            if (actionBarMenuItem != null) {
                                LinearLayout linearLayout = (LinearLayout) view;
                                i = C3316R.C3319id.text_additional_action;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView != null) {
                                    i = C3316R.C3319id.text_alert_description;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView2 != null) {
                                        i = C3316R.C3319id.text_alert_title;
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
