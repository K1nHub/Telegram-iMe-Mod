package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.Components.LinkActionView;
/* loaded from: classes4.dex */
public final class ForkContentTitledInputFieldBinding implements ViewBinding {
    public final FrameLayout frameContainer;
    private final LinearLayout rootView;
    public final TextView textTitle;
    public final LinkActionView viewInput;

    private ForkContentTitledInputFieldBinding(LinearLayout linearLayout, FrameLayout frameLayout, TextView textView, LinkActionView linkActionView) {
        this.rootView = linearLayout;
        this.frameContainer = frameLayout;
        this.textTitle = textView;
        this.viewInput = linkActionView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentTitledInputFieldBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentTitledInputFieldBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_content_titled_input_field, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentTitledInputFieldBinding bind(View view) {
        int i = C3632R.C3635id.frame_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C3632R.C3635id.text_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3632R.C3635id.view_input;
                LinkActionView linkActionView = (LinkActionView) ViewBindings.findChildViewById(view, i);
                if (linkActionView != null) {
                    return new ForkContentTitledInputFieldBinding((LinearLayout) view, frameLayout, textView, linkActionView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
