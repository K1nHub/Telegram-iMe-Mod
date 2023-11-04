package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkDialogSocialNetworksBinding implements ViewBinding {
    public final LinearLayout linearLayout;
    private final ConstraintLayout rootView;
    public final TextView text;

    private ForkDialogSocialNetworksBinding(ConstraintLayout constraintLayout, View view, LinearLayout linearLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.linearLayout = linearLayout;
        this.text = textView;
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkDialogSocialNetworksBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkDialogSocialNetworksBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_dialog_social_networks, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkDialogSocialNetworksBinding bind(View view) {
        int i = C3634R.C3637id.divider;
        View findChildViewById = ViewBindings.findChildViewById(view, i);
        if (findChildViewById != null) {
            i = C3634R.C3637id.linearLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = C3634R.C3637id.text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new ForkDialogSocialNetworksBinding((ConstraintLayout) view, findChildViewById, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
