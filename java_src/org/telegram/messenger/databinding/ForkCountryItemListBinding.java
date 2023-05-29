package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3295R;
/* loaded from: classes4.dex */
public final class ForkCountryItemListBinding implements ViewBinding {
    public final AppCompatCheckBox checkbox;
    private final ConstraintLayout rootView;
    public final TextView textCountryName;

    private ForkCountryItemListBinding(ConstraintLayout constraintLayout, AppCompatCheckBox appCompatCheckBox, TextView textView) {
        this.rootView = constraintLayout;
        this.checkbox = appCompatCheckBox;
        this.textCountryName = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkCountryItemListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3295R.layout.fork_country_item_list, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkCountryItemListBinding bind(View view) {
        int i = C3295R.C3298id.checkbox;
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) ViewBindings.findChildViewById(view, i);
        if (appCompatCheckBox != null) {
            i = C3295R.C3298id.textCountryName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new ForkCountryItemListBinding((ConstraintLayout) view, appCompatCheckBox, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
