package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class PlayerBigNotificationBinding implements ViewBinding {
    private PlayerBigNotificationBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, TextView textView2, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ProgressBar progressBar, TextView textView3) {
    }

    public static PlayerBigNotificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PlayerBigNotificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.player_big_notification, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static PlayerBigNotificationBinding bind(View view) {
        int i = C3630R.C3633id.player_album_art;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3630R.C3633id.player_album_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C3630R.C3633id.player_author_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = C3630R.C3633id.player_close;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView2 != null) {
                        i = C3630R.C3633id.player_next;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView3 != null) {
                            i = C3630R.C3633id.player_pause;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView4 != null) {
                                i = C3630R.C3633id.player_play;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView5 != null) {
                                    i = C3630R.C3633id.player_previous;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView6 != null) {
                                        i = C3630R.C3633id.player_progress_bar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                        if (progressBar != null) {
                                            i = C3630R.C3633id.player_song_name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView3 != null) {
                                                return new PlayerBigNotificationBinding((LinearLayout) view, imageView, textView, textView2, imageView2, imageView3, imageView4, imageView5, imageView6, progressBar, textView3);
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
