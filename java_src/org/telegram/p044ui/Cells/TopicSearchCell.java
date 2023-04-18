package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.Forum.ForumUtilities;
import org.telegram.p044ui.Components.LayoutHelper;
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
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
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
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
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
        ((ForumUtilities.GeneralTopicDrawable) this.backupImageView.getImageReceiver().getDrawable()).setColor(Theme.getColor("chats_archiveBackground"));
    }

    public TLRPC$TL_forumTopic getTopic() {
        return this.topic;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            int m50dp = AndroidUtilities.m50dp(56);
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - m50dp, getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(m50dp, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }
}
