package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p031ui.custom.DividerView;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ForkTranslateContentLayoutBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ForkTranslateContentLayoutBinding(LinearLayout linearLayout, ConstraintLayout constraintLayout, LinearLayout linearLayout2, View view, GlobalStateLayout globalStateLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, AppCompatImageView appCompatImageView7, NestedScrollView nestedScrollView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, DividerView dividerView) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkTranslateContentLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkTranslateContentLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_translate_content_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkTranslateContentLayoutBinding bind(View view) {
        int i = C3417R.C3420id.constraint_layout_header;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = C3417R.C3420id.dummy;
            View findChildViewById = ViewBindings.findChildViewById(view, i);
            if (findChildViewById != null) {
                i = C3417R.C3420id.global_state_layout;
                GlobalStateLayout globalStateLayout = (GlobalStateLayout) ViewBindings.findChildViewById(view, i);
                if (globalStateLayout != null) {
                    i = C3417R.C3420id.image_change_direction;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView != null) {
                        i = C3417R.C3420id.image_close;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView2 != null) {
                            i = C3417R.C3420id.image_copy;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView3 != null) {
                                i = C3417R.C3420id.image_forward;
                                AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView4 != null) {
                                    i = C3417R.C3420id.image_settings;
                                    AppCompatImageView appCompatImageView5 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatImageView5 != null) {
                                        i = C3417R.C3420id.image_share;
                                        AppCompatImageView appCompatImageView6 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatImageView6 != null) {
                                            i = C3417R.C3420id.image_translate_logo;
                                            AppCompatImageView appCompatImageView7 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatImageView7 != null) {
                                                i = C3417R.C3420id.nested_scroll_view;
                                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                if (nestedScrollView != null) {
                                                    i = C3417R.C3420id.options_layout;
                                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                                    if (constraintLayout2 != null) {
                                                        i = C3417R.C3420id.text_company;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView != null) {
                                                            i = C3417R.C3420id.text_paste;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView2 != null) {
                                                                i = C3417R.C3420id.text_service;
                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView3 != null) {
                                                                    i = C3417R.C3420id.text_source_language;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView4 != null) {
                                                                        i = C3417R.C3420id.text_target_language;
                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView5 != null) {
                                                                            i = C3417R.C3420id.view_divider;
                                                                            DividerView dividerView = (DividerView) ViewBindings.findChildViewById(view, i);
                                                                            if (dividerView != null) {
                                                                                return new ForkTranslateContentLayoutBinding(linearLayout, constraintLayout, linearLayout, findChildViewById, globalStateLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, appCompatImageView7, nestedScrollView, constraintLayout2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, dividerView);
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
