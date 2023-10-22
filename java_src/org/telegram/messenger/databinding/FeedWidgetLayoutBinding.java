package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class FeedWidgetLayoutBinding implements ViewBinding {
    private FeedWidgetLayoutBinding(LinearLayout linearLayout, TextView textView, ListView listView) {
    }

    public static FeedWidgetLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FeedWidgetLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.feed_widget_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FeedWidgetLayoutBinding bind(View view) {
        int i = C3630R.C3633id.empty_view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3630R.C3633id.list_view;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, i);
            if (listView != null) {
                return new FeedWidgetLayoutBinding((LinearLayout) view, textView, listView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
