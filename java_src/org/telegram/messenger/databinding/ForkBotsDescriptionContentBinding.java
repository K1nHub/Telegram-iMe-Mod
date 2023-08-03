package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.flexbox.FlexboxLayout;
import me.zhanghai.android.materialratingbar.MaterialRatingBar;
import org.telegram.messenger.C3419R;
/* loaded from: classes4.dex */
public final class ForkBotsDescriptionContentBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ForkBotsDescriptionContentBinding(LinearLayout linearLayout, ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, ConstraintLayout constraintLayout2, TextView textView11, TextView textView12, ProgressBar progressBar, MaterialRatingBar materialRatingBar, LinearLayout linearLayout2, TextView textView13, TextView textView14, ScrollView scrollView, ConstraintLayout constraintLayout3, FlexboxLayout flexboxLayout, TextView textView15, TextView textView16, TextView textView17) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkBotsDescriptionContentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkBotsDescriptionContentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3419R.layout.fork_bots_description_content, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkBotsDescriptionContentBinding bind(View view) {
        int i = C3419R.C3422id.avatar_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C3419R.C3422id.bot_analog_language;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3419R.C3422id.bot_avatar;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = C3419R.C3422id.bot_current_language;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = C3419R.C3422id.bot_date_added;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = C3419R.C3422id.bot_date_updated;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                i = C3419R.C3422id.bot_description;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView5 != null) {
                                    i = C3419R.C3422id.bot_developer;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView6 != null) {
                                        i = C3419R.C3422id.bot_info_button;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView7 != null) {
                                            i = C3419R.C3422id.bot_name;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView8 != null) {
                                                i = C3419R.C3422id.installs_counter;
                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView9 != null) {
                                                    i = C3419R.C3422id.installs_label;
                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView10 != null) {
                                                        i = C3419R.C3422id.layoutContainer;
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                                        if (constraintLayout2 != null) {
                                                            i = C3419R.C3422id.phrases_counter;
                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView11 != null) {
                                                                i = C3419R.C3422id.phrases_label;
                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView12 != null) {
                                                                    i = C3419R.C3422id.progressBar;
                                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                                                    if (progressBar != null) {
                                                                        i = C3419R.C3422id.rating;
                                                                        MaterialRatingBar materialRatingBar = (MaterialRatingBar) ViewBindings.findChildViewById(view, i);
                                                                        if (materialRatingBar != null) {
                                                                            i = C3419R.C3422id.rating_container;
                                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (linearLayout != null) {
                                                                                i = C3419R.C3422id.rating_label;
                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView13 != null) {
                                                                                    i = C3419R.C3422id.rating_number;
                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView14 != null) {
                                                                                        i = C3419R.C3422id.scroll;
                                                                                        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, i);
                                                                                        if (scrollView != null) {
                                                                                            i = C3419R.C3422id.stats_container;
                                                                                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                                                                            if (constraintLayout3 != null) {
                                                                                                i = C3419R.C3422id.tags_container;
                                                                                                FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, i);
                                                                                                if (flexboxLayout != null) {
                                                                                                    i = C3419R.C3422id.textRateBot;
                                                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView15 != null) {
                                                                                                        i = C3419R.C3422id.themes_counter;
                                                                                                        TextView textView16 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView16 != null) {
                                                                                                            i = C3419R.C3422id.themes_label;
                                                                                                            TextView textView17 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (textView17 != null) {
                                                                                                                return new ForkBotsDescriptionContentBinding((LinearLayout) view, constraintLayout, textView, imageView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, constraintLayout2, textView11, textView12, progressBar, materialRatingBar, linearLayout, textView13, textView14, scrollView, constraintLayout3, flexboxLayout, textView15, textView16, textView17);
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
