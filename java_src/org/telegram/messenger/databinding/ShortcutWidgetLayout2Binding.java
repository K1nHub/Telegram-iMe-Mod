package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ShortcutWidgetLayout2Binding implements ViewBinding {
    private final LinearLayout rootView;

    private ShortcutWidgetLayout2Binding(LinearLayout linearLayout, TextView textView, ListView listView) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ShortcutWidgetLayout2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ShortcutWidgetLayout2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.shortcut_widget_layout_2, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ShortcutWidgetLayout2Binding bind(View view) {
        int i = C3417R.C3420id.empty_view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3417R.C3420id.list_view;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, i);
            if (listView != null) {
                return new ShortcutWidgetLayout2Binding((LinearLayout) view, textView, listView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}