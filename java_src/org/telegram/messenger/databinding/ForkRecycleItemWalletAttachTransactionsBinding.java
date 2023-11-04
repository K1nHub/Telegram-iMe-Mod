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
public final class ForkRecycleItemWalletAttachTransactionsBinding implements ViewBinding {
    private ForkRecycleItemWalletAttachTransactionsBinding(GlobalStateLayout globalStateLayout, GlobalStateLayout globalStateLayout2, RecyclerView recyclerView) {
    }

    public static ForkRecycleItemWalletAttachTransactionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemWalletAttachTransactionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_recycle_item_wallet_attach_transactions, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemWalletAttachTransactionsBinding bind(View view) {
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) view;
        int i = C3634R.C3637id.recycle_transactions;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkRecycleItemWalletAttachTransactionsBinding(globalStateLayout, globalStateLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
