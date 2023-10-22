package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.nft.NftRootView;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Components.BackupImageView;
/* loaded from: classes4.dex */
public final class ForkRecycleItemNftTokenBinding implements ViewBinding {
    private ForkRecycleItemNftTokenBinding(NftRootView nftRootView, CardView cardView, ConstraintLayout constraintLayout, BackupImageView backupImageView, NftRootView nftRootView2) {
    }

    public static ForkRecycleItemNftTokenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemNftTokenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_nft_token, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemNftTokenBinding bind(View view) {
        int i = C3630R.C3633id.card_nft_token;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = C3630R.C3633id.constraint_root;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3630R.C3633id.image_nft_image;
                BackupImageView backupImageView = (BackupImageView) ViewBindings.findChildViewById(view, i);
                if (backupImageView != null) {
                    NftRootView nftRootView = (NftRootView) view;
                    return new ForkRecycleItemNftTokenBinding(nftRootView, cardView, constraintLayout, backupImageView, nftRootView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
