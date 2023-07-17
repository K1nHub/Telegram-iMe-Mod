package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.TimerDrawable */
/* loaded from: classes6.dex */
public class TimerDrawable extends Drawable {
    Context context;
    ColorFilter currentColorFilter;
    private Drawable currentTtlIcon;
    private int iconColor;
    private boolean isDialog;
    private boolean isStaticIcon;
    private boolean overrideColor;
    Theme.ResourcesProvider resourcesProvider;
    private StaticLayout timeLayout;
    private TextPaint timePaint = new TextPaint(1);
    private Paint paint = new Paint(1);
    private Paint linePaint = new Paint(1);
    private float timeWidth = BitmapDescriptorFactory.HUE_RED;
    private int timeHeight = 0;
    private int time = -1;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public TimerDrawable(Context context, Theme.ResourcesProvider resourcesProvider) {
        this.context = context;
        this.resourcesProvider = resourcesProvider;
        this.timePaint.setTypeface(AndroidUtilities.getTypeface("fonts/rcondensedbold.ttf"));
        this.linePaint.setStrokeWidth(AndroidUtilities.m54dp(1));
        this.linePaint.setStyle(Paint.Style.STROKE);
    }

    public void setTime(int i) {
        String str;
        if (this.time != i) {
            this.time = i;
            if (this.isDialog) {
                this.currentTtlIcon = ContextCompat.getDrawable(this.context, C3417R.C3419drawable.msg_autodelete_badge2).mutate();
            } else {
                Drawable mutate = ContextCompat.getDrawable(this.context, i == 0 ? C3417R.C3419drawable.msg_mini_autodelete : C3417R.C3419drawable.msg_mini_autodelete_empty).mutate();
                this.currentTtlIcon = mutate;
                mutate.setColorFilter(this.currentColorFilter);
            }
            invalidateSelf();
            int i2 = this.time;
            if (i2 >= 1 && i2 < 60) {
                str = "" + i;
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerSeconds", C3417R.string.SecretChatTimerSeconds);
                }
            } else if (i2 >= 60 && i2 < 3600) {
                str = "" + (i / 60);
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerMinutes", C3417R.string.SecretChatTimerMinutes);
                }
            } else if (i2 >= 3600 && i2 < 86400) {
                str = "" + ((i / 60) / 60);
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerHours", C3417R.string.SecretChatTimerHours);
                }
            } else if (i2 >= 86400 && i2 < 604800) {
                str = "" + (((i / 60) / 60) / 24);
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerDays", C3417R.string.SecretChatTimerDays);
                }
            } else if (i2 < 2678400) {
                str = "" + ((((i / 60) / 60) / 24) / 7);
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerWeeks", C3417R.string.SecretChatTimerWeeks);
                } else if (str.length() > 2) {
                    str = "c";
                }
            } else if (i2 < 31449600) {
                str = "" + ((((i / 60) / 60) / 24) / 30);
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerMonths", C3417R.string.SecretChatTimerMonths);
                }
            } else {
                str = "" + ((((i / 60) / 60) / 24) / 364);
                if (str.length() < 2) {
                    str = str + LocaleController.getString("SecretChatTimerYears", C3417R.string.SecretChatTimerYears);
                }
            }
            String str2 = str;
            this.timePaint.setTextSize(AndroidUtilities.m54dp(11));
            float measureText = this.timePaint.measureText(str2);
            this.timeWidth = measureText;
            if (measureText > AndroidUtilities.m54dp(13)) {
                this.timePaint.setTextSize(AndroidUtilities.m54dp(9));
                this.timeWidth = this.timePaint.measureText(str2);
            }
            if (this.timeWidth > AndroidUtilities.m54dp(13)) {
                this.timePaint.setTextSize(AndroidUtilities.m54dp(6));
                this.timeWidth = this.timePaint.measureText(str2);
            }
            try {
                StaticLayout staticLayout = new StaticLayout(str2, this.timePaint, (int) Math.ceil(this.timeWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.timeLayout = staticLayout;
                this.timeHeight = staticLayout.getHeight();
            } catch (Exception e) {
                this.timeLayout = null;
                FileLog.m49e(e);
            }
            invalidateSelf();
        }
    }

    public static TimerDrawable getTtlIcon(int i) {
        TimerDrawable timerDrawable = new TimerDrawable(ApplicationLoader.applicationContext, null);
        timerDrawable.setTime(i);
        timerDrawable.isStaticIcon = true;
        return timerDrawable;
    }

    public static TimerDrawable getTtlIconForDialogs(int i) {
        TimerDrawable timerDrawable = new TimerDrawable(ApplicationLoader.applicationContext, null);
        timerDrawable.isDialog = true;
        timerDrawable.setTime(i);
        return timerDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int intrinsicWidth = getIntrinsicWidth();
        int intrinsicHeight = getIntrinsicHeight();
        if (this.isDialog) {
            this.timePaint.setColor(-1);
        } else if (!this.isStaticIcon) {
            if (!this.overrideColor) {
                this.paint.setColor(Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider));
            }
            this.timePaint.setColor(Theme.getColor(Theme.key_actionBarDefaultTitle, this.resourcesProvider));
        } else {
            this.timePaint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, this.resourcesProvider));
        }
        if (this.currentTtlIcon != null) {
            if (!this.isStaticIcon && !this.isDialog) {
                canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), getBounds().width() / 2.0f, this.paint);
                int color = Theme.getColor(Theme.key_actionBarDefaultTitle, this.resourcesProvider);
                if (this.iconColor != color) {
                    this.iconColor = color;
                    this.currentTtlIcon.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                }
            }
            if (this.isDialog) {
                this.currentTtlIcon.setBounds(getBounds().left, getBounds().top, getBounds().left + this.currentTtlIcon.getIntrinsicWidth(), getBounds().top + this.currentTtlIcon.getIntrinsicHeight());
                this.currentTtlIcon.draw(canvas);
            } else {
                Rect rect = AndroidUtilities.rectTmp2;
                rect.set(getBounds().centerX() - AndroidUtilities.m55dp(10.5f), getBounds().centerY() - AndroidUtilities.m55dp(10.5f), (getBounds().centerX() - AndroidUtilities.m55dp(10.5f)) + this.currentTtlIcon.getIntrinsicWidth(), (getBounds().centerY() - AndroidUtilities.m55dp(10.5f)) + this.currentTtlIcon.getIntrinsicHeight());
                this.currentTtlIcon.setBounds(rect);
                this.currentTtlIcon.draw(canvas);
            }
        }
        if (this.time == 0 || this.timeLayout == null) {
            return;
        }
        int i = AndroidUtilities.density != 3.0f ? 0 : -1;
        if (this.isDialog) {
            canvas.translate((float) (((getBounds().width() / 2) - Math.ceil(this.timeWidth / 2.0f)) + i), (getBounds().height() - this.timeHeight) / 2.0f);
            this.timeLayout.draw(canvas);
            return;
        }
        canvas.translate(((int) ((intrinsicWidth / 2) - Math.ceil(this.timeWidth / 2.0f))) + i, (intrinsicHeight - this.timeHeight) / 2.0f);
        this.timeLayout.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        if (this.isStaticIcon) {
            this.currentTtlIcon.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m54dp(23);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m54dp(23);
    }

    public void setBackgroundColor(int i) {
        this.overrideColor = true;
        this.paint.setColor(i);
    }

    public int getTime() {
        return this.time;
    }
}
