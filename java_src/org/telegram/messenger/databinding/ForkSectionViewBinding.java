package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkSectionViewBinding implements ViewBinding {
    private ForkSectionViewBinding(View view, View view2) {
    }

    public static ForkSectionViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkSectionViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_section_view, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkSectionViewBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new ForkSectionViewBinding(view, view);
    }
}
