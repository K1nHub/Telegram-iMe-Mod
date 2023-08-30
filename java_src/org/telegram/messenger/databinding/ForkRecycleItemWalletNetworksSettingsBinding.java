package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.iMe.p031ui.custom.ImageTextCheckCell;
import java.util.Objects;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletNetworksSettingsBinding implements ViewBinding {
    private final ImageTextCheckCell rootView;

    private ForkRecycleItemWalletNetworksSettingsBinding(ImageTextCheckCell imageTextCheckCell, ImageTextCheckCell imageTextCheckCell2) {
        this.rootView = imageTextCheckCell;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageTextCheckCell getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletNetworksSettingsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletNetworksSettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_recycle_item_wallet_networks_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletNetworksSettingsBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        ImageTextCheckCell imageTextCheckCell = (ImageTextCheckCell) view;
        return new ForkRecycleItemWalletNetworksSettingsBinding(imageTextCheckCell, imageTextCheckCell);
    }
}
