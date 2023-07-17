package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import java.util.Objects;
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemGlobalStateBinding implements ViewBinding {
    private final GlobalStateLayout rootView;

    private ForkRecycleItemGlobalStateBinding(GlobalStateLayout globalStateLayout, GlobalStateLayout globalStateLayout2) {
        this.rootView = globalStateLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public GlobalStateLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecycleItemGlobalStateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemGlobalStateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_recycle_item_global_state, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemGlobalStateBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        GlobalStateLayout globalStateLayout = (GlobalStateLayout) view;
        return new ForkRecycleItemGlobalStateBinding(globalStateLayout, globalStateLayout);
    }
}
