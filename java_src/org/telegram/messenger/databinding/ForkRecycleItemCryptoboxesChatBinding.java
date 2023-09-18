package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.TitledInputFieldView;
import org.telegram.messenger.C3473R;
/* loaded from: classes6.dex */
public final class ForkRecycleItemCryptoboxesChatBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ForkRecycleItemCryptoboxesChatBinding(LinearLayout linearLayout, TitledInputFieldView titledInputFieldView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemCryptoboxesChatBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemCryptoboxesChatBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3473R.layout.fork_recycle_item_cryptoboxes_chat, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemCryptoboxesChatBinding bind(View view) {
        int i = C3473R.C3476id.input_chat;
        TitledInputFieldView titledInputFieldView = (TitledInputFieldView) ViewBindings.findChildViewById(view, i);
        if (titledInputFieldView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i2 = C3473R.C3476id.text_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i2);
            if (appCompatTextView != null) {
                return new ForkRecycleItemCryptoboxesChatBinding(linearLayout, titledInputFieldView, linearLayout, appCompatTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
