package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.fork.p023ui.view.FloatingActionButton;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.RLottieImageView;
/* loaded from: classes4.dex */
public final class ForkFragmentCreateWalletIntroBinding implements ViewBinding {
    public final FloatingActionButton buttonNext;
    public final ConstraintLayout constraintLinkedWalletSection;
    public final ConstraintLayout constraintWallet;
    public final BackupImageView imageAvatar;
    public final AppCompatImageView imageCopy;
    public final RLottieImageView imageHeader;
    public final AppCompatImageView imageLinkedWalletInfo;
    public final ActionBarMenuItem itemMoreOptions;
    public final LinearLayout linearBottomPanel;
    public final NestedScrollView nestedRoot;
    private final FrameLayout rootView;
    public final AppCompatTextView textAddress;
    public final TextView textDescription;
    public final TextView textLinkedWalletTitle;
    public final TextView textPrivacy;
    public final TextView textTitle;
    public final AppCompatTextView textUserId;

    private ForkFragmentCreateWalletIntroBinding(FrameLayout frameLayout, FloatingActionButton floatingActionButton, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, BackupImageView backupImageView, AppCompatImageView appCompatImageView, RLottieImageView rLottieImageView, AppCompatImageView appCompatImageView2, ActionBarMenuItem actionBarMenuItem, LinearLayout linearLayout, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView2) {
        this.rootView = frameLayout;
        this.buttonNext = floatingActionButton;
        this.constraintLinkedWalletSection = constraintLayout;
        this.constraintWallet = constraintLayout2;
        this.imageAvatar = backupImageView;
        this.imageCopy = appCompatImageView;
        this.imageHeader = rLottieImageView;
        this.imageLinkedWalletInfo = appCompatImageView2;
        this.itemMoreOptions = actionBarMenuItem;
        this.linearBottomPanel = linearLayout;
        this.nestedRoot = nestedScrollView;
        this.textAddress = appCompatTextView;
        this.textDescription = textView;
        this.textLinkedWalletTitle = textView2;
        this.textPrivacy = textView3;
        this.textTitle = textView4;
        this.textUserId = appCompatTextView2;
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkFragmentCreateWalletIntroBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkFragmentCreateWalletIntroBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_fragment_create_wallet_intro, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkFragmentCreateWalletIntroBinding bind(View view) {
        int i = C3632R.C3635id.button_next;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i);
        if (floatingActionButton != null) {
            i = C3632R.C3635id.constraint_linked_wallet_section;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C3632R.C3635id.constraint_wallet;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout2 != null) {
                    i = C3632R.C3635id.image_avatar;
                    BackupImageView backupImageView = (BackupImageView) ViewBindings.findChildViewById(view, i);
                    if (backupImageView != null) {
                        i = C3632R.C3635id.image_copy;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView != null) {
                            i = C3632R.C3635id.image_header;
                            RLottieImageView rLottieImageView = (RLottieImageView) ViewBindings.findChildViewById(view, i);
                            if (rLottieImageView != null) {
                                i = C3632R.C3635id.image_linked_wallet_info;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView2 != null) {
                                    i = C3632R.C3635id.item_more_options;
                                    ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                                    if (actionBarMenuItem != null) {
                                        i = C3632R.C3635id.linear_bottom_panel;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout != null) {
                                            i = C3632R.C3635id.nested_root;
                                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                            if (nestedScrollView != null) {
                                                i = C3632R.C3635id.text_address;
                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView != null) {
                                                    i = C3632R.C3635id.text_description;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = C3632R.C3635id.text_linked_wallet_title;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView2 != null) {
                                                            i = C3632R.C3635id.text_privacy;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView3 != null) {
                                                                i = C3632R.C3635id.text_title;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView4 != null) {
                                                                    i = C3632R.C3635id.text_user_id;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView2 != null) {
                                                                        return new ForkFragmentCreateWalletIntroBinding((FrameLayout) view, floatingActionButton, constraintLayout, constraintLayout2, backupImageView, appCompatImageView, rLottieImageView, appCompatImageView2, actionBarMenuItem, linearLayout, nestedScrollView, appCompatTextView, textView, textView2, textView3, textView4, appCompatTextView2);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
