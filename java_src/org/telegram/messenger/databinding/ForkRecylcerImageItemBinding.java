package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkRecylcerImageItemBinding implements ViewBinding {
    public final ForkRecylcerErrorBlockBinding errorBlock;
    public final ImageView imageView;
    public final ProgressBar progressBar;
    private final FrameLayout rootView;

    private ForkRecylcerImageItemBinding(FrameLayout frameLayout, ForkRecylcerErrorBlockBinding forkRecylcerErrorBlockBinding, ImageView imageView, ProgressBar progressBar) {
        this.rootView = frameLayout;
        this.errorBlock = forkRecylcerErrorBlockBinding;
        this.imageView = imageView;
        this.progressBar = progressBar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkRecylcerImageItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecylcerImageItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_recylcer_image_item, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecylcerImageItemBinding bind(View view) {
        int i = C3419R.C3422id.errorBlock;
        View findChildViewById = ViewBindings.findChildViewById(view, i);
        if (findChildViewById != null) {
            ForkRecylcerErrorBlockBinding bind = ForkRecylcerErrorBlockBinding.bind(findChildViewById);
            int i2 = C3419R.C3422id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i2);
            if (imageView != null) {
                i2 = C3419R.C3422id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i2);
                if (progressBar != null) {
                    return new ForkRecylcerImageItemBinding((FrameLayout) view, bind, imageView, progressBar);
                }
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
