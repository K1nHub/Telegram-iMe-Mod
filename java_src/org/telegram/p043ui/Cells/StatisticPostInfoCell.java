package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.StatisticActivity;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$PhotoSize;
/* renamed from: org.telegram.ui.Cells.StatisticPostInfoCell */
/* loaded from: classes5.dex */
public class StatisticPostInfoCell extends FrameLayout {
    private final AvatarDrawable avatarDrawable;
    private final TLRPC$ChatFull chat;
    private final TextView date;
    private final Paint dividerPaint;
    private final BackupImageView imageView;
    private final TextView likes;
    private final SimpleTextView message;
    private boolean needDivider;
    private StatisticActivity.RecentPostInfo postInfo;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView shares;
    private final StoriesUtilities.AvatarStoryParams storyAvatarParams;
    private final TextView views;

    public StatisticPostInfoCell(Context context, TLRPC$ChatFull tLRPC$ChatFull, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dividerPaint = new Paint(1);
        this.avatarDrawable = new AvatarDrawable();
        this.storyAvatarParams = new StoriesUtilities.AvatarStoryParams(false);
        this.chat = tLRPC$ChatFull;
        this.resourcesProvider = resourcesProvider;
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.StatisticPostInfoCell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                int m107dp;
                if (StatisticPostInfoCell.this.postInfo != null && StatisticPostInfoCell.this.postInfo.isStory()) {
                    float m107dp2 = AndroidUtilities.m107dp(1);
                    StatisticPostInfoCell.this.storyAvatarParams.originalAvatarRect.set(m107dp2, m107dp2, getMeasuredWidth() - m107dp, getMeasuredHeight() - m107dp);
                    StatisticPostInfoCell.this.storyAvatarParams.drawSegments = false;
                    StatisticPostInfoCell.this.storyAvatarParams.animate = false;
                    StatisticPostInfoCell.this.storyAvatarParams.drawInside = true;
                    StatisticPostInfoCell.this.storyAvatarParams.isArchive = false;
                    StatisticPostInfoCell.this.storyAvatarParams.forceState = 1;
                    StatisticPostInfoCell.this.storyAvatarParams.resourcesProvider = resourcesProvider;
                    StoriesUtilities.drawAvatarWithStory(0L, canvas, this.imageReceiver, StatisticPostInfoCell.this.storyAvatarParams);
                    return;
                }
                super.onDraw(canvas);
            }
        };
        this.imageView = backupImageView;
        setClipChildren(false);
        boolean z = LocaleController.isRTL;
        addView(backupImageView, LayoutHelper.createFrame(46, 46, (!z ? 8388611 : 8388613) | 16, !z ? 12 : 16, 0, !z ? 16 : 12, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        SimpleTextView simpleTextView = new SimpleTextView(this, context) { // from class: org.telegram.ui.Cells.StatisticPostInfoCell.2
            @Override // org.telegram.p043ui.ActionBar.SimpleTextView
            public boolean setText(CharSequence charSequence) {
                return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false));
            }
        };
        this.message = simpleTextView;
        NotificationCenter.listenEmojiLoading(simpleTextView);
        simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        simpleTextView.setTextSize(16);
        simpleTextView.setMaxLines(1);
        simpleTextView.setTextColor(-16777216);
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        TextView textView = new TextView(context);
        this.views = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(-16777216);
        if (!LocaleController.isRTL) {
            linearLayout2.addView(simpleTextView, LayoutHelper.createLinear(0, -2, 1.0f, 0, 0, 0, 16, 0));
            linearLayout2.addView(textView, LayoutHelper.createLinear(-2, -2, 80));
        } else {
            linearLayout2.addView(textView, LayoutHelper.createLinear(-2, -2, 80));
            linearLayout2.addView(simpleTextView, LayoutHelper.createLinear(0, -2, 1.0f, 0, 16, 0, 0, 0));
        }
        linearLayout.addView(linearLayout2, LayoutHelper.createFrame(-1, -2, 8388659, 0, 7, 0, 0));
        TextView textView2 = new TextView(context);
        this.date = textView2;
        textView2.setTextSize(1, 13.0f);
        textView2.setTextColor(-16777216);
        textView2.setLines(1);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView3 = new TextView(context);
        this.shares = textView3;
        textView3.setTextSize(1, 13.0f);
        textView3.setTextColor(-16777216);
        textView3.setGravity(16);
        TextView textView4 = new TextView(context);
        this.likes = textView4;
        textView4.setTextSize(1, 13.0f);
        textView4.setTextColor(-16777216);
        textView4.setGravity(16);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        if (!LocaleController.isRTL) {
            linearLayout3.addView(textView2, LayoutHelper.createLinear(0, -2, 1.0f, 0, 0, 0, 8, 0));
            linearLayout3.addView(textView4, LayoutHelper.createLinear(-2, -2, 16));
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 10, 0, 0, 0));
        } else {
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 10, 0));
            linearLayout3.addView(textView4, LayoutHelper.createLinear(-2, -2, 16));
            linearLayout3.addView(textView2, LayoutHelper.createLinear(0, -2, 1.0f, 0, 8, 0, 0, 0));
        }
        linearLayout.addView(linearLayout3, LayoutHelper.createFrame(-1, -2, 8388659, 0, 3, 0, 9));
        boolean z2 = LocaleController.isRTL;
        addView(linearLayout, LayoutHelper.createFrame(-1, -2, 0, !z2 ? 72 : 18, 0, !z2 ? 18 : 72, 0));
        int i = Theme.key_dialogTextBlack;
        simpleTextView.setTextColor(Theme.getColor(i));
        textView.setTextColor(Theme.getColor(i));
        int i2 = Theme.key_windowBackgroundWhiteGrayText3;
        textView2.setTextColor(Theme.getColor(i2));
        textView3.setTextColor(Theme.getColor(i2));
        textView4.setTextColor(Theme.getColor(i2));
        Drawable mutate = ContextCompat.getDrawable(context, C3632R.C3634drawable.mini_stats_likes).mutate();
        DrawableCompat.setTint(mutate, Theme.getColor(i2));
        Drawable mutate2 = ContextCompat.getDrawable(context, C3632R.C3634drawable.mini_stats_shares).mutate();
        DrawableCompat.setTint(mutate2, Theme.getColor(i2));
        CombinedDrawable combinedDrawable = new CombinedDrawable(null, mutate, 0, AndroidUtilities.m107dp(1));
        combinedDrawable.setCustomSize(mutate2.getIntrinsicWidth(), mutate2.getIntrinsicHeight());
        textView4.setCompoundDrawablesWithIntrinsicBounds(combinedDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        textView4.setCompoundDrawablePadding(AndroidUtilities.m107dp(2));
        CombinedDrawable combinedDrawable2 = new CombinedDrawable(null, mutate2, 0, AndroidUtilities.m107dp(1));
        combinedDrawable2.setCustomSize(mutate2.getIntrinsicWidth(), mutate2.getIntrinsicHeight());
        textView3.setCompoundDrawablesWithIntrinsicBounds(combinedDrawable2, (Drawable) null, (Drawable) null, (Drawable) null);
        textView3.setCompoundDrawablePadding(AndroidUtilities.m107dp(2));
        setWillNotDraw(false);
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    public StoriesUtilities.AvatarStoryParams getStoryAvatarParams() {
        return this.storyAvatarParams;
    }

    public StatisticActivity.RecentPostInfo getPostInfo() {
        return this.postInfo;
    }

    public void setImageViewAction(View.OnClickListener onClickListener) {
        this.imageView.setOnClickListener(onClickListener);
    }

    public void setData(StatisticActivity.RecentPostInfo recentPostInfo, boolean z) {
        CharSequence charSequence;
        this.postInfo = recentPostInfo;
        this.needDivider = !z;
        MessageObject messageObject = recentPostInfo.message;
        ArrayList<TLRPC$PhotoSize> arrayList = messageObject.photoThumbs;
        if (arrayList != null) {
            this.imageView.setImage(ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize()), messageObject.photoThumbsObject), "50_50", ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 50), messageObject.photoThumbsObject), "b1", 0, messageObject);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(9));
            this.imageView.setScaleX(0.96f);
            this.imageView.setScaleY(0.96f);
        } else if (this.chat.chat_photo.sizes.size() > 0) {
            this.imageView.setImage(ImageLocation.getForPhoto(this.chat.chat_photo.sizes.get(0), this.chat.chat_photo), "50_50", (String) null, (Drawable) null, this.chat);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(46) >> 1);
            this.imageView.setScaleX(0.96f);
            this.imageView.setScaleY(0.96f);
        } else {
            TLRPC$Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(this.chat.f1603id));
            this.avatarDrawable.setInfo(chat);
            this.imageView.setForUserOrChat(chat, this.avatarDrawable);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(46) >> 1);
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
        }
        if (messageObject.isStory()) {
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(46) >> 1);
        }
        if (messageObject.isMusic()) {
            charSequence = String.format("%s, %s", messageObject.getMusicTitle().trim(), messageObject.getMusicAuthor().trim());
        } else if (messageObject.isStory()) {
            charSequence = LocaleController.getString("Story", C3632R.string.Story);
        } else {
            CharSequence charSequence2 = messageObject.caption;
            charSequence = charSequence2 != null ? charSequence2 : messageObject.messageText;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class)) {
            spannableStringBuilder.removeSpan(uRLSpan);
        }
        this.message.setText(AndroidUtilities.trim(AndroidUtilities.replaceNewLines(spannableStringBuilder), null));
        this.views.setText(String.format(LocaleController.getPluralString("Views", recentPostInfo.getViews()), AndroidUtilities.formatWholeNumber(recentPostInfo.getViews(), 0)));
        Date date = new Date(recentPostInfo.getDate() * 1000);
        this.date.setText(LocaleController.formatString("formatDateAtTime", C3632R.string.formatDateAtTime, LocaleController.getInstance().formatterYear.format(date), LocaleController.getInstance().formatterDay.format(date)));
        this.shares.setText(AndroidUtilities.formatWholeNumber(recentPostInfo.getForwards(), 0));
        this.likes.setText(AndroidUtilities.formatWholeNumber(recentPostInfo.getReactions(), 0));
        this.shares.setVisibility(recentPostInfo.getForwards() != 0 ? 0 : 8);
        this.likes.setVisibility(recentPostInfo.getReactions() == 0 ? 8 : 0);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.needDivider) {
            this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
            if (LocaleController.isRTL) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth() - AndroidUtilities.m107dp(72), getHeight(), this.dividerPaint);
            } else {
                canvas.drawRect(AndroidUtilities.m107dp(72), getHeight() - 1, getWidth(), getHeight(), this.dividerPaint);
            }
        }
    }

    public void setData(StatisticActivity.MemberData memberData) {
        this.avatarDrawable.setInfo(memberData.user);
        this.imageView.setForUserOrChat(memberData.user, this.avatarDrawable);
        this.imageView.setRoundRadius(AndroidUtilities.m107dp(46) >> 1);
        this.message.setText(memberData.user.first_name);
        this.date.setText(memberData.description);
        this.views.setVisibility(8);
        this.shares.setVisibility(8);
        this.likes.setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.storyAvatarParams.onDetachFromWindow();
    }
}
