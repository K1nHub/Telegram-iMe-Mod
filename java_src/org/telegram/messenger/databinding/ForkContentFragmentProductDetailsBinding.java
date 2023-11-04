package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DetailsIconCellView;
import com.iMe.p030ui.custom.ImageHeaderView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkContentFragmentProductDetailsBinding implements ViewBinding {
    public final FrameLayout frameButtonContainer;
    private final NestedScrollView rootView;
    public final ImageHeaderView viewHeader;
    public final DetailsIconCellView viewPriceCell;
    public final DetailsIconCellView viewTimeLeftCell;

    private ForkContentFragmentProductDetailsBinding(NestedScrollView nestedScrollView, FrameLayout frameLayout, ImageHeaderView imageHeaderView, DetailsIconCellView detailsIconCellView, DetailsIconCellView detailsIconCellView2) {
        this.rootView = nestedScrollView;
        this.frameButtonContainer = frameLayout;
        this.viewHeader = imageHeaderView;
        this.viewPriceCell = detailsIconCellView;
        this.viewTimeLeftCell = detailsIconCellView2;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentFragmentProductDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentFragmentProductDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_content_fragment_product_details, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentFragmentProductDetailsBinding bind(View view) {
        int i = C3634R.C3637id.frame_button_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C3634R.C3637id.view_header;
            ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
            if (imageHeaderView != null) {
                i = C3634R.C3637id.view_price_cell;
                DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                if (detailsIconCellView != null) {
                    i = C3634R.C3637id.view_time_left_cell;
                    DetailsIconCellView detailsIconCellView2 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                    if (detailsIconCellView2 != null) {
                        return new ForkContentFragmentProductDetailsBinding((NestedScrollView) view, frameLayout, imageHeaderView, detailsIconCellView, detailsIconCellView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
