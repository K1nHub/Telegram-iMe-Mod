package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3301R;
/* loaded from: classes4.dex */
public final class ForkShopItemGridBinding implements ViewBinding {
    public final ImageView botAvatar;
    public final ImageView botInstalledIcon;
    public final TextView botName;
    public final TextView botNewLabel;
    public final TextView botStatus;
    private final ConstraintLayout rootView;

    private ForkShopItemGridBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3, FrameLayout frameLayout) {
        this.rootView = constraintLayout;
        this.botAvatar = imageView;
        this.botInstalledIcon = imageView2;
        this.botName = textView;
        this.botNewLabel = textView2;
        this.botStatus = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkShopItemGridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3301R.layout.fork_shop_item_grid, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkShopItemGridBinding bind(View view) {
        int i = C3301R.C3304id.bot_avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3301R.C3304id.bot_installed_icon;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView2 != null) {
                i = C3301R.C3304id.bot_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = C3301R.C3304id.bot_new_label;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = C3301R.C3304id.bot_status;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = C3301R.C3304id.layoutLabel;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                            if (frameLayout != null) {
                                return new ForkShopItemGridBinding((ConstraintLayout) view, imageView, imageView2, textView, textView2, textView3, frameLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
