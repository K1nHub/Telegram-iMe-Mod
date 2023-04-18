package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.CombinedDrawable;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.Switch;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.CheckBoxUserCell */
/* loaded from: classes5.dex */
public class CheckBoxUserCell extends FrameLayout {
    private static Drawable verifiedDrawable;
    private AvatarDrawable avatarDrawable;
    private Switch checkBox;
    private TLRPC$User currentUser;
    private BackupImageView imageView;
    private boolean needDivider;
    private SimpleTextView textView;

    public CheckBoxUserCell(Context context, boolean z) {
        super(context);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(z ? "dialogTextBlack" : "windowBackgroundWhiteBlackText"));
        this.textView.setTextSize(16);
        this.textView.setEllipsizeByGradient(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        SimpleTextView simpleTextView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, -1, (z2 ? 5 : 3) | 48, z2 ? 21 : 69, 0, z2 ? 69 : 21, 0));
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(36));
        addView(this.imageView, LayoutHelper.createFrame(36, 36, (LocaleController.isRTL ? 5 : 3) | 48, 23, 7, 23, 0));
        Switch r14 = new Switch(context);
        this.checkBox = r14;
        r14.setColors("switchTrack", "switchTrackChecked", "windowBackgroundWhite", "windowBackgroundWhite");
        addView(this.checkBox, LayoutHelper.createFrame(37, 20, (LocaleController.isRTL ? 3 : 5) | 16, 22, 0, 22, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public TLRPC$User getCurrentUser() {
        return this.currentUser;
    }

    private Drawable getVerifiedDrawable() {
        if (verifiedDrawable == null) {
            verifiedDrawable = new CombinedDrawable(Theme.dialogs_verifiedDrawable, Theme.dialogs_verifiedCheckDrawable);
        }
        return verifiedDrawable;
    }

    public void setUser(TLRPC$User tLRPC$User, boolean z, boolean z2) {
        this.currentUser = tLRPC$User;
        if (tLRPC$User != null) {
            this.textView.setText(ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
        } else {
            this.textView.setText("");
        }
        this.textView.setRightDrawable((tLRPC$User == null || !tLRPC$User.verified) ? null : getVerifiedDrawable());
        this.checkBox.setChecked(z, false);
        this.avatarDrawable.setInfo(tLRPC$User);
        this.imageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public SimpleTextView getTextView() {
        return this.textView;
    }

    public Switch getCheckBox() {
        return this.checkBox;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
