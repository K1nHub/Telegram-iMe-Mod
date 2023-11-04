package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkDevSettingsScreenBinding implements ViewBinding {
    public final ProgressBar progressBar;
    public final TextView textDevScreen;

    private ForkDevSettingsScreenBinding(ConstraintLayout constraintLayout, ProgressBar progressBar, TextView textView) {
        this.progressBar = progressBar;
        this.textDevScreen = textView;
    }

    public static ForkDevSettingsScreenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkDevSettingsScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_dev_settings_screen, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkDevSettingsScreenBinding bind(View view) {
        int i = C3634R.C3637id.progressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = C3634R.C3637id.textDevScreen;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new ForkDevSettingsScreenBinding((ConstraintLayout) view, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
