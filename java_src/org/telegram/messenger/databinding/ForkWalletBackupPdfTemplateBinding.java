package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkWalletBackupPdfTemplateBinding implements ViewBinding {
    public final AppCompatImageView imageQr;
    private final LinearLayout rootView;
    public final TextView textColumnLeft;
    public final TextView textColumnRight;
    public final TextView textWalletAddress;

    private ForkWalletBackupPdfTemplateBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.imageQr = appCompatImageView;
        this.textColumnLeft = textView;
        this.textColumnRight = textView2;
        this.textWalletAddress = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkWalletBackupPdfTemplateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkWalletBackupPdfTemplateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_wallet_backup_pdf_template, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkWalletBackupPdfTemplateBinding bind(View view) {
        int i = C3419R.C3422id.image_qr;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3419R.C3422id.text_column_left;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3419R.C3422id.text_column_right;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = C3419R.C3422id.text_wallet_address;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        return new ForkWalletBackupPdfTemplateBinding((LinearLayout) view, appCompatImageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
