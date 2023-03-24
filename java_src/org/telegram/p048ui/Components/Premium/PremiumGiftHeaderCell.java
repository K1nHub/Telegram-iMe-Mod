package org.telegram.p048ui.Components.Premium;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.StarParticlesView;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.PremiumGiftHeaderCell */
/* loaded from: classes6.dex */
public class PremiumGiftHeaderCell extends LinearLayout {
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImageView;
    private StarParticlesView.Drawable drawable;
    private TextView subtitleView;
    private TextView titleView;

    public PremiumGiftHeaderCell(Context context) {
        super(context);
        setOrientation(1);
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(50));
        addView(this.avatarImageView, LayoutHelper.createLinear(100, 100, 1, 0, 28, 0, 0));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleView.setTextSize(1, 22.0f);
        this.titleView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.titleView.setGravity(1);
        addView(this.titleView, LayoutHelper.createLinear(-2, -2, 1, 24, 24, 24, 0));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setTextSize(1, 15.0f);
        this.subtitleView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.subtitleView.setGravity(1);
        addView(this.subtitleView, LayoutHelper.createFrame(-2, -2, 1, 24, 8, 24, 28));
        setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(50);
        this.drawable = drawable;
        drawable.useGradient = true;
        drawable.roundEffect = true;
        drawable.init();
        setWillNotDraw(false);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        float x = this.avatarImageView.getX() + (this.avatarImageView.getWidth() / 2.0f);
        float paddingTop = ((this.avatarImageView.getPaddingTop() + this.avatarImageView.getY()) + (this.avatarImageView.getHeight() / 2.0f)) - AndroidUtilities.m50dp(3);
        float m50dp = AndroidUtilities.m50dp(32);
        this.drawable.rect.set(x - m50dp, paddingTop - m50dp, x + m50dp, paddingTop + m50dp);
        if (z) {
            this.drawable.resetPositions();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.drawable.onDraw(canvas);
        invalidate();
    }

    public void bind(TLRPC$User tLRPC$User) {
        this.avatarDrawable.setInfo(tLRPC$User);
        this.avatarImageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
        this.titleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3301R.string.GiftTelegramPremiumTitle)));
        this.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C3301R.string.GiftTelegramPremiumDescription, tLRPC$User.first_name)));
    }
}
