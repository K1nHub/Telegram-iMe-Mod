package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC$TL_globalPrivacySettings;
/* renamed from: org.telegram.ui.Components.ArchiveHelp */
/* loaded from: classes7.dex */
public class ArchiveHelp extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private int currentAccount;
    private Runnable linkCallback;
    private LinkSpanDrawable.LinksTextView subtitleTextView;

    public ArchiveHelp(Context context, int i, Theme.ResourcesProvider resourcesProvider, Runnable runnable, final Runnable runnable2) {
        super(context);
        this.currentAccount = i;
        this.linkCallback = runnable;
        ContactsController.getInstance(i).loadGlobalPrivacySetting();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2, 17));
        ImageView imageView = new ImageView(context);
        imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m72dp(80), Theme.getColor(Theme.key_avatar_backgroundSaved, resourcesProvider)));
        imageView.setImageResource(C3473R.C3475drawable.large_archive);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        linearLayout.addView(imageView, LayoutHelper.createLinear(80, 80, 49, 0, runnable2 != null ? 14 : 0, 0, 14));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(1);
        textView.setText(LocaleController.getString("ArchiveHintHeader1", C3473R.string.ArchiveHintHeader1));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 9));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.subtitleTextView = linksTextView;
        linksTextView.setTextSize(1, 14.0f);
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        this.subtitleTextView.setGravity(1);
        updateText();
        linearLayout.addView(this.subtitleTextView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 25));
        linearLayout.addView(makeHint(C3473R.C3475drawable.msg_archive_archive, LocaleController.getString("ArchiveHintSection1"), LocaleController.getString("ArchiveHintSection1Info"), resourcesProvider), LayoutHelper.createLinear(-1, -2, 7, 32, 0, 32, 16));
        linearLayout.addView(makeHint(C3473R.C3475drawable.msg_archive_hide, LocaleController.getString("ArchiveHintSection2"), LocaleController.getString("ArchiveHintSection2Info"), resourcesProvider), LayoutHelper.createLinear(-1, -2, 7, 32, 0, 32, 16));
        linearLayout.addView(makeHint(C3473R.C3475drawable.msg_archive_stories, LocaleController.getString("ArchiveHintSection3"), LocaleController.getString("ArchiveHintSection3Info"), resourcesProvider), LayoutHelper.createLinear(-1, -2, 7, 32, 0, 32, 16));
        if (runnable2 != null) {
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
            buttonWithCounterView.setText(LocaleController.getString("GotIt"), false);
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ArchiveHelp$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable2.run();
                }
            });
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 14, 18, 14, 0));
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m72dp(400), View.MeasureSpec.getSize(i)), 1073741824), i2);
    }

    private void updateText() {
        TLRPC$TL_globalPrivacySettings globalPrivacySettings = ContactsController.getInstance(this.currentAccount).getGlobalPrivacySettings();
        String string = LocaleController.getString(globalPrivacySettings != null ? globalPrivacySettings.keep_archived_unmuted : true ? "ArchiveHintSubtitle" : "ArchiveHintSubtitleUnmutedMove");
        int i = Theme.key_chat_messageLinkIn;
        SpannableStringBuilder replaceSingleTag = AndroidUtilities.replaceSingleTag(string, i, 0, this.linkCallback);
        SpannableString spannableString = new SpannableString(">");
        Drawable mutate = getContext().getResources().getDrawable(C3473R.C3475drawable.msg_arrowright).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(mutate);
        coloredImageSpan.setColorKey(i);
        coloredImageSpan.setSize(AndroidUtilities.m72dp(18));
        coloredImageSpan.setWidth(AndroidUtilities.m72dp(11));
        coloredImageSpan.setTranslateX(-AndroidUtilities.m72dp(5));
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
        this.subtitleTextView.setText(AndroidUtilities.replaceCharSequence(">", replaceSingleTag, spannableString));
    }

    private FrameLayout makeHint(int i, CharSequence charSequence, CharSequence charSequence2, Theme.ResourcesProvider resourcesProvider) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        ImageView imageView = new ImageView(getContext());
        int i2 = Theme.key_dialogTextBlack;
        imageView.setColorFilter(Theme.getColor(i2, resourcesProvider));
        imageView.setImageResource(i);
        frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 51, 0, 8, 0, 0));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        TextView textView = new TextView(getContext());
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(0, AndroidUtilities.m72dp(14));
        textView.setText(charSequence);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, (float) BitmapDescriptorFactory.HUE_RED, 2.6f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        TextView textView2 = new TextView(getContext());
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        textView2.setTextSize(0, AndroidUtilities.m72dp(14));
        textView2.setText(charSequence2);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, (float) BitmapDescriptorFactory.HUE_RED, 2.6f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 55, 41, 0, 0, 0));
        return frameLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.privacyRulesUpdated);
        updateText();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.privacyRulesUpdated);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.privacyRulesUpdated) {
            updateText();
        }
    }
}
