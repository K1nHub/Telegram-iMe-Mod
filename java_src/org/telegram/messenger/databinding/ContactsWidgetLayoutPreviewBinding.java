package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ContactsWidgetLayoutPreviewBinding implements ViewBinding {
    private ContactsWidgetLayoutPreviewBinding(LinearLayout linearLayout) {
    }

    public static ContactsWidgetLayoutPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ContactsWidgetLayoutPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.contacts_widget_layout_preview, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ContactsWidgetLayoutPreviewBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new ContactsWidgetLayoutPreviewBinding((LinearLayout) view);
    }
}
