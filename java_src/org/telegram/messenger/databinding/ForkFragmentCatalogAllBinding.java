package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3242R;
/* loaded from: classes4.dex */
public final class ForkFragmentCatalogAllBinding implements ViewBinding {
    public final GlobalStateLayout globalStateLayout;
    public final RecyclerView recycleCategories;
    private final SwipeRefreshLayout rootView;

    private ForkFragmentCatalogAllBinding(SwipeRefreshLayout swipeRefreshLayout, GlobalStateLayout globalStateLayout, RecyclerView recyclerView) {
        this.rootView = swipeRefreshLayout;
        this.globalStateLayout = globalStateLayout;
        this.recycleCategories = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCatalogAllBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCatalogAllBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3242R.layout.fork_fragment_catalog_all, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCatalogAllBinding bind(View view) {
        int i = C3242R.C3245id.global_state_layout;
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) ViewBindings.findChildViewById(view, i);
        if (globalStateLayout != null) {
            i = C3242R.C3245id.recycle_categories;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                return new ForkFragmentCatalogAllBinding((SwipeRefreshLayout) view, globalStateLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
