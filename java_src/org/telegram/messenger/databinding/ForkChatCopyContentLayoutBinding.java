package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkChatCopyContentLayoutBinding implements ViewBinding {
    public final AppCompatTextView buttonClose;
    private final LinearLayout rootView;
    public final AppCompatTextView textMessage;
    public final View viewDivider;

    private ForkChatCopyContentLayoutBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView2, View view) {
        this.rootView = linearLayout;
        this.buttonClose = appCompatTextView;
        this.textMessage = appCompatTextView2;
        this.viewDivider = view;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkChatCopyContentLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkChatCopyContentLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_chat_copy_content_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkChatCopyContentLayoutBinding bind(View view) {
        View findChildViewById;
        int i = C3630R.C3633id.button_close;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            i = C3630R.C3633id.nested_scroll_view;
            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
            if (nestedScrollView != null) {
                i = C3630R.C3633id.text_message;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C3630R.C3633id.view_divider))) != null) {
                    return new ForkChatCopyContentLayoutBinding((LinearLayout) view, appCompatTextView, nestedScrollView, appCompatTextView2, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
