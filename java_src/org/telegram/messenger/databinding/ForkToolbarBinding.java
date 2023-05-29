package org.telegram.messenger.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3295R;
/* loaded from: classes4.dex */
public final class ForkToolbarBinding implements ViewBinding {
    public final ImageView imageBack;
    public final ImageView imageMenu;
    private final ConstraintLayout rootView;
    public final TextView textTitle;

    private ForkToolbarBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView) {
        this.rootView = constraintLayout;
        this.imageBack = imageView;
        this.imageMenu = imageView2;
        this.textTitle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkToolbarBinding bind(View view) {
        int i = C3295R.C3298id.image_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3295R.C3298id.image_menu;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView2 != null) {
                i = C3295R.C3298id.text_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new ForkToolbarBinding((ConstraintLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
