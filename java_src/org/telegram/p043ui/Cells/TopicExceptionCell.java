package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
/* renamed from: org.telegram.ui.Cells.TopicExceptionCell */
/* loaded from: classes5.dex */
public class TopicExceptionCell extends FrameLayout {
    BackupImageView backupImageView;
    public boolean drawDivider;
    TextView subtitle;
    TextView title;

    public TopicExceptionCell(Context context) {
        super(context);
        BackupImageView backupImageView = new BackupImageView(context);
        this.backupImageView = backupImageView;
        addView(backupImageView, LayoutHelper.createFrame(30, 30, 16, 20, 0, 0, 0));
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.title.setTextSize(1, 16.0f);
        this.title.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.title.setMaxLines(1);
        addView(this.title, LayoutHelper.createFrame(-1, -2, 0, 72, 8, 12, 0));
        TextView textView2 = new TextView(context);
        this.subtitle = textView2;
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        this.subtitle.setTextSize(1, 14.0f);
        addView(this.subtitle, LayoutHelper.createFrame(-1, -2, 0, 72, 32, 12, 0));
    }

    public void setTopic(long j, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
        ForumUtilities.setTopicIcon(this.backupImageView, tLRPC$TL_forumTopic);
        BackupImageView backupImageView = this.backupImageView;
        if (backupImageView != null && backupImageView.getImageReceiver() != null && (this.backupImageView.getImageReceiver().getDrawable() instanceof ForumUtilities.GeneralTopicDrawable)) {
            ((ForumUtilities.GeneralTopicDrawable) this.backupImageView.getImageReceiver().getDrawable()).setColor(Theme.getColor(Theme.key_chats_archiveBackground));
        }
        this.title.setText(tLRPC$TL_forumTopic.title);
        this.subtitle.setText(MessagesController.getInstance(UserConfig.selectedAccount).getMutedString(j, tLRPC$TL_forumTopic.f1658id));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(56), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            canvas.drawLine(AndroidUtilities.m104dp(72), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
