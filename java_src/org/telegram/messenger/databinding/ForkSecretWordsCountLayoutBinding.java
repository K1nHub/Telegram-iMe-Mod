package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkSecretWordsCountLayoutBinding implements ViewBinding {
    private ForkSecretWordsCountLayoutBinding(LinearLayout linearLayout, ConstraintLayout constraintLayout, RecyclerView recyclerView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, DividerView dividerView) {
    }

    public static ForkSecretWordsCountLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkSecretWordsCountLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_secret_words_count_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkSecretWordsCountLayoutBinding bind(View view) {
        int i = C3632R.C3635id.constraint_bottom_action;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C3632R.C3635id.recycle_actions;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = C3632R.C3635id.text_action_cancel;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = C3632R.C3635id.text_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        i = C3632R.C3635id.view_divider;
                        DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                        if (dividerView != null) {
                            return new ForkSecretWordsCountLayoutBinding(linearLayout, constraintLayout, recyclerView, linearLayout, appCompatTextView, appCompatTextView2, dividerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
