package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkFragmentStakingCalculatorBinding implements ViewBinding {
    private final FrameLayout rootView;

    private ForkFragmentStakingCalculatorBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentStakingCalculatorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentStakingCalculatorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_fragment_staking_calculator, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentStakingCalculatorBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new ForkFragmentStakingCalculatorBinding((FrameLayout) view);
    }
}
