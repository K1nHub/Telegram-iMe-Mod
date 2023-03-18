package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3286R;
/* loaded from: classes4.dex */
public final class ForkBotsContentPageItemNormalBinding implements ViewBinding {
    public final TextView normalPhrase;
    public final LinearLayout normalPhraseLayout;
    private final ConstraintLayout rootView;

    private ForkBotsContentPageItemNormalBinding(ConstraintLayout constraintLayout, TextView textView, LinearLayout linearLayout) {
        this.rootView = constraintLayout;
        this.normalPhrase = textView;
        this.normalPhraseLayout = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkBotsContentPageItemNormalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3286R.layout.fork_bots_content_page_item_normal, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkBotsContentPageItemNormalBinding bind(View view) {
        int i = C3286R.C3289id.normal_phrase;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3286R.C3289id.normalPhraseLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                return new ForkBotsContentPageItemNormalBinding((ConstraintLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
