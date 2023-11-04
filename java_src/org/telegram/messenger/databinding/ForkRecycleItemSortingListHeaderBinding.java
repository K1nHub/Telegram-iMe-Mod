package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemSortingListHeaderBinding implements ViewBinding {
    private ForkRecycleItemSortingListHeaderBinding(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat2, AppCompatTextView appCompatTextView) {
    }

    public static ForkRecycleItemSortingListHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemSortingListHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_recycle_item_sorting_list_header, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemSortingListHeaderBinding bind(View view) {
        int i = C3634R.C3637id.image_order;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
            int i2 = C3634R.C3637id.text_header;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i2);
            if (appCompatTextView != null) {
                return new ForkRecycleItemSortingListHeaderBinding(linearLayoutCompat, appCompatImageView, linearLayoutCompat, appCompatTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
