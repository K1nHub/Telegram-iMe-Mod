package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.GroupCallInvitedCell */
/* loaded from: classes5.dex */
public class GroupCallInvitedCell extends FrameLayout {
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImageView;
    private TLRPC$User currentUser;
    private Paint dividerPaint;
    private String grayIconColor;
    private ImageView muteButton;
    private SimpleTextView nameTextView;
    private boolean needDivider;
    private SimpleTextView statusTextView;

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public GroupCallInvitedCell(Context context) {
        super(context);
        this.grayIconColor = "voipgroup_mutedIcon";
        Paint paint = new Paint();
        this.dividerPaint = paint;
        paint.setColor(Theme.getColor("voipgroup_actionBar"));
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(24));
        BackupImageView backupImageView2 = this.avatarImageView;
        boolean z = LocaleController.isRTL;
        addView(backupImageView2, LayoutHelper.createFrame(46, 46, (z ? 5 : 3) | 48, z ? 0 : 11, 6, z ? 11 : 0, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.nameTextView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor("voipgroup_nameText"));
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setTextSize(16);
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        SimpleTextView simpleTextView2 = this.nameTextView;
        boolean z2 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, 20, (z2 ? 5 : 3) | 48, z2 ? 54 : 67, 10, z2 ? 67 : 54, 0));
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        this.statusTextView = simpleTextView3;
        simpleTextView3.setTextSize(15);
        this.statusTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        this.statusTextView.setTextColor(Theme.getColor(this.grayIconColor));
        this.statusTextView.setText(LocaleController.getString("Invited", C3242R.string.Invited));
        SimpleTextView simpleTextView4 = this.statusTextView;
        boolean z3 = LocaleController.isRTL;
        addView(simpleTextView4, LayoutHelper.createFrame(-1, 20, (z3 ? 5 : 3) | 48, z3 ? 54 : 67, 32, z3 ? 67 : 54, 0));
        ImageView imageView = new ImageView(context);
        this.muteButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.muteButton.setImageResource(C3242R.C3244drawable.msg_invited);
        this.muteButton.setImportantForAccessibility(2);
        this.muteButton.setPadding(0, 0, AndroidUtilities.m50dp(4), 0);
        this.muteButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.grayIconColor), PorterDuff.Mode.MULTIPLY));
        addView(this.muteButton, LayoutHelper.createFrame(48, -1, (LocaleController.isRTL ? 3 : 5) | 16, 6, 0, 6, 0));
        setWillNotDraw(false);
        setFocusable(true);
    }

    public CharSequence getName() {
        return this.nameTextView.getText();
    }

    public void setData(int i, Long l) {
        TLRPC$User user = MessagesController.getInstance(i).getUser(l);
        this.currentUser = user;
        this.avatarDrawable.setInfo(user);
        this.nameTextView.setText(UserObject.getUserName(this.currentUser));
        this.avatarImageView.getImageReceiver().setCurrentAccount(i);
        this.avatarImageView.setForUserOrChat(this.currentUser, this.avatarDrawable);
    }

    public void setDrawDivider(boolean z) {
        this.needDivider = z;
        invalidate();
    }

    public void setGrayIconColor(String str, int i) {
        if (!this.grayIconColor.equals(str)) {
            this.grayIconColor = str;
        }
        this.muteButton.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        this.statusTextView.setTextColor(i);
        Theme.setSelectorDrawableColor(this.muteButton.getDrawable(), i & 620756991, true);
    }

    public TLRPC$User getUser() {
        return this.currentUser;
    }

    public boolean hasAvatarSet() {
        return this.avatarImageView.getImageReceiver().hasNotThumb();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(58), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(68), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(68) : 0), getMeasuredHeight() - 1, this.dividerPaint);
        }
        super.dispatchDraw(canvas);
    }
}
