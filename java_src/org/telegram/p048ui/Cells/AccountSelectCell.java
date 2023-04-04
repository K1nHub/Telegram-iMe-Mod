package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.AccountSelectCell */
/* loaded from: classes5.dex */
public class AccountSelectCell extends FrameLayout {
    private int accountNumber;
    private AvatarDrawable avatarDrawable;
    private ImageView checkImageView;
    private BackupImageView imageView;
    private TextView infoTextView;
    private TextView textView;

    public void setAccount(int i, boolean z) {
        setAccount(i, z, UserConfig.selectedAccount);
    }

    public AccountSelectCell(Context context, boolean z) {
        super(context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setTextSize(AndroidUtilities.m50dp(12));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(18));
        addView(this.imageView, LayoutHelper.createFrame(36, 36, 51, 10, 10, 0, 0));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity(19);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        if (z) {
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 51, 61, 7, 8, 0));
            this.textView.setTextColor(Theme.getColor("voipgroup_nameText"));
            this.textView.setText(LocaleController.getString("VoipGroupDisplayAs", C3316R.string.VoipGroupDisplayAs));
            TextView textView2 = new TextView(context);
            this.infoTextView = textView2;
            textView2.setTextColor(Theme.getColor("voipgroup_lastSeenText"));
            this.infoTextView.setTextSize(1, 15.0f);
            this.infoTextView.setLines(1);
            this.infoTextView.setMaxLines(1);
            this.infoTextView.setSingleLine(true);
            this.infoTextView.setMaxWidth(AndroidUtilities.m50dp(320));
            this.infoTextView.setGravity(51);
            this.infoTextView.setEllipsize(TextUtils.TruncateAt.END);
            addView(this.infoTextView, LayoutHelper.createFrame(-2, -2, 51, 61, 27, 8, 0));
            return;
        }
        addView(this.textView, LayoutHelper.createFrame(-1, -1, 51, 61, 0, 56, 0));
        this.textView.setTextColor(Theme.getColor("actionBarDefaultSubmenuItem"));
        ImageView imageView = new ImageView(context);
        this.checkImageView = imageView;
        imageView.setImageResource(C3316R.C3318drawable.account_check);
        this.checkImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.checkImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_menuItemCheck"), PorterDuff.Mode.MULTIPLY));
        addView(this.checkImageView, LayoutHelper.createFrame(40, -1, 53, 0, 0, 6, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.checkImageView != null || (this.infoTextView != null && getLayoutParams().width != -2)) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(56), 1073741824));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(56), 1073741824));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.infoTextView == null) {
            this.textView.setTextColor(Theme.getColor("chats_menuItemText"));
        }
    }

    public void setObject(TLObject tLObject) {
        if (tLObject instanceof TLRPC$User) {
            TLRPC$User tLRPC$User = (TLRPC$User) tLObject;
            this.avatarDrawable.setInfo(tLRPC$User);
            this.infoTextView.setText(ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
            this.imageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
            return;
        }
        TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
        this.avatarDrawable.setInfo(tLRPC$Chat);
        this.infoTextView.setText(tLRPC$Chat.title);
        this.imageView.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
    }

    public void setAccount(int i, boolean z, int i2) {
        this.accountNumber = i;
        TLRPC$User currentUser = UserConfig.getInstance(i).getCurrentUser();
        this.avatarDrawable.setInfo(currentUser);
        this.textView.setText(ContactsController.formatName(currentUser.first_name, currentUser.last_name));
        this.imageView.getImageReceiver().setCurrentAccount(i);
        this.imageView.setForUserOrChat(currentUser, this.avatarDrawable);
        this.checkImageView.setVisibility((z && i == i2) ? 0 : 4);
    }

    public int getAccountNumber() {
        return this.accountNumber;
    }
}
