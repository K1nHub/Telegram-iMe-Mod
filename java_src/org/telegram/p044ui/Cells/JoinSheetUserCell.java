package org.telegram.p044ui.Cells;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.JoinSheetUserCell */
/* loaded from: classes5.dex */
public class JoinSheetUserCell extends FrameLayout {
    private AvatarDrawable avatarDrawable;
    private BackupImageView imageView;
    private TextView nameTextView;
    private int[] result;

    public JoinSheetUserCell(Context context) {
        super(context);
        this.avatarDrawable = new AvatarDrawable();
        this.result = new int[1];
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(27));
        addView(this.imageView, LayoutHelper.createFrame(54, 54, 49, 0, 7, 0, 0));
        TextView textView = new TextView(context);
        this.nameTextView = textView;
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        this.nameTextView.setTextSize(1, 12.0f);
        this.nameTextView.setMaxLines(1);
        this.nameTextView.setGravity(49);
        this.nameTextView.setLines(1);
        this.nameTextView.setSingleLine(true);
        this.nameTextView.setEllipsize(TextUtils.TruncateAt.END);
        addView(this.nameTextView, LayoutHelper.createFrame(-1, -2, 51, 6, 65, 6, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(100), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(90), 1073741824));
    }

    public void setUser(TLRPC$User tLRPC$User) {
        this.nameTextView.setText(ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
        this.avatarDrawable.setInfo(tLRPC$User);
        this.imageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
    }

    public void setCount(int i) {
        this.nameTextView.setText("");
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        avatarDrawable.setInfo(0L, null, null, "+" + LocaleController.formatShortNumber(i, this.result));
        this.imageView.setImage((ImageLocation) null, "50_50", this.avatarDrawable, (Object) null);
    }
}
