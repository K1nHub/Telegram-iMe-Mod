package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3473R;
/* loaded from: classes6.dex */
public final class ForkItemAdapterPopupOptionBinding implements ViewBinding {
    private final AppCompatTextView rootView;

    private ForkItemAdapterPopupOptionBinding(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = appCompatTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public AppCompatTextView getRoot() {
        return this.rootView;
    }

    public static ForkItemAdapterPopupOptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkItemAdapterPopupOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_item_adapter_popup_option, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkItemAdapterPopupOptionBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        AppCompatTextView appCompatTextView = (AppCompatTextView) view;
        return new ForkItemAdapterPopupOptionBinding(appCompatTextView, appCompatTextView);
    }
}
