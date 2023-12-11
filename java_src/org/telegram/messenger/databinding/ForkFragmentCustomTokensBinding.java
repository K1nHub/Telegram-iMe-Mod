package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkFragmentCustomTokensBinding implements ViewBinding {
    public final RecyclerView recyclerTokens;
    private final RecyclerView rootView;

    private ForkFragmentCustomTokensBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.recyclerTokens = recyclerView2;
    }

    public RecyclerView getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCustomTokensBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCustomTokensBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_custom_tokens, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCustomTokensBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        RecyclerView recyclerView = (RecyclerView) view;
        return new ForkFragmentCustomTokensBinding(recyclerView, recyclerView);
    }
}
