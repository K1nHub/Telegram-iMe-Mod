package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletNetworksSettingsBinding implements ViewBinding {
    public final RecyclerView recycleSettings;
    private final GlobalStateLayout rootView;

    private ForkFragmentWalletNetworksSettingsBinding(GlobalStateLayout globalStateLayout, RecyclerView recyclerView) {
        this.rootView = globalStateLayout;
        this.recycleSettings = recyclerView;
    }

    public GlobalStateLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletNetworksSettingsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletNetworksSettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_fragment_wallet_networks_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletNetworksSettingsBinding bind(View view) {
        int i = C3634R.C3637id.recycle_settings;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletNetworksSettingsBinding((GlobalStateLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
