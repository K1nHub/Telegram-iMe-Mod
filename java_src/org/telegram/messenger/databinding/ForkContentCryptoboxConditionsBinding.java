package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.DetailsIconCellView;
import com.iMe.p031ui.custom.ImageHeaderView;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkContentCryptoboxConditionsBinding implements ViewBinding {
    public final FrameLayout frameButtonContainer;
    public final AppCompatImageView imageActionDescription;
    public final ActionBarMenuItem itemMoreOptions;
    public final LinearLayout linearActionDescription;
    private final NestedScrollView rootView;
    public final TextView textActionDescription;
    public final DetailsIconCellView viewBalanceCell;
    public final ImageHeaderView viewHeader;
    public final DetailsIconCellView viewMembersCell;
    public final DetailsIconCellView viewRewardPerUserCell;
    public final DetailsIconCellView viewStartDateCell;

    private ForkContentCryptoboxConditionsBinding(NestedScrollView nestedScrollView, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ActionBarMenuItem actionBarMenuItem, LinearLayout linearLayout, TextView textView, DetailsIconCellView detailsIconCellView, ImageHeaderView imageHeaderView, DetailsIconCellView detailsIconCellView2, DetailsIconCellView detailsIconCellView3, DetailsIconCellView detailsIconCellView4) {
        this.rootView = nestedScrollView;
        this.frameButtonContainer = frameLayout;
        this.imageActionDescription = appCompatImageView;
        this.itemMoreOptions = actionBarMenuItem;
        this.linearActionDescription = linearLayout;
        this.textActionDescription = textView;
        this.viewBalanceCell = detailsIconCellView;
        this.viewHeader = imageHeaderView;
        this.viewMembersCell = detailsIconCellView2;
        this.viewRewardPerUserCell = detailsIconCellView3;
        this.viewStartDateCell = detailsIconCellView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentCryptoboxConditionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentCryptoboxConditionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3558R.layout.fork_content_cryptobox_conditions, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentCryptoboxConditionsBinding bind(View view) {
        int i = C3558R.C3561id.frame_button_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C3558R.C3561id.image_action_description;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3558R.C3561id.item_more_options;
                ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
                if (actionBarMenuItem != null) {
                    i = C3558R.C3561id.linear_action_description;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = C3558R.C3561id.text_action_description;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = C3558R.C3561id.view_balance_cell;
                            DetailsIconCellView detailsIconCellView = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                            if (detailsIconCellView != null) {
                                i = C3558R.C3561id.view_header;
                                ImageHeaderView imageHeaderView = (ImageHeaderView) ViewBindings.findChildViewById(view, i);
                                if (imageHeaderView != null) {
                                    i = C3558R.C3561id.view_members_cell;
                                    DetailsIconCellView detailsIconCellView2 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                    if (detailsIconCellView2 != null) {
                                        i = C3558R.C3561id.view_reward_per_user_cell;
                                        DetailsIconCellView detailsIconCellView3 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                        if (detailsIconCellView3 != null) {
                                            i = C3558R.C3561id.view_start_date_cell;
                                            DetailsIconCellView detailsIconCellView4 = (DetailsIconCellView) ViewBindings.findChildViewById(view, i);
                                            if (detailsIconCellView4 != null) {
                                                return new ForkContentCryptoboxConditionsBinding((NestedScrollView) view, frameLayout, appCompatImageView, actionBarMenuItem, linearLayout, textView, detailsIconCellView, imageHeaderView, detailsIconCellView2, detailsIconCellView3, detailsIconCellView4);
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
