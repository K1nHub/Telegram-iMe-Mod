package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class CallNotificationBinding implements ViewBinding {
    private CallNotificationBinding(RelativeLayout relativeLayout, FrameLayout frameLayout, TextView textView, LinearLayout linearLayout, FrameLayout frameLayout2, TextView textView2, ImageView imageView, TextView textView3, ImageView imageView2, TextView textView4, LinearLayout linearLayout2, TextView textView5) {
    }

    public static CallNotificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CallNotificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.call_notification, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static CallNotificationBinding bind(View view) {
        int i = C3630R.C3633id.answer_btn;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C3630R.C3633id.answer_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3630R.C3633id.buttons;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C3630R.C3633id.decline_btn;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                    if (frameLayout2 != null) {
                        i = C3630R.C3633id.decline_text;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = C3630R.C3633id.icon;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = C3630R.C3633id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = C3630R.C3633id.photo;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView2 != null) {
                                        i = C3630R.C3633id.subtitle;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView4 != null) {
                                            i = C3630R.C3633id.text_wrap;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = C3630R.C3633id.title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView5 != null) {
                                                    return new CallNotificationBinding((RelativeLayout) view, frameLayout, textView, linearLayout, frameLayout2, textView2, imageView, textView3, imageView2, textView4, linearLayout2, textView5);
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
