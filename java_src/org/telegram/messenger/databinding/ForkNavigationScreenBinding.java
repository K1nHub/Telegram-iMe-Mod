package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkNavigationScreenBinding implements ViewBinding {
    private ForkNavigationScreenBinding(FragmentContainerView fragmentContainerView, FragmentContainerView fragmentContainerView2) {
    }

    public static ForkNavigationScreenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkNavigationScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_navigation_screen, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkNavigationScreenBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        FragmentContainerView fragmentContainerView = (FragmentContainerView) view;
        return new ForkNavigationScreenBinding(fragmentContainerView, fragmentContainerView);
    }
}
