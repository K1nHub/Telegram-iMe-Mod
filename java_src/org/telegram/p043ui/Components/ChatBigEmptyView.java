package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ChatBigEmptyView */
/* loaded from: classes6.dex */
public class ChatBigEmptyView extends LinearLayout {
    private ArrayList<ImageView> imageViews;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView statusTextView;
    private ArrayList<TextView> textViews;

    public ChatBigEmptyView(Context context, View view, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        int i2;
        this.textViews = new ArrayList<>();
        this.imageViews = new ArrayList<>();
        this.resourcesProvider = resourcesProvider;
        setBackground(Theme.createServiceDrawable(AndroidUtilities.m104dp(18), this, view, getThemedPaint("paintChatActionBackground")));
        setPadding(AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(12));
        setOrientation(1);
        if (i == 0) {
            TextView textView = new TextView(context);
            this.statusTextView = textView;
            textView.setTextSize(1, 15.0f);
            this.statusTextView.setTextColor(getThemedColor(Theme.key_chat_serviceText));
            this.statusTextView.setGravity(1);
            this.statusTextView.setMaxWidth(AndroidUtilities.m104dp(210));
            this.textViews.add(this.statusTextView);
            addView(this.statusTextView, LayoutHelper.createLinear(-2, -2, 49));
        } else if (i == 1) {
            TextView textView2 = new TextView(context);
            this.statusTextView = textView2;
            textView2.setTextSize(1, 15.0f);
            this.statusTextView.setTextColor(getThemedColor(Theme.key_chat_serviceText));
            this.statusTextView.setGravity(1);
            this.statusTextView.setMaxWidth(AndroidUtilities.m104dp(210));
            this.textViews.add(this.statusTextView);
            addView(this.statusTextView, LayoutHelper.createLinear(-2, -2, 49));
        } else {
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            rLottieImageView.setAutoRepeat(true);
            rLottieImageView.setAnimation(C3634R.raw.utyan_saved_messages, 120, 120);
            rLottieImageView.playAnimation();
            addView(rLottieImageView, LayoutHelper.createLinear(-2, -2, 49, 0, 2, 0, 0));
        }
        TextView textView3 = new TextView(context);
        if (i == 0) {
            textView3.setText(LocaleController.getString("EncryptedDescriptionTitle", C3634R.string.EncryptedDescriptionTitle));
            textView3.setTextSize(1, 15.0f);
        } else if (i == 1) {
            textView3.setText(LocaleController.getString("GroupEmptyTitle2", C3634R.string.GroupEmptyTitle2));
            textView3.setTextSize(1, 15.0f);
        } else {
            textView3.setText(LocaleController.getString("ChatYourSelfTitle", C3634R.string.ChatYourSelfTitle));
            textView3.setTextSize(1, 16.0f);
            textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView3.setGravity(1);
        }
        textView3.setTextColor(getThemedColor(Theme.key_chat_serviceText));
        this.textViews.add(textView3);
        textView3.setMaxWidth(AndroidUtilities.m104dp(260));
        if (i != 2) {
            i2 = LocaleController.isRTL ? 5 : 3;
        } else {
            i2 = 1;
        }
        addView(textView3, LayoutHelper.createLinear(-2, -2, i2 | 48, 0, 8, 0, i != 2 ? 0 : 8));
        for (int i3 = 0; i3 < 4; i3++) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            addView(linearLayout, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 0, 8, 0, 0));
            ImageView imageView = new ImageView(context);
            int i4 = Theme.key_chat_serviceText;
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i4), PorterDuff.Mode.MULTIPLY));
            if (i == 0) {
                imageView.setImageResource(C3634R.C3636drawable.ic_lock_white);
            } else if (i == 2) {
                imageView.setImageResource(C3634R.C3636drawable.list_circle);
            } else {
                imageView.setImageResource(C3634R.C3636drawable.groups_overview_check);
            }
            this.imageViews.add(imageView);
            TextView textView4 = new TextView(context);
            textView4.setTextSize(1, 15.0f);
            textView4.setTextColor(getThemedColor(i4));
            this.textViews.add(textView4);
            textView4.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            textView4.setMaxWidth(AndroidUtilities.m104dp(260));
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 3) {
                            if (i == 0) {
                                textView4.setText(LocaleController.getString("EncryptedDescription4", C3634R.string.EncryptedDescription4));
                            } else if (i == 2) {
                                textView4.setText(LocaleController.getString("ChatYourSelfDescription4", C3634R.string.ChatYourSelfDescription4));
                            } else {
                                textView4.setText(LocaleController.getString("GroupDescription4", C3634R.string.GroupDescription4));
                            }
                        }
                    } else if (i == 0) {
                        textView4.setText(LocaleController.getString("EncryptedDescription3", C3634R.string.EncryptedDescription3));
                    } else if (i == 2) {
                        textView4.setText(LocaleController.getString("ChatYourSelfDescription3", C3634R.string.ChatYourSelfDescription3));
                    } else {
                        textView4.setText(LocaleController.getString("GroupDescription3", C3634R.string.GroupDescription3));
                    }
                } else if (i == 0) {
                    textView4.setText(LocaleController.getString("EncryptedDescription2", C3634R.string.EncryptedDescription2));
                } else if (i == 2) {
                    textView4.setText(LocaleController.getString("ChatYourSelfDescription2", C3634R.string.ChatYourSelfDescription2));
                } else {
                    textView4.setText(LocaleController.getString("GroupDescription2", C3634R.string.GroupDescription2));
                }
            } else if (i == 0) {
                textView4.setText(LocaleController.getString("EncryptedDescription1", C3634R.string.EncryptedDescription1));
            } else if (i == 2) {
                textView4.setText(LocaleController.getString("ChatYourSelfDescription1", C3634R.string.ChatYourSelfDescription1));
            } else {
                textView4.setText(LocaleController.getString("GroupDescription1", C3634R.string.GroupDescription1));
            }
            if (LocaleController.isRTL) {
                linearLayout.addView(textView4, LayoutHelper.createLinear(-2, -2));
                if (i == 0) {
                    linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 8, 3, 0, 0));
                } else if (i == 2) {
                    linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 8, 7, 0, 0));
                } else {
                    linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 8, 3, 0, 0));
                }
            } else {
                if (i == 0) {
                    linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 0, 4, 8, 0));
                } else if (i == 2) {
                    linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 0, 8, 8, 0));
                } else {
                    linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2, 0, 4, 8, 0));
                }
                linearLayout.addView(textView4, LayoutHelper.createLinear(-2, -2));
            }
        }
    }

    public void setTextColor(int i) {
        for (int i2 = 0; i2 < this.textViews.size(); i2++) {
            this.textViews.get(i2).setTextColor(i);
        }
        for (int i3 = 0; i3 < this.imageViews.size(); i3++) {
            this.imageViews.get(i3).setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_serviceText), PorterDuff.Mode.MULTIPLY));
        }
    }

    public void setStatusText(CharSequence charSequence) {
        this.statusTextView.setText(charSequence);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }
}
