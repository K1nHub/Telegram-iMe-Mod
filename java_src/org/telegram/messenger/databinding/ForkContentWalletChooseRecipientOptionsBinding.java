package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkContentWalletChooseRecipientOptionsBinding implements ViewBinding {
    public final FrameLayout frameContacts;
    public final FrameLayout framePaste;
    public final FrameLayout frameQr;
    private final LinearLayoutCompat rootView;
    public final TextView textContacts;
    public final TextView textPaste;
    public final TextView textQr;

    private ForkContentWalletChooseRecipientOptionsBinding(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayoutCompat;
        this.frameContacts = frameLayout;
        this.framePaste = frameLayout2;
        this.frameQr = frameLayout3;
        this.textContacts = textView;
        this.textPaste = textView2;
        this.textQr = textView3;
    }

    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static ForkContentWalletChooseRecipientOptionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWalletChooseRecipientOptionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_content_wallet_choose_recipient_options, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWalletChooseRecipientOptionsBinding bind(View view) {
        int i = C3632R.C3635id.frame_contacts;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C3632R.C3635id.frame_paste;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout2 != null) {
                i = C3632R.C3635id.frame_qr;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout3 != null) {
                    i = C3632R.C3635id.text_contacts;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = C3632R.C3635id.text_paste;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = C3632R.C3635id.text_qr;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView3 != null) {
                                return new ForkContentWalletChooseRecipientOptionsBinding((LinearLayoutCompat) view, frameLayout, frameLayout2, frameLayout3, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
