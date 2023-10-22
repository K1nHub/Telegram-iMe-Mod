package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import java.util.Objects;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkProfileSocialCellBinding implements ViewBinding {
    public final TextView buttonAdd;
    public final LinearLayout linearImages;
    public final TextView textSubTitle;
    public final TextView textTitle;

    private ForkProfileSocialCellBinding(View view, TextView textView, LinearLayout linearLayout, TextView textView2, TextView textView3) {
        this.buttonAdd = textView;
        this.linearImages = linearLayout;
        this.textSubTitle = textView2;
        this.textTitle = textView3;
    }

    public static ForkProfileSocialCellBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(C3630R.layout.fork_profile_social_cell, viewGroup);
        return bind(viewGroup);
    }

    public static ForkProfileSocialCellBinding bind(View view) {
        int i = C3630R.C3633id.buttonAdd;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C3630R.C3633id.linearImages;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = C3630R.C3633id.textSubTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = C3630R.C3633id.textTitle;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        return new ForkProfileSocialCellBinding(view, textView, linearLayout, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
