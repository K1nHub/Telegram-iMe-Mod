package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ShortcutWidgetLayoutPreviewBinding implements ViewBinding {
    private ShortcutWidgetLayoutPreviewBinding(LinearLayout linearLayout) {
    }

    public static ShortcutWidgetLayoutPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ShortcutWidgetLayoutPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.shortcut_widget_layout_preview, viewGroup, false);
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
