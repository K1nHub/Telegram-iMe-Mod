package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ShortcutWidgetLayout4Binding implements ViewBinding {
    private ShortcutWidgetLayout4Binding(LinearLayout linearLayout, TextView textView, ListView listView) {
    }

    public static ShortcutWidgetLayout4Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ShortcutWidgetLayout4Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.shortcut_widget_layout_4, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ShortcutWidgetLayout4Binding bind(View view) {
        int i = C3632R.C3635id.empty_view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3632R.C3635id.list_view;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, i);
            if (listView != null) {
                return new ShortcutWidgetLayout4Binding((LinearLayout) view, textView, listView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
