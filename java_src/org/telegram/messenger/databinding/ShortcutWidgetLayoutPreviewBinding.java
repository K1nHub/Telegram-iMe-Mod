package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ShortcutWidgetLayoutPreviewBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ShortcutWidgetLayoutPreviewBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ShortcutWidgetLayoutPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ShortcutWidgetLayoutPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.shortcut_widget_layout_preview, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ShortcutWidgetLayoutPreviewBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new ShortcutWidgetLayoutPreviewBinding((LinearLayout) view);
    }
}
