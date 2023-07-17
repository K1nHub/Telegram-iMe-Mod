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
import org.telegram.messenger.C3417R;
/* loaded from: classes4.dex */
public final class ForkTextRecognitionContentLayoutBinding implements ViewBinding {
    public final ConstraintLayout constraintLayoutHeader;
    public final AppCompatImageView imageClose;
    public final AppCompatImageView imageCopy;
    public final AppCompatImageView imageServiceLogo;
    public final AppCompatImageView imageShare;
    public final AppCompatImageView imageTranslate;
    public final AppCompatTextView recognizedText;
    private final LinearLayout rootView;
    public final AppCompatTextView textCompany;
    public final LinearLayout textRecognitionContainer;

    private ForkTextRecognitionContentLayoutBinding(LinearLayout linearLayout, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.constraintLayoutHeader = constraintLayout;
        this.imageClose = appCompatImageView;
        this.imageCopy = appCompatImageView2;
        this.imageServiceLogo = appCompatImageView3;
        this.imageShare = appCompatImageView4;
        this.imageTranslate = appCompatImageView5;
        this.recognizedText = appCompatTextView;
        this.textCompany = appCompatTextView2;
        this.textRecognitionContainer = linearLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ForkTextRecognitionContentLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkTextRecognitionContentLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3417R.layout.fork_text_recognition_content_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkTextRecognitionContentLayoutBinding bind(View view) {
        int i = C3417R.C3420id.constraint_layout_header;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C3417R.C3420id.image_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = C3417R.C3420id.image_copy;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView2 != null) {
                    i = C3417R.C3420id.image_service_logo;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView3 != null) {
                        i = C3417R.C3420id.image_share;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView4 != null) {
                            i = C3417R.C3420id.image_translate;
                            AppCompatImageView appCompatImageView5 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView5 != null) {
                                i = C3417R.C3420id.nested_scroll_view;
                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                if (nestedScrollView != null) {
                                    i = C3417R.C3420id.recognized_text;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView != null) {
                                        i = C3417R.C3420id.text_company;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView2 != null) {
                                            LinearLayout linearLayout = (LinearLayout) view;
                                            return new ForkTextRecognitionContentLayoutBinding(linearLayout, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, nestedScrollView, appCompatTextView, appCompatTextView2, linearLayout);
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
