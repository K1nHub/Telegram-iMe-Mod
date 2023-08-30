package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import me.grantland.widget.AutofitTextView;
import org.telegram.messenger.C3558R;
/* loaded from: classes4.dex */
public final class ForkShopItemListBinding implements ViewBinding {
    public final ImageView botAvatar;
    public final TextView botDescription;
    public final TextView botName;
    public final TextView botNewLabel;
    private final ConstraintLayout rootView;
    public final AutofitTextView shopButton;

    private ForkShopItemListBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, ConstraintLayout constraintLayout2, AutofitTextView autofitTextView) {
        this.rootView = constraintLayout;
        this.botAvatar = imageView;
        this.botDescription = textView;
        this.botName = textView2;
        this.botNewLabel = textView3;
        this.shopButton = autofitTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkShopItemListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkShopItemListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_shop_item_list, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkShopItemListBinding bind(View view) {
        int i = C3558R.C3561id.bot_avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3558R.C3561id.bot_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3558R.C3561id.bot_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = C3558R.C3561id.bot_new_label;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i = C3558R.C3561id.shop_button;
                        AutofitTextView autofitTextView = (AutofitTextView) ViewBindings.findChildViewById(view, i);
                        if (autofitTextView != null) {
                            return new ForkShopItemListBinding(constraintLayout, imageView, textView, textView2, textView3, constraintLayout, autofitTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
