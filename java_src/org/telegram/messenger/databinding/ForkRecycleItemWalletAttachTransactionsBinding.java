package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemWalletAttachTransactionsBinding implements ViewBinding {
    private final GlobalStateLayout rootView;

    private ForkRecycleItemWalletAttachTransactionsBinding(GlobalStateLayout globalStateLayout, GlobalStateLayout globalStateLayout2, RecyclerView recyclerView) {
        this.rootView = globalStateLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public GlobalStateLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemWalletAttachTransactionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletAttachTransactionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_recycle_item_wallet_attach_transactions, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletAttachTransactionsBinding bind(View view) {
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) view;
        int i = C3558R.C3561id.recycle_transactions;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkRecycleItemWalletAttachTransactionsBinding(globalStateLayout, globalStateLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
