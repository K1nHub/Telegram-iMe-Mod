package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkContentCryptoboxInfoBinding implements ViewBinding {
    public final AppCompatImageView imageInfo;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textCreationFeeTitle;
    public final AppCompatTextView textCreationFeeValue;
    public final AppCompatTextView textTitle;
    public final AppCompatTextView textTotalFeeTitle;
    public final AppCompatTextView textTotalFeeValue;
    public final AppCompatTextView textTotalTokensTitle;
    public final AppCompatTextView textTotalTokensValue;
    public final AppCompatTextView textTotalUsersFeeTitle;
    public final AppCompatTextView textTotalUsersFeeValue;

    private ForkContentCryptoboxInfoBinding(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9) {
        this.rootView = constraintLayout;
        this.imageInfo = appCompatImageView;
        this.textCreationFeeTitle = appCompatTextView;
        this.textCreationFeeValue = appCompatTextView2;
        this.textTitle = appCompatTextView3;
        this.textTotalFeeTitle = appCompatTextView4;
        this.textTotalFeeValue = appCompatTextView5;
        this.textTotalTokensTitle = appCompatTextView6;
        this.textTotalTokensValue = appCompatTextView7;
        this.textTotalUsersFeeTitle = appCompatTextView8;
        this.textTotalUsersFeeValue = appCompatTextView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentCryptoboxInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentCryptoboxInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_cryptobox_info, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentCryptoboxInfoBinding bind(View view) {
        int i = C3558R.C3561id.image_info;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3558R.C3561id.text_creation_fee_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3558R.C3561id.text_creation_fee_value;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = C3558R.C3561id.text_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView3 != null) {
                        i = C3558R.C3561id.text_total_fee_title;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView4 != null) {
                            i = C3558R.C3561id.text_total_fee_value;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView5 != null) {
                                i = C3558R.C3561id.text_total_tokens_title;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView6 != null) {
                                    i = C3558R.C3561id.text_total_tokens_value;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView7 != null) {
                                        i = C3558R.C3561id.text_total_users_fee_title;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView8 != null) {
                                            i = C3558R.C3561id.text_total_users_fee_value;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView9 != null) {
                                                return new ForkContentCryptoboxInfoBinding((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9);
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
