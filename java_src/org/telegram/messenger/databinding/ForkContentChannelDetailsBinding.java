package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.flexbox.FlexboxLayout;
import com.iMe.p030ui.custom.BigActionButton;
import com.iMe.p030ui.topics.TopicView;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* loaded from: classes4.dex */
public final class ForkContentChannelDetailsBinding implements ViewBinding {
    public final ActionBarMenuItem buttonMore;
    public final BigActionButton buttonSubscribe;
    public final ConstraintLayout constraintTags;
    public final FlexboxLayout flexboxTags;
    public final AppCompatImageView imageAvatar;
    public final AppCompatImageView imageLanguage;
    public final AppCompatImageView imageTags;
    public final AppCompatImageView imageVerified;
    private final NestedScrollView rootView;
    public final AppCompatTextView textDescription;
    public final AppCompatTextView textLanguageTitle;
    public final AppCompatTextView textLanguageValue;
    public final AppCompatTextView textName;
    public final AppCompatTextView textNickname;
    public final AppCompatTextView textSubscribersCount;
    public final AppCompatTextView textTags;
    public final TopicView topic;

    private ForkContentChannelDetailsBinding(NestedScrollView nestedScrollView, ActionBarMenuItem actionBarMenuItem, BigActionButton bigActionButton, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, FlexboxLayout flexboxLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, TopicView topicView) {
        this.rootView = nestedScrollView;
        this.buttonMore = actionBarMenuItem;
        this.buttonSubscribe = bigActionButton;
        this.constraintTags = constraintLayout2;
        this.flexboxTags = flexboxLayout;
        this.imageAvatar = appCompatImageView;
        this.imageLanguage = appCompatImageView2;
        this.imageTags = appCompatImageView3;
        this.imageVerified = appCompatImageView4;
        this.textDescription = appCompatTextView;
        this.textLanguageTitle = appCompatTextView2;
        this.textLanguageValue = appCompatTextView3;
        this.textName = appCompatTextView4;
        this.textNickname = appCompatTextView5;
        this.textSubscribersCount = appCompatTextView6;
        this.textTags = appCompatTextView7;
        this.topic = topicView;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentChannelDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentChannelDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_content_channel_details, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentChannelDetailsBinding bind(View view) {
        int i = C3632R.C3635id.button_more;
        ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) ViewBindings.findChildViewById(view, i);
        if (actionBarMenuItem != null) {
            i = C3632R.C3635id.button_subscribe;
            BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
            if (bigActionButton != null) {
                i = C3632R.C3635id.constraint_root;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout != null) {
                    i = C3632R.C3635id.constraint_tags;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                    if (constraintLayout2 != null) {
                        i = C3632R.C3635id.flexbox_tags;
                        FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, i);
                        if (flexboxLayout != null) {
                            i = C3632R.C3635id.image_avatar;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                            if (appCompatImageView != null) {
                                i = C3632R.C3635id.image_language;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView2 != null) {
                                    i = C3632R.C3635id.image_tags;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatImageView3 != null) {
                                        i = C3632R.C3635id.image_verified;
                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatImageView4 != null) {
                                            i = C3632R.C3635id.text_description;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView != null) {
                                                i = C3632R.C3635id.text_language_title;
                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView2 != null) {
                                                    i = C3632R.C3635id.text_language_value;
                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                    if (appCompatTextView3 != null) {
                                                        i = C3632R.C3635id.text_name;
                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView4 != null) {
                                                            i = C3632R.C3635id.text_nickname;
                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView5 != null) {
                                                                i = C3632R.C3635id.text_subscribers_count;
                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView6 != null) {
                                                                    i = C3632R.C3635id.text_tags;
                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView7 != null) {
                                                                        i = C3632R.C3635id.topic;
                                                                        TopicView topicView = (TopicView) ViewBindings.findChildViewById(view, i);
                                                                        if (topicView != null) {
                                                                            return new ForkContentChannelDetailsBinding((NestedScrollView) view, actionBarMenuItem, bigActionButton, constraintLayout, constraintLayout2, flexboxLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, topicView);
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
