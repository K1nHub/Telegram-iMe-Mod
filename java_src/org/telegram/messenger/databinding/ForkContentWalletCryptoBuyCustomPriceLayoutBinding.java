package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkContentWalletCryptoBuyCustomPriceLayoutBinding implements ViewBinding {
    private ForkContentWalletCryptoBuyCustomPriceLayoutBinding(LinearLayout linearLayout, AppCompatEditText appCompatEditText, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, View view) {
    }

    public static ForkContentWalletCryptoBuyCustomPriceLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletCryptoBuyCustomPriceLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_content_wallet_crypto_buy_custom_price_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletCryptoBuyCustomPriceLayoutBinding bind(View view) {
        View findChildViewById;
        int i = C3634R.C3637id.edit_from_amount;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = C3634R.C3637id.image_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3634R.C3637id.linear_header;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    LinearLayout linearLayout2 = (LinearLayout) view;
                    i = C3634R.C3637id.linear_to;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout3 != null) {
                        i = C3634R.C3637id.text_action;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView != null) {
                            i = C3634R.C3637id.text_from_currency;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView2 != null) {
                                i = C3634R.C3637id.text_tax;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView3 != null) {
                                    i = C3634R.C3637id.text_title;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView4 != null) {
                                        i = C3634R.C3637id.text_to_amount;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView5 != null) {
                                            i = C3634R.C3637id.text_to_currency;
                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView6 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3634R.C3637id.view_divider))) != null) {
                                                return new ForkContentWalletCryptoBuyCustomPriceLayoutBinding(linearLayout2, appCompatEditText, appCompatImageView, linearLayout, linearLayout2, linearLayout3, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, findChildViewById);
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
