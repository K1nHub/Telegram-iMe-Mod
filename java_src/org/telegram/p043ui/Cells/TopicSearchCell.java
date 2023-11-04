package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
/* renamed from: org.telegram.ui.Cells.TopicSearchCell */
/* loaded from: classes5.dex */
public class TopicSearchCell extends FrameLayout {
    BackupImageView backupImageView;
    public boolean drawDivider;
    TextView textView;
    TLRPC$TL_forumTopic topic;

    public TopicSearchCell(Context context) {
        super(context);
        this.backupImageView = new BackupImageView(context);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (LocaleController.isRTL) {
            addView(this.backupImageView, LayoutHelper.createFrame(30, 30, 21, 12, 0, 12, 0));
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 21, 12, 0, 56, 0));
            return;
        }
        addView(this.backupImageView, LayoutHelper.createFrame(30, 30, 16, 12, 0, 12, 0));
        addView(this.textView, LayoutHelper.createFrame(-1, -2, 16, 56, 0, 12, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(48), 1073741824));
    }

    public void setTopic(TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
        this.topic = tLRPC$TL_forumTopic;
        if (TextUtils.isEmpty(tLRPC$TL_forumTopic.searchQuery)) {
            this.textView.setText(tLRPC$TL_forumTopic.title);
        } else {
            this.textView.setText(AndroidUtilities.highlightText(tLRPC$TL_forumTopic.title, tLRPC$TL_forumTopic.searchQuery, (Theme.ResourcesProvider) null));
        }
        ForumUtilities.setTopicIcon(this.backupImageView, tLRPC$TL_forumTopic);
        BackupImageView backupImageView = this.backupImageView;
        if (backupImageView == null || backupImageView.getImageReceiver() == null || !(this.backupImageView.getImageReceiver().getDrawable() instanceof ForumUtilities.GeneralTopicDrawable)) {
            return;
        }
        ((ForumUtilities.GeneralTopicDrawable) this.backupImageView.getImageReceiver().getDrawable()).setColor(Theme.getColor(Theme.key_chats_archiveBackground));
    }

    public TLRPC$TL_forumTopic getTopic() {
        return this.topic;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            int m104dp = AndroidUtilities.m104dp(56);
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - m104dp, getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(m104dp, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }
}
