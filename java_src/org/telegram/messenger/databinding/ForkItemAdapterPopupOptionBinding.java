package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkItemAdapterPopupOptionBinding implements ViewBinding {
    private ForkItemAdapterPopupOptionBinding(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
    }

    public static ForkItemAdapterPopupOptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkItemAdapterPopupOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_item_adapter_popup_option, viewGroup, false);
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
