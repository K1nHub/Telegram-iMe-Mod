package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemTweetBinding implements ViewBinding {
    private ForkRecycleItemTweetBinding(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ImageView imageView, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, LinearLayout linearLayout, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, ConstraintLayout constraintLayout2) {
    }

    public static ForkRecycleItemTweetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemTweetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_tweet, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemTweetBinding bind(View view) {
        int i = C3632R.C3635id.image_avatar;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = C3632R.C3635id.image_comments;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView2 != null) {
                i = C3632R.C3635id.image_like;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                if (appCompatImageView3 != null) {
                    i = C3632R.C3635id.image_menu;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null) {
                        i = C3632R.C3635id.image_retweets;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView4 != null) {
                            i = C3632R.C3635id.image_share;
                            AppCompatImageView appCompatImageView5 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView5 != null) {
                                i = C3632R.C3635id.linear_bottom_panel;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout != null) {
                                    i = C3632R.C3635id.recycler;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                    if (recyclerView != null) {
                                        i = C3632R.C3635id.text_comments_count;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = C3632R.C3635id.text_likes_count;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView2 != null) {
                                                i = C3632R.C3635id.text_name;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView3 != null) {
                                                    i = C3632R.C3635id.text_nickname;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView4 != null) {
                                                        i = C3632R.C3635id.text_post;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView5 != null) {
                                                            i = C3632R.C3635id.text_retweets_count;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView6 != null) {
                                                                i = C3632R.C3635id.text_time;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView7 != null) {
                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                                    return new ForkRecycleItemTweetBinding(constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, imageView, appCompatImageView4, appCompatImageView5, linearLayout, recyclerView, textView, textView2, textView3, textView4, textView5, textView6, textView7, constraintLayout);
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
