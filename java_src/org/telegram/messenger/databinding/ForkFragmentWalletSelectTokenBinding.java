package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletSelectTokenBinding implements ViewBinding {
    public final GlobalStateLayout globalStateLayout;
    public final RecyclerView recycleTokens;
    private final GlobalStateLayout rootView;

    private ForkFragmentWalletSelectTokenBinding(GlobalStateLayout globalStateLayout, GlobalStateLayout globalStateLayout2, RecyclerView recyclerView) {
        this.rootView = globalStateLayout;
        this.globalStateLayout = globalStateLayout2;
        this.recycleTokens = recyclerView;
    }

    public GlobalStateLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletSelectTokenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletSelectTokenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_fragment_wallet_select_token, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletSelectTokenBinding bind(View view) {
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) view;
        int i = C3630R.C3633id.recycle_tokens;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentWalletSelectTokenBinding(globalStateLayout, globalStateLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
