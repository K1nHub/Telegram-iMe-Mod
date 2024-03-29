package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ShareLocationDrawable;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Message;
/* renamed from: org.telegram.ui.Cells.SendLocationCell */
/* loaded from: classes5.dex */
public class SendLocationCell extends FrameLayout {
    private SimpleTextView accurateTextView;
    private int currentAccount;
    private long dialogId;
    private ImageView imageView;
    private Runnable invalidateRunnable;
    private boolean live;
    private RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private SimpleTextView titleTextView;

    public SendLocationCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        int i;
        int i2;
        this.currentAccount = UserConfig.selectedAccount;
        this.invalidateRunnable = new Runnable() { // from class: org.telegram.ui.Cells.SendLocationCell.1
            @Override // java.lang.Runnable
            public void run() {
                SendLocationCell.this.checkText();
                SendLocationCell sendLocationCell = SendLocationCell.this;
                sendLocationCell.invalidate(((int) sendLocationCell.rect.left) - 5, ((int) SendLocationCell.this.rect.top) - 5, ((int) SendLocationCell.this.rect.right) + 5, ((int) SendLocationCell.this.rect.bottom) + 5);
                AndroidUtilities.runOnUIThread(SendLocationCell.this.invalidateRunnable, 1000L);
            }
        };
        this.resourcesProvider = resourcesProvider;
        this.live = z;
        this.imageView = new ImageView(context);
        setBackground(Theme.AdaptiveRipple.rect());
        ImageView imageView = this.imageView;
        if (z) {
            i = Theme.key_location_sendLiveLocationBackground;
            i2 = Theme.key_location_sendLiveLocationIcon;
        } else {
            i = Theme.key_location_sendLocationBackground;
            i2 = Theme.key_location_sendLocationIcon;
        }
        imageView.setTag(Integer.valueOf(i + i2));
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m107dp(42), getThemedColor(z ? Theme.key_location_sendLiveLocationBackground : Theme.key_location_sendLocationBackground), getThemedColor(z ? Theme.key_location_sendLiveLocationBackground : Theme.key_location_sendLocationBackground));
        if (z) {
            this.rect = new RectF();
            ShareLocationDrawable shareLocationDrawable = new ShareLocationDrawable(context, 4);
            shareLocationDrawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_location_sendLiveLocationIcon), PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(createSimpleSelectorCircleDrawable, shareLocationDrawable);
            combinedDrawable.setCustomSize(AndroidUtilities.m107dp(42), AndroidUtilities.m107dp(42));
            this.imageView.setBackgroundDrawable(combinedDrawable);
            AndroidUtilities.runOnUIThread(this.invalidateRunnable, 1000L);
            setWillNotDraw(false);
        } else {
            Drawable mutate = getResources().getDrawable(C3632R.C3634drawable.pin).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_location_sendLocationIcon), PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable2 = new CombinedDrawable(createSimpleSelectorCircleDrawable, mutate);
            combinedDrawable2.setCustomSize(AndroidUtilities.m107dp(42), AndroidUtilities.m107dp(42));
            combinedDrawable2.setIconSize(AndroidUtilities.m107dp(24), AndroidUtilities.m107dp(24));
            this.imageView.setBackgroundDrawable(combinedDrawable2);
        }
        ImageView imageView2 = this.imageView;
        boolean z2 = LocaleController.isRTL;
        addView(imageView2, LayoutHelper.createFrame(42, 42, (z2 ? 5 : 3) | 48, z2 ? 0 : 15, 12, z2 ? 15 : 0, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.titleTextView = simpleTextView;
        simpleTextView.setTextSize(16);
        this.titleTextView.setTag(Integer.valueOf(z ? Theme.key_location_sendLiveLocationText : Theme.key_location_sendLocationText));
        this.titleTextView.setTextColor(getThemedColor(z ? Theme.key_location_sendLiveLocationText : Theme.key_location_sendLocationText));
        this.titleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        SimpleTextView simpleTextView2 = this.titleTextView;
        boolean z3 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, 20, (z3 ? 5 : 3) | 48, z3 ? 16 : 73, 12, z3 ? 73 : 16, 0));
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        this.accurateTextView = simpleTextView3;
        simpleTextView3.setTextSize(14);
        this.accurateTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        this.accurateTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        SimpleTextView simpleTextView4 = this.accurateTextView;
        boolean z4 = LocaleController.isRTL;
        addView(simpleTextView4, LayoutHelper.createFrame(-1, 20, (z4 ? 5 : 3) | 48, z4 ? 16 : 73, 37, z4 ? 73 : 16, 0));
    }

    private ImageView getImageView() {
        return this.imageView;
    }

    public void setHasLocation(boolean z) {
        if (LocationController.getInstance(this.currentAccount).getSharingLocationInfo(this.dialogId) == null) {
            this.titleTextView.setAlpha(z ? 1.0f : 0.5f);
            this.accurateTextView.setAlpha(z ? 1.0f : 0.5f);
            this.imageView.setAlpha(z ? 1.0f : 0.5f);
        }
        if (this.live) {
            checkText();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(66), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AndroidUtilities.cancelRunOnUIThread(this.invalidateRunnable);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.rect != null) {
            AndroidUtilities.runOnUIThread(this.invalidateRunnable, 1000L);
        }
    }

    public void setText(String str, String str2) {
        this.titleTextView.setText(str);
        this.accurateTextView.setText(str2);
    }

    public void setDialogId(long j) {
        this.dialogId = j;
        if (this.live) {
            checkText();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkText() {
        LocationController.SharingLocationInfo sharingLocationInfo = LocationController.getInstance(this.currentAccount).getSharingLocationInfo(this.dialogId);
        if (sharingLocationInfo != null) {
            String string = LocaleController.getString("StopLiveLocation", C3632R.string.StopLiveLocation);
            TLRPC$Message tLRPC$Message = sharingLocationInfo.messageObject.messageOwner;
            int i = tLRPC$Message.edit_date;
            setText(string, LocaleController.formatLocationUpdateDate(i != 0 ? i : tLRPC$Message.date));
            return;
        }
        setText(LocaleController.getString("SendLiveLocation", C3632R.string.SendLiveLocation), LocaleController.getString("SendLiveLocationInfo", C3632R.string.SendLiveLocationInfo));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int currentTime;
        int i;
        LocationController.SharingLocationInfo sharingLocationInfo = LocationController.getInstance(this.currentAccount).getSharingLocationInfo(this.dialogId);
        if (sharingLocationInfo != null && (i = sharingLocationInfo.stopTime) >= (currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime())) {
            float abs = Math.abs(i - currentTime) / sharingLocationInfo.period;
            if (LocaleController.isRTL) {
                this.rect.set(AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(43), AndroidUtilities.m107dp(48));
            } else {
                this.rect.set(getMeasuredWidth() - AndroidUtilities.m107dp(43), AndroidUtilities.m107dp(18), getMeasuredWidth() - AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(48));
            }
            int themedColor = getThemedColor(Theme.key_location_liveLocationProgress);
            Theme.chat_radialProgress2Paint.setColor(themedColor);
            Theme.chat_livePaint.setColor(themedColor);
            canvas.drawArc(this.rect, -90.0f, abs * (-360.0f), false, Theme.chat_radialProgress2Paint);
            String formatLocationLeftTime = LocaleController.formatLocationLeftTime(Math.abs(sharingLocationInfo.stopTime - currentTime));
            canvas.drawText(formatLocationLeftTime, this.rect.centerX() - (Theme.chat_livePaint.measureText(formatLocationLeftTime) / 2.0f), AndroidUtilities.m107dp(37), Theme.chat_livePaint);
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
