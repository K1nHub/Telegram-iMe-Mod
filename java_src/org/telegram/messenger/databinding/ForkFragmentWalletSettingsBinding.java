package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletSettingsBinding implements ViewBinding {
    public final RecyclerView recycleSettings;
    private final FrameLayout rootView;

    private ForkFragmentWalletSettingsBinding(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.recycleSettings = recyclerView;
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletSettingsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletSettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_wallet_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletSettingsBinding bind(View view) {
        int i = C3632R.C3635id.recycle_settings;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletSettingsBinding((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
