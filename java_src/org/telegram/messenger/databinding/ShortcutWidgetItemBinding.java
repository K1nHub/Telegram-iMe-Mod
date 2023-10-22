package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ShortcutWidgetItemBinding implements ViewBinding {
    private ShortcutWidgetItemBinding(FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, TextView textView, FrameLayout frameLayout3, TextView textView2, TextView textView3, TextView textView4) {
    }

    public static ShortcutWidgetItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ShortcutWidgetItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.shortcut_widget_item, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ShortcutWidgetItemBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i = C3630R.C3633id.shortcut_widget_item_avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3630R.C3633id.shortcut_widget_item_badge;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3630R.C3633id.shortcut_widget_item_divider;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout2 != null) {
                    i = C3630R.C3633id.shortcut_widget_item_message;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = C3630R.C3633id.shortcut_widget_item_text;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = C3630R.C3633id.shortcut_widget_item_time;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                return new ShortcutWidgetItemBinding(frameLayout, frameLayout, imageView, textView, frameLayout2, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
