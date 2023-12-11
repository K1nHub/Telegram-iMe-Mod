package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Components.BackupImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentFragmentPremiumBinding implements ViewBinding {
    public final ActionBarMenuItem buttonBack;
    public final CardView cardView;
    public final FrameLayout frameButtonContainer;
    public final FrameLayout framePremiumStarContainer;
    public final AppCompatImageView imageRecipientIcon;
    public final BackupImageView imageUserAvatar;
    public final NestedScrollView nestedRoot;
    public final RecyclerView recyclerProducts;
    private final FrameLayout rootView;
    public final TextView textBalance;
    public final TextView textDurationTitle;
    public final TextView textRecipientTitle;
    public final TextView textRecipientValue;
    public final TextView textSubtitle;
    public final TextView textTitle;
    public final LinearLayout viewRecipient;

    private ForkFragmentFragmentPremiumBinding(FrameLayout frameLayout, ActionBarMenuItem actionBarMenuItem, CardView cardView, FrameLayout frameLayout2, FrameLayout frameLayout3, AppCompatImageView appCompatImageView, BackupImageView backupImageView, NestedScrollView nestedScrollView, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.buttonBack = actionBarMenuItem;
        this.cardView = cardView;
        this.frameButtonContainer = frameLayout2;
        this.framePremiumStarContainer = frameLayout3;
        this.imageRecipientIcon = appCompatImageView;
        this.imageUserAvatar = backupImageView;
        this.nestedRoot = nestedScrollView;
        this.recyclerProducts = recyclerView;
        this.textBalance = textView;
        this.textDurationTitle = textView2;
        this.textRecipientTitle = textView3;
        this.textRecipientValue = textView4;
        this.textSubtitle = textView5;
        this.textTitle = textView6;
        this.viewRecipient = linearLayout;
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentFragmentPremiumBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentFragmentPremiumBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_fragment_premium, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentFragmentPremiumBinding bind(View view) {
        int i = C3632R.C3635id.button_back;
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
        if (actionBarMenuItem != null) {
            i = C3632R.C3635id.card_view;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
            if (cardView != null) {
                i = C3632R.C3635id.frame_button_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout != null) {
                    i = C3632R.C3635id.frame_premium_star_container;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                    if (frameLayout2 != null) {
                        i = C3632R.C3635id.image_recipient_icon;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView != null) {
                            i = C3632R.C3635id.image_user_avatar;
                            BackupImageView backupImageView = (BackupImageView) ViewBindings.findChildViewById(view, i);
                            if (backupImageView != null) {
                                i = C3632R.C3635id.nested_root;
                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                if (nestedScrollView != null) {
                                    i = C3632R.C3635id.recycler_products;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                    if (recyclerView != null) {
                                        i = C3632R.C3635id.text_balance;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = C3632R.C3635id.text_duration_title;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView2 != null) {
                                                i = C3632R.C3635id.text_recipient_title;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView3 != null) {
                                                    i = C3632R.C3635id.text_recipient_value;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView4 != null) {
                                                        i = C3632R.C3635id.text_subtitle;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView5 != null) {
                                                            i = C3632R.C3635id.text_title;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView6 != null) {
                                                                i = C3632R.C3635id.view_recipient;
                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout != null) {
                                                                    return new ForkFragmentFragmentPremiumBinding((FrameLayout) view, actionBarMenuItem, cardView, frameLayout, frameLayout2, appCompatImageView, backupImageView, nestedScrollView, recyclerView, textView, textView2, textView3, textView4, textView5, textView6, linearLayout);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
