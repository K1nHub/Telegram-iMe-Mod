package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.Components.BackupImageView;
/* loaded from: classes4.dex */
public final class ForkRecycleItemNftCollectionBinding implements ViewBinding {
    private final FrameLayout rootView;

    private ForkRecycleItemNftCollectionBinding(FrameLayout frameLayout, CardView cardView, ConstraintLayout constraintLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, BackupImageView backupImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = frameLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemNftCollectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemNftCollectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_recycle_item_nft_collection, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemNftCollectionBinding bind(View view) {
        int i = C3558R.C3561id.card_nft_collection;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = C3558R.C3561id.constraint_root;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i = C3558R.C3561id.image_arrow;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView != null) {
                    i = C3558R.C3561id.image_collection_image;
                    BackupImageView backupImageView = (BackupImageView) ViewBindings.findChildViewById(view, i);
                    if (backupImageView != null) {
                        i = C3558R.C3561id.image_network_icon;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView2 != null) {
                            i = C3558R.C3561id.text_collection_name;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView != null) {
                                i = C3558R.C3561id.text_collection_size;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView2 != null) {
                                    return new ForkRecycleItemNftCollectionBinding(frameLayout, cardView, constraintLayout, frameLayout, appCompatImageView, backupImageView, appCompatImageView2, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
