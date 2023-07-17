package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.GroupCreateSpan */
/* loaded from: classes6.dex */
public class GroupCreateSpan extends View {
    private AvatarDrawable avatarDrawable;
    private int[] colors;
    private ContactsController.Contact currentContact;
    private Drawable deleteDrawable;
    private boolean deleting;
    private long encryptedChatId;
    private ImageReceiver imageReceiver;
    private String key;
    private long lastUpdateTime;
    private StaticLayout nameLayout;
    private float progress;
    private RectF rect;
    private int textWidth;
    private float textX;
    private long uid;
    private static TextPaint textPaint = new TextPaint(1);
    private static Paint backPaint = new Paint(1);

    public long getDialogId() {
        long j = this.uid;
        return j == 0 ? this.encryptedChatId : j;
    }

    public GroupCreateSpan(Context context, Object obj) {
        this(context, obj, null);
    }

    public GroupCreateSpan(Context context, ContactsController.Contact contact) {
        this(context, null, contact);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ce, code lost:
        if (r1.equals("non_contacts") != false) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GroupCreateSpan(android.content.Context r27, java.lang.Object r28, org.telegram.messenger.ContactsController.Contact r29) {
        /*
            Method dump skipped, instructions count: 808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.GroupCreateSpan.<init>(android.content.Context, java.lang.Object, org.telegram.messenger.ContactsController$Contact):void");
    }

    public void updateColors() {
        int color = this.avatarDrawable.getColor();
        int color2 = Theme.getColor(Theme.key_groupcreate_spanBackground);
        int color3 = Theme.getColor(Theme.key_groupcreate_spanDelete);
        this.colors[0] = Color.red(color2);
        this.colors[1] = Color.red(color);
        this.colors[2] = Color.green(color2);
        this.colors[3] = Color.green(color);
        this.colors[4] = Color.blue(color2);
        this.colors[5] = Color.blue(color);
        this.colors[6] = Color.alpha(color2);
        this.colors[7] = Color.alpha(color);
        this.deleteDrawable.setColorFilter(new PorterDuffColorFilter(color3, PorterDuff.Mode.MULTIPLY));
        backPaint.setColor(color2);
    }

    public boolean isDeleting() {
        return this.deleting;
    }

    public void startDeleteAnimation() {
        if (this.deleting) {
            return;
        }
        this.deleting = true;
        this.lastUpdateTime = System.currentTimeMillis();
        invalidate();
    }

    public void cancelDeleteAnimation() {
        if (this.deleting) {
            this.deleting = false;
            this.lastUpdateTime = System.currentTimeMillis();
            invalidate();
        }
    }

    public long getUid() {
        return this.uid;
    }

    public String getKey() {
        return this.key;
    }

    public ContactsController.Contact getContact() {
        return this.currentContact;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(AndroidUtilities.m54dp(57) + this.textWidth, AndroidUtilities.m54dp(32));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int color;
        boolean z = this.deleting;
        if ((z && this.progress != 1.0f) || (!z && this.progress != BitmapDescriptorFactory.HUE_RED)) {
            long currentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            if (currentTimeMillis < 0 || currentTimeMillis > 17) {
                currentTimeMillis = 17;
            }
            if (this.deleting) {
                float f = this.progress + (((float) currentTimeMillis) / 120.0f);
                this.progress = f;
                if (f >= 1.0f) {
                    this.progress = 1.0f;
                }
            } else {
                float f2 = this.progress - (((float) currentTimeMillis) / 120.0f);
                this.progress = f2;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    this.progress = BitmapDescriptorFactory.HUE_RED;
                }
            }
            invalidate();
        }
        canvas.save();
        this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m54dp(32));
        Paint paint = backPaint;
        int[] iArr = this.colors;
        int i = iArr[6];
        float f3 = iArr[7] - iArr[6];
        float f4 = this.progress;
        paint.setColor(Color.argb(i + ((int) (f3 * f4)), iArr[0] + ((int) ((iArr[1] - iArr[0]) * f4)), iArr[2] + ((int) ((iArr[3] - iArr[2]) * f4)), iArr[4] + ((int) ((iArr[5] - iArr[4]) * f4))));
        canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), backPaint);
        if (this.progress != 1.0f) {
            this.imageReceiver.draw(canvas);
        }
        if (this.progress != BitmapDescriptorFactory.HUE_RED) {
            backPaint.setColor(this.avatarDrawable.getColor());
            backPaint.setAlpha((int) (this.progress * 255.0f * (Color.alpha(color) / 255.0f)));
            canvas.drawCircle(AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), backPaint);
            canvas.save();
            canvas.rotate((1.0f - this.progress) * 45.0f, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16));
            this.deleteDrawable.setBounds(AndroidUtilities.m54dp(11), AndroidUtilities.m54dp(11), AndroidUtilities.m54dp(21), AndroidUtilities.m54dp(21));
            this.deleteDrawable.setAlpha((int) (this.progress * 255.0f));
            this.deleteDrawable.draw(canvas);
            canvas.restore();
        }
        canvas.translate(this.textX + AndroidUtilities.m54dp(41), AndroidUtilities.m54dp(8));
        textPaint.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_groupcreate_spanText), Theme.getColor(Theme.key_avatar_text), this.progress));
        this.nameLayout.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setText(this.nameLayout.getText());
        if (!isDeleting() || Build.VERSION.SDK_INT < 21) {
            return;
        }
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK.getId(), LocaleController.getString("Delete", C3417R.string.Delete)));
    }
}
