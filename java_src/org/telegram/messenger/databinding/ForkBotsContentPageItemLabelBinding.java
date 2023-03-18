package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3286R;
/* loaded from: classes4.dex */
public final class ForkBotsContentPageItemLabelBinding implements ViewBinding {
    public final TextView botName;
    private final FrameLayout rootView;

    private ForkBotsContentPageItemLabelBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.botName = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkBotsContentPageItemLabelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3286R.layout.fork_bots_content_page_item_label, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkBotsContentPageItemLabelBinding bind(View view) {
        int i = C3286R.C3289id.bot_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            return new ForkBotsContentPageItemLabelBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
