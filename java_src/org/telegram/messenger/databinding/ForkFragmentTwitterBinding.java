package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkFragmentTwitterBinding implements ViewBinding {
    public final RecyclerView recycleTweets;
    private final SwipeRefreshLayout rootView;

    private ForkFragmentTwitterBinding(SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView) {
        this.rootView = swipeRefreshLayout;
        this.recycleTweets = recyclerView;
    }

    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentTwitterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentTwitterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_fragment_twitter, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentTwitterBinding bind(View view) {
        int i = C3630R.C3633id.recycle_tweets;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            return new ForkFragmentTwitterBinding((SwipeRefreshLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
