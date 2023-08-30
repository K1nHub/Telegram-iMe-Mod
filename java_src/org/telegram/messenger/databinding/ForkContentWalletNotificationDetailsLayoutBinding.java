package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.DividerView;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkContentWalletNotificationDetailsLayoutBinding implements ViewBinding {
    public final LinearLayout linearRoot;
    private final LinearLayout rootView;
    public final AppCompatTextView textActionCancel;
    public final AppCompatTextView textCategory;
    public final AppCompatTextView textDate;
    public final AppCompatTextView textMessage;

    private ForkContentWalletNotificationDetailsLayoutBinding(LinearLayout linearLayout, ConstraintLayout constraintLayout, LinearLayout linearLayout2, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, DividerView dividerView) {
        this.rootView = linearLayout;
        this.linearRoot = linearLayout2;
        this.textActionCancel = appCompatTextView;
        this.textCategory = appCompatTextView2;
        this.textDate = appCompatTextView3;
        this.textMessage = appCompatTextView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletNotificationDetailsLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletNotificationDetailsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_wallet_notification_details_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletNotificationDetailsLayoutBinding bind(View view) {
        int i = C3558R.C3561id.constraint_bottom_action;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = C3558R.C3561id.nested_scroll_view;
            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
            if (nestedScrollView != null) {
                i = C3558R.C3561id.text_action_cancel;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3558R.C3561id.text_category;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        i = C3558R.C3561id.text_date;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView3 != null) {
                            i = C3558R.C3561id.text_message;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView4 != null) {
                                i = C3558R.C3561id.view_divider;
                                DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                                if (dividerView != null) {
                                    return new ForkContentWalletNotificationDetailsLayoutBinding(linearLayout, constraintLayout, linearLayout, nestedScrollView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, dividerView);
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
