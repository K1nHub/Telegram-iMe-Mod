package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkFragmentTokenManagementBinding implements ViewBinding {
    public final TextView buttonAction;
    public final ActionBarMenuItem buttonAddressOptions;
    public final AppCompatImageView buttonSafetyInfo;
    public final EditText editAddress;
    public final AppCompatImageView imageLogo;
    public final AppCompatImageView imageSafetyStatus;
    public final AppCompatImageView imageSafetyStatusArrow;
    public final LinearLayout linearAddress;
    public final ConstraintLayout linearInfo;
    public final LinearLayout linearSafety;
    public final LinearLayout linearVerification;
    private final FrameLayout rootView;
    public final TextView textAddress;
    public final AppCompatTextView textAddressTitle;
    public final AppCompatTextView textDecimalsTitle;
    public final AppCompatTextView textDecimalsValue;
    public final AppCompatTextView textIconTitle;
    public final AppCompatTextView textInformationTitle;
    public final AppCompatTextView textNameTitle;
    public final AppCompatTextView textNameValue;
    public final AppCompatTextView textNetworkTitle;
    public final AppCompatTextView textNetworkValue;
    public final AppCompatTextView textNotFound;
    public final AppCompatTextView textSafetyStatus;
    public final AppCompatTextView textSafetyTitle;
    public final AppCompatTextView textSymbolTitle;
    public final AppCompatTextView textSymbolValue;

    private ForkFragmentTokenManagementBinding(FrameLayout frameLayout, TextView textView, ActionBarMenuItem actionBarMenuItem, AppCompatImageView appCompatImageView, EditText editText, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, LinearLayout linearLayout, ConstraintLayout constraintLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, AppCompatTextView appCompatTextView12, AppCompatTextView appCompatTextView13, AppCompatTextView appCompatTextView14) {
        this.rootView = frameLayout;
        this.buttonAction = textView;
        this.buttonAddressOptions = actionBarMenuItem;
        this.buttonSafetyInfo = appCompatImageView;
        this.editAddress = editText;
        this.imageLogo = appCompatImageView2;
        this.imageSafetyStatus = appCompatImageView3;
        this.imageSafetyStatusArrow = appCompatImageView4;
        this.linearAddress = linearLayout;
        this.linearInfo = constraintLayout;
        this.linearSafety = linearLayout2;
        this.linearVerification = linearLayout3;
        this.textAddress = textView2;
        this.textAddressTitle = appCompatTextView;
        this.textDecimalsTitle = appCompatTextView2;
        this.textDecimalsValue = appCompatTextView3;
        this.textIconTitle = appCompatTextView4;
        this.textInformationTitle = appCompatTextView5;
        this.textNameTitle = appCompatTextView6;
        this.textNameValue = appCompatTextView7;
        this.textNetworkTitle = appCompatTextView8;
        this.textNetworkValue = appCompatTextView9;
        this.textNotFound = appCompatTextView10;
        this.textSafetyStatus = appCompatTextView11;
        this.textSafetyTitle = appCompatTextView12;
        this.textSymbolTitle = appCompatTextView13;
        this.textSymbolValue = appCompatTextView14;
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentTokenManagementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentTokenManagementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_fragment_token_management, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentTokenManagementBinding bind(View view) {
        int i = C3634R.C3637id.button_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3634R.C3637id.button_address_options;
            ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
            if (actionBarMenuItem != null) {
                i = C3634R.C3637id.button_safety_info;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView != null) {
                    i = C3634R.C3637id.edit_address;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText != null) {
                        i = C3634R.C3637id.image_logo;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView2 != null) {
                            i = C3634R.C3637id.image_safety_status;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView3 != null) {
                                i = C3634R.C3637id.image_safety_status_arrow;
                                AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView4 != null) {
                                    i = C3634R.C3637id.linear_address;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = C3634R.C3637id.linear_info;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                        if (constraintLayout != null) {
                                            i = C3634R.C3637id.linear_safety;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = C3634R.C3637id.linear_verification;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout3 != null) {
                                                    i = C3634R.C3637id.text_address;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView2 != null) {
                                                        i = C3634R.C3637id.text_address_title;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView != null) {
                                                            i = C3634R.C3637id.text_decimals_title;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView2 != null) {
                                                                i = C3634R.C3637id.text_decimals_value;
                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView3 != null) {
                                                                    i = C3634R.C3637id.text_icon_title;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView4 != null) {
                                                                        i = C3634R.C3637id.text_information_title;
                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView5 != null) {
                                                                            i = C3634R.C3637id.text_name_title;
                                                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView6 != null) {
                                                                                i = C3634R.C3637id.text_name_value;
                                                                                AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView7 != null) {
                                                                                    i = C3634R.C3637id.text_network_title;
                                                                                    AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView8 != null) {
                                                                                        i = C3634R.C3637id.text_network_value;
                                                                                        AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView9 != null) {
                                                                                            i = C3634R.C3637id.text_not_found;
                                                                                            AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView10 != null) {
                                                                                                i = C3634R.C3637id.text_safety_status;
                                                                                                AppCompatTextView appCompatTextView11 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView11 != null) {
                                                                                                    i = C3634R.C3637id.text_safety_title;
                                                                                                    AppCompatTextView appCompatTextView12 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatTextView12 != null) {
                                                                                                        i = C3634R.C3637id.text_symbol_title;
                                                                                                        AppCompatTextView appCompatTextView13 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (appCompatTextView13 != null) {
                                                                                                            i = C3634R.C3637id.text_symbol_value;
                                                                                                            AppCompatTextView appCompatTextView14 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (appCompatTextView14 != null) {
                                                                                                                return new ForkFragmentTokenManagementBinding((FrameLayout) view, textView, actionBarMenuItem, appCompatImageView, editText, appCompatImageView2, appCompatImageView3, appCompatImageView4, linearLayout, constraintLayout, linearLayout2, linearLayout3, textView2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12, appCompatTextView13, appCompatTextView14);
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
