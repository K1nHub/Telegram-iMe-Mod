package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3158R;
/* loaded from: classes4.dex */
public final class ForkFragmentStakingCalculatorProgrammesBinding implements ViewBinding {
    public final RecyclerView recycleStakingProgrammes;
    private final RecyclerView rootView;

    private ForkFragmentStakingCalculatorProgrammesBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.recycleStakingProgrammes = recyclerView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RecyclerView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentStakingCalculatorProgrammesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentStakingCalculatorProgrammesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3158R.layout.fork_fragment_staking_calculator_programmes, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentStakingCalculatorProgrammesBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        RecyclerView recyclerView = (RecyclerView) view;
        return new ForkFragmentStakingCalculatorProgrammesBinding(recyclerView, recyclerView);
    }
}
