package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.Components.PasscodeView;
/* loaded from: classes4.dex */
public final class ForkFragmentWalletEthEnterPinBinding implements ViewBinding {
    public final AppCompatImageView imageBack;
    public final PasscodeView passcodeView;
    private final FrameLayout rootView;

    private ForkFragmentWalletEthEnterPinBinding(FrameLayout frameLayout, AppCompatImageView appCompatImageView, PasscodeView passcodeView) {
        this.rootView = frameLayout;
        this.imageBack = appCompatImageView;
        this.passcodeView = passcodeView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentWalletEthEnterPinBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentWalletEthEnterPinBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_fragment_wallet_eth_enter_pin, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentWalletEthEnterPinBinding bind(View view) {
        int i = C3558R.C3561id.image_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3558R.C3561id.passcode_view;
            PasscodeView passcodeView = (PasscodeView) ViewBindings.findChildViewById(view, i);
            if (passcodeView != null) {
                return new ForkFragmentWalletEthEnterPinBinding((FrameLayout) view, appCompatImageView, passcodeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
