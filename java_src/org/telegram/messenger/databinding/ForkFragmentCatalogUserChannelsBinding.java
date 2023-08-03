package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.ActionButton;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentCatalogUserChannelsBinding implements ViewBinding {
    public final ActionButton buttonAdd;
    public final RLottieImageView imageEmpty;
    public final RecyclerView recycleUserChannels;
    private final FrameLayout rootView;
    public final AppCompatTextView textEmptyDescription;
    public final AppCompatTextView textEmptyTitle;
    public final NestedScrollView viewEmpty;

    private ForkFragmentCatalogUserChannelsBinding(FrameLayout frameLayout, ActionButton actionButton, RLottieImageView rLottieImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, NestedScrollView nestedScrollView) {
        this.rootView = frameLayout;
        this.buttonAdd = actionButton;
        this.imageEmpty = rLottieImageView;
        this.recycleUserChannels = recyclerView;
        this.textEmptyDescription = appCompatTextView;
        this.textEmptyTitle = appCompatTextView2;
        this.viewEmpty = nestedScrollView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCatalogUserChannelsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCatalogUserChannelsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_fragment_catalog_user_channels, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCatalogUserChannelsBinding bind(View view) {
        int i = C3419R.C3422id.button_add;
        ActionButton actionButton = (ActionButton) ViewBindings.findChildViewById(view, i);
        if (actionButton != null) {
            i = C3419R.C3422id.image_empty;
            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
            if (rLottieImageView != null) {
                i = C3419R.C3422id.recycle_user_channels;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = C3419R.C3422id.text_empty_description;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = C3419R.C3422id.text_empty_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView2 != null) {
                            i = C3419R.C3422id.view_empty;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                            if (nestedScrollView != null) {
                                return new ForkFragmentCatalogUserChannelsBinding((FrameLayout) view, actionButton, rLottieImageView, recyclerView, appCompatTextView, appCompatTextView2, nestedScrollView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
