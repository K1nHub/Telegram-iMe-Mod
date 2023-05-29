package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.ArchiveHintInnerCell */
/* loaded from: classes5.dex */
public class ArchiveHintInnerCell extends FrameLayout {
    private TextView headerTextView;
    private ImageView imageView;
    private ImageView imageView2;
    private TextView messageTextView;

    public ArchiveHintInnerCell(Context context, int i) {
        super(context);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        int i2 = Theme.key_chats_nameMessage_threeLines;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
        TextView textView = new TextView(context);
        this.headerTextView = textView;
        textView.setTextColor(Theme.getColor(i2));
        this.headerTextView.setTextSize(1, 20.0f);
        this.headerTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.headerTextView.setGravity(17);
        addView(this.headerTextView, LayoutHelper.createFrame(-1, -2, 51, 52, 75, 52, 0));
        TextView textView2 = new TextView(context);
        this.messageTextView = textView2;
        textView2.setTextColor(Theme.getColor(Theme.key_chats_message));
        this.messageTextView.setTextSize(1, 14.0f);
        this.messageTextView.setGravity(17);
        addView(this.messageTextView, LayoutHelper.createFrame(-1, -2, 51, 52, 110, 52, 0));
        if (i == 0) {
            addView(this.imageView, LayoutHelper.createFrame(-2, -2, 49, 0, 20, 8, 0));
            ImageView imageView2 = new ImageView(context);
            this.imageView2 = imageView2;
            imageView2.setImageResource(C3290R.C3292drawable.chats_archive_arrow);
            this.imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_unreadCounter), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView2, LayoutHelper.createFrame(-2, -2, 49, 0, 20, 8, 0));
            this.headerTextView.setText(LocaleController.getString("ArchiveHintHeader1", C3290R.string.ArchiveHintHeader1));
            this.messageTextView.setText(LocaleController.getString("ArchiveHintText1", C3290R.string.ArchiveHintText1));
            this.imageView.setImageResource(C3290R.C3292drawable.chats_archive_box);
        } else if (i == 1) {
            addView(this.imageView, LayoutHelper.createFrame(-2, -2, 49, 0, 18, 0, 0));
            this.headerTextView.setText(LocaleController.getString("ArchiveHintHeader2", C3290R.string.ArchiveHintHeader2));
            this.messageTextView.setText(LocaleController.getString("ArchiveHintText2", C3290R.string.ArchiveHintText2));
            this.imageView.setImageResource(C3290R.C3292drawable.chats_archive_muted);
        } else if (i != 2) {
        } else {
            addView(this.imageView, LayoutHelper.createFrame(-2, -2, 49, 0, 18, 0, 0));
            this.headerTextView.setText(LocaleController.getString("ArchiveHintHeader3", C3290R.string.ArchiveHintHeader3));
            this.messageTextView.setText(LocaleController.getString("ArchiveHintText3", C3290R.string.ArchiveHintText3));
            this.imageView.setImageResource(C3290R.C3292drawable.chats_archive_pin);
        }
    }
}
