package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.DividerView;
import org.telegram.messenger.C3634R;
/* loaded from: classes4.dex */
public final class ForkContentTokenFamilyBinding implements ViewBinding {
    public final TextView buttonDone;
    public final DividerView divider;
    public final RecyclerView recyclerTokens;
    private final NestedScrollView rootView;
    public final TextView textDescription;
    public final TextView textTitle;

    private ForkContentTokenFamilyBinding(NestedScrollView nestedScrollView, TextView textView, DividerView dividerView, RecyclerView recyclerView, TextView textView2, TextView textView3) {
        this.rootView = nestedScrollView;
        this.buttonDone = textView;
        this.divider = dividerView;
        this.recyclerTokens = recyclerView;
        this.textDescription = textView2;
        this.textTitle = textView3;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentTokenFamilyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentTokenFamilyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3634R.layout.fork_content_token_family, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentTokenFamilyBinding bind(View view) {
        int i = C3634R.C3637id.button_done;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3634R.C3637id.divider;
            DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
            if (dividerView != null) {
                i = C3634R.C3637id.recycler_tokens;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = C3634R.C3637id.text_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = C3634R.C3637id.text_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new ForkContentTokenFamilyBinding((NestedScrollView) view, textView, dividerView, recyclerView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
