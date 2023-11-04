package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ContactsWidgetItem2Binding implements ViewBinding {
    private ContactsWidgetItem2Binding(FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, TextView textView, FrameLayout frameLayout3, TextView textView2) {
    }

    public static ContactsWidgetItem2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ContactsWidgetItem2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.contacts_widget_item_2, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ContactsWidgetItem2Binding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i = C3634R.C3637id.contacts_widget_item_avatar2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3634R.C3637id.contacts_widget_item_badge2;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3634R.C3637id.contacts_widget_item_badge_bg2;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout2 != null) {
                    i = C3634R.C3637id.contacts_widget_item_text2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new ContactsWidgetItem2Binding(frameLayout, frameLayout, imageView, textView, frameLayout2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
