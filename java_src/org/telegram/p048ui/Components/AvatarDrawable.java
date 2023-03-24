package org.telegram.p048ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.UserObject;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.AvatarDrawable */
/* loaded from: classes6.dex */
public class AvatarDrawable extends Drawable {
    private int alpha;
    private float archivedAvatarProgress;
    private int avatarType;
    private int color;
    private int color2;
    private boolean drawDeleted;
    private LinearGradient gradient;
    private int gradientBottom;
    private int gradientColor1;
    private int gradientColor2;
    private boolean hasGradient;
    private boolean invalidateTextLayout;
    private TextPaint namePaint;
    private boolean needApplyColorAccent;
    private Theme.ResourcesProvider resourcesProvider;
    private int roundRadius;
    private float scaleSize;
    private StringBuilder stringBuilder;
    private float textHeight;
    private StaticLayout textLayout;
    private float textLeft;
    private float textWidth;

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setProfile(boolean z) {
    }

    public AvatarDrawable() {
        this((Theme.ResourcesProvider) null);
    }

    public AvatarDrawable(Theme.ResourcesProvider resourcesProvider) {
        this.scaleSize = 1.0f;
        this.stringBuilder = new StringBuilder(5);
        this.roundRadius = -1;
        this.alpha = 255;
        this.resourcesProvider = resourcesProvider;
        TextPaint textPaint = new TextPaint(1);
        this.namePaint = textPaint;
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.namePaint.setTextSize(AndroidUtilities.m50dp(18));
    }

    public AvatarDrawable(TLRPC$User tLRPC$User) {
        this(tLRPC$User, false);
    }

    public AvatarDrawable(TLRPC$Chat tLRPC$Chat) {
        this(tLRPC$Chat, false);
    }

    public AvatarDrawable(TLRPC$User tLRPC$User, boolean z) {
        this();
        if (tLRPC$User != null) {
            setInfo(tLRPC$User.f1640id, tLRPC$User.first_name, tLRPC$User.last_name, null);
            this.drawDeleted = UserObject.isDeleted(tLRPC$User);
        }
    }

    public AvatarDrawable(TLRPC$Chat tLRPC$Chat, boolean z) {
        this();
        if (tLRPC$Chat != null) {
            setInfo(tLRPC$Chat.f1500id, tLRPC$Chat.title, null, null);
        }
    }

    public static int getColorIndex(long j) {
        return (j < 0 || j >= 7) ? (int) Math.abs(j % Theme.keys_avatar_background.length) : (int) j;
    }

    public static int getColorForId(long j) {
        return Theme.getColor(Theme.keys_avatar_background[getColorIndex(j)]);
    }

    public static int getIconColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor("avatar_actionBarIconBlue", resourcesProvider);
    }

    public static int getProfileColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor(Theme.keys_avatar_background[getColorIndex(j)], resourcesProvider);
    }

    public static int getProfileTextColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor("avatar_subtitleInProfileBlue", resourcesProvider);
    }

    public static int getProfileBackColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor("avatar_backgroundActionBarBlue", resourcesProvider);
    }

    public static String getNameColorNameForId(long j) {
        return Theme.keys_avatar_nameInMessage[getColorIndex(j)];
    }

    public void setInfo(TLRPC$User tLRPC$User) {
        if (tLRPC$User != null) {
            setInfo(tLRPC$User.f1640id, tLRPC$User.first_name, tLRPC$User.last_name, null);
            this.drawDeleted = UserObject.isDeleted(tLRPC$User);
        }
    }

    public void setInfo(TLObject tLObject) {
        if (tLObject instanceof TLRPC$User) {
            setInfo((TLRPC$User) tLObject);
        } else if (tLObject instanceof TLRPC$Chat) {
            setInfo((TLRPC$Chat) tLObject);
        } else if (tLObject instanceof TLRPC$ChatInvite) {
            setInfo((TLRPC$ChatInvite) tLObject);
        }
    }

    public void setScaleSize(float f) {
        this.scaleSize = f;
    }

    public void setAvatarType(int i) {
        this.avatarType = i;
        if (i == 101) {
            this.color = getThemedColor("avatar_backgroundSaved");
        } else if (i == 100) {
            this.color = Theme.getColor("avatar_backgroundViolet");
        } else if (i == 13) {
            this.hasGradient = false;
            int color = Theme.getColor("chats_actionBackground");
            this.color2 = color;
            this.color = color;
        } else if (i == 2) {
            this.hasGradient = false;
            int themedColor = getThemedColor("avatar_backgroundArchivedHidden");
            this.color2 = themedColor;
            this.color = themedColor;
        } else if (i == 12 || i == 1 || i == 14) {
            this.hasGradient = true;
            this.color = getThemedColor("avatar_backgroundSaved");
            this.color2 = getThemedColor("avatar_background2Saved");
        } else if (i == 3) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(5L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(5L)]);
        } else if (i == 4) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(5L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(5L)]);
        } else if (i == 5) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(4L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(4L)]);
        } else if (i == 6) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(3L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(3L)]);
        } else if (i == 7) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(1L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(1L)]);
        } else if (i == 8) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(0L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(0L)]);
        } else if (i == 9) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(6L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(6L)]);
        } else if (i == 10) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(5L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(5L)]);
        } else {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(4L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(4L)]);
        }
        int i2 = this.avatarType;
        boolean z = (i2 == 2 || i2 == 1 || i2 == 12 || i2 == 14) ? false : true;
        this.needApplyColorAccent = z;
        this.needApplyColorAccent = z & (i2 != 101);
    }

    public void setArchivedAvatarHiddenProgress(float f) {
        this.archivedAvatarProgress = f;
    }

    public int getAvatarType() {
        return this.avatarType;
    }

    public void setInfo(TLRPC$Chat tLRPC$Chat) {
        if (tLRPC$Chat != null) {
            setInfo(tLRPC$Chat.f1500id, tLRPC$Chat.title, null, null);
        }
    }

    public void setInfo(TLRPC$ChatInvite tLRPC$ChatInvite) {
        if (tLRPC$ChatInvite != null) {
            setInfo(0L, tLRPC$ChatInvite.title, null, null);
        }
    }

    public void setColor(int i) {
        this.hasGradient = false;
        this.color2 = i;
        this.color = i;
        this.needApplyColorAccent = false;
    }

    public void setColor(int i, int i2) {
        this.hasGradient = true;
        this.color = i;
        this.color2 = i2;
        this.needApplyColorAccent = false;
    }

    public void setTextSize(int i) {
        this.namePaint.setTextSize(i);
    }

    public void setInfo(long j, String str, String str2) {
        setInfo(j, str, str2, null);
    }

    public int getColor() {
        return this.needApplyColorAccent ? Theme.changeColorAccent(this.color) : this.color;
    }

    public int getColor2() {
        return this.needApplyColorAccent ? Theme.changeColorAccent(this.color2) : this.color2;
    }

    private String takeFirstCharacter(String str) {
        ArrayList<Emoji.EmojiSpanRange> parseEmojis = Emoji.parseEmojis(str);
        if (parseEmojis != null && !parseEmojis.isEmpty() && parseEmojis.get(0).start == 0) {
            return str.substring(0, parseEmojis.get(0).end);
        }
        return str.substring(0, str.offsetByCodePoints(0, Math.min(str.codePointCount(0, str.length()), 1)));
    }

    public void setInfo(long j, String str, String str2, String str3) {
        this.hasGradient = true;
        this.invalidateTextLayout = true;
        this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(j)]);
        this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(j)]);
        this.needApplyColorAccent = j == 5;
        this.avatarType = 0;
        this.drawDeleted = false;
        if (str == null || str.length() == 0) {
            str = str2;
            str2 = null;
        }
        this.stringBuilder.setLength(0);
        if (str3 != null) {
            this.stringBuilder.append(str3);
            return;
        }
        if (str != null && str.length() > 0) {
            this.stringBuilder.append(takeFirstCharacter(str));
        }
        if (str2 != null && str2.length() > 0) {
            int lastIndexOf = str2.lastIndexOf(32);
            if (lastIndexOf >= 0) {
                str2 = str2.substring(lastIndexOf + 1);
            }
            if (Build.VERSION.SDK_INT > 17) {
                this.stringBuilder.append("\u200c");
            }
            this.stringBuilder.append(takeFirstCharacter(str2));
        } else if (str != null && str.length() > 0) {
            for (int length = str.length() - 1; length >= 0; length--) {
                if (str.charAt(length) == ' ' && length != str.length() - 1 && str.charAt(length + 1) != ' ') {
                    int length2 = this.stringBuilder.length();
                    if (Build.VERSION.SDK_INT > 17) {
                        this.stringBuilder.append("\u200c");
                    }
                    this.stringBuilder.append(takeFirstCharacter(str.substring(length2)));
                    return;
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable;
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        int width = bounds.width();
        this.namePaint.setColor(ColorUtils.setAlphaComponent(getThemedColor("avatar_text"), this.alpha));
        if (this.hasGradient) {
            int alphaComponent = ColorUtils.setAlphaComponent(getColor(), this.alpha);
            int alphaComponent2 = ColorUtils.setAlphaComponent(getColor2(), this.alpha);
            if (this.gradient == null || this.gradientBottom != bounds.height() || this.gradientColor1 != alphaComponent || this.gradientColor2 != alphaComponent2) {
                int height = bounds.height();
                this.gradientBottom = height;
                this.gradientColor1 = alphaComponent;
                this.gradientColor2 = alphaComponent2;
                this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, height, alphaComponent, alphaComponent2, Shader.TileMode.CLAMP);
            }
            Theme.avatar_backgroundPaint.setShader(this.gradient);
        } else {
            Theme.avatar_backgroundPaint.setShader(null);
            Theme.avatar_backgroundPaint.setColor(ColorUtils.setAlphaComponent(getColor(), this.alpha));
        }
        canvas.save();
        canvas.translate(bounds.left, bounds.top);
        if (this.roundRadius > 0) {
            RectF rectF = AndroidUtilities.rectTmp;
            float f = width;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f);
            int i = this.roundRadius;
            canvas.drawRoundRect(rectF, i, i, Theme.avatar_backgroundPaint);
        } else {
            float f2 = width / 2.0f;
            canvas.drawCircle(f2, f2, f2, Theme.avatar_backgroundPaint);
        }
        int i2 = this.avatarType;
        if (i2 == 2) {
            if (this.archivedAvatarProgress != BitmapDescriptorFactory.HUE_RED) {
                Theme.avatar_backgroundPaint.setColor(ColorUtils.setAlphaComponent(getThemedColor("avatar_backgroundArchived"), this.alpha));
                float f3 = width / 2.0f;
                canvas.drawCircle(f3, f3, this.archivedAvatarProgress * f3, Theme.avatar_backgroundPaint);
                if (Theme.dialogs_archiveAvatarDrawableRecolored) {
                    Theme.dialogs_archiveAvatarDrawable.beginApplyLayerColors();
                    Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow1.**", Theme.getNonAnimatedColor("avatar_backgroundArchived"));
                    Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", Theme.getNonAnimatedColor("avatar_backgroundArchived"));
                    Theme.dialogs_archiveAvatarDrawable.commitApplyLayerColors();
                    Theme.dialogs_archiveAvatarDrawableRecolored = false;
                }
            } else if (!Theme.dialogs_archiveAvatarDrawableRecolored) {
                Theme.dialogs_archiveAvatarDrawable.beginApplyLayerColors();
                Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow1.**", this.color);
                Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", this.color);
                Theme.dialogs_archiveAvatarDrawable.commitApplyLayerColors();
                Theme.dialogs_archiveAvatarDrawableRecolored = true;
            }
            int intrinsicWidth = Theme.dialogs_archiveAvatarDrawable.getIntrinsicWidth();
            int intrinsicHeight = Theme.dialogs_archiveAvatarDrawable.getIntrinsicHeight();
            float f4 = this.scaleSize;
            int i3 = (int) (intrinsicWidth * f4);
            int i4 = (int) (intrinsicHeight * f4);
            int i5 = (width - i3) / 2;
            int i6 = (width - i4) / 2;
            canvas.save();
            Theme.dialogs_archiveAvatarDrawable.setBounds(i5, i6, i3 + i5, i4 + i6);
            Theme.dialogs_archiveAvatarDrawable.draw(canvas);
            canvas.restore();
        } else if (i2 != 0) {
            if (i2 == 101) {
                drawable = AppCompatResources.getDrawable(ApplicationLoader.applicationContext, C3301R.C3303drawable.fork_templates_filled);
                if (drawable != null) {
                    drawable.setBounds(0, 0, width, width);
                }
            } else if (i2 == 100) {
                drawable = AppCompatResources.getDrawable(ApplicationLoader.applicationContext, C3301R.C3303drawable.fork_filter_icon_lock_filled);
                if (drawable != null) {
                    drawable.setBounds(0, 0, width, width);
                }
            } else if (i2 == 1) {
                drawable = Theme.avatarDrawables[0];
                drawable.setBounds(0, 0, width, width);
            } else {
                drawable = i2 == 4 ? Theme.avatarDrawables[2] : i2 == 5 ? Theme.avatarDrawables[3] : i2 == 6 ? Theme.avatarDrawables[4] : i2 == 7 ? Theme.avatarDrawables[5] : i2 == 8 ? Theme.avatarDrawables[6] : i2 == 9 ? Theme.avatarDrawables[7] : i2 == 10 ? Theme.avatarDrawables[8] : i2 == 3 ? Theme.avatarDrawables[10] : i2 == 12 ? Theme.avatarDrawables[11] : i2 == 14 ? Theme.avatarDrawables[12] : Theme.avatarDrawables[9];
            }
            if (drawable != null) {
                int intrinsicWidth2 = (int) (drawable.getIntrinsicWidth() * this.scaleSize);
                int intrinsicHeight2 = (int) (drawable.getIntrinsicHeight() * this.scaleSize);
                int i7 = (width - intrinsicWidth2) / 2;
                int i8 = (width - intrinsicHeight2) / 2;
                drawable.setBounds(i7, i8, intrinsicWidth2 + i7, intrinsicHeight2 + i8);
                int i9 = this.alpha;
                if (i9 != 255) {
                    drawable.setAlpha(i9);
                    drawable.draw(canvas);
                    drawable.setAlpha(255);
                } else {
                    drawable.draw(canvas);
                }
            }
        } else {
            if (this.drawDeleted) {
                Drawable[] drawableArr = Theme.avatarDrawables;
                if (drawableArr[1] != null) {
                    int intrinsicWidth3 = drawableArr[1].getIntrinsicWidth();
                    int intrinsicHeight3 = Theme.avatarDrawables[1].getIntrinsicHeight();
                    if (intrinsicWidth3 > width - AndroidUtilities.m50dp(6) || intrinsicHeight3 > width - AndroidUtilities.m50dp(6)) {
                        float m50dp = width / AndroidUtilities.m50dp(50);
                        intrinsicWidth3 = (int) (intrinsicWidth3 * m50dp);
                        intrinsicHeight3 = (int) (intrinsicHeight3 * m50dp);
                    }
                    int i10 = (width - intrinsicWidth3) / 2;
                    int i11 = (width - intrinsicHeight3) / 2;
                    Theme.avatarDrawables[1].setBounds(i10, i11, intrinsicWidth3 + i10, intrinsicHeight3 + i11);
                    Theme.avatarDrawables[1].draw(canvas);
                }
            }
            if (this.invalidateTextLayout) {
                this.invalidateTextLayout = false;
                if (this.stringBuilder.length() > 0) {
                    CharSequence replaceEmoji = Emoji.replaceEmoji(this.stringBuilder.toString().toUpperCase(), this.namePaint.getFontMetricsInt(), AndroidUtilities.m50dp(16), true);
                    StaticLayout staticLayout = this.textLayout;
                    if (staticLayout == null || !TextUtils.equals(replaceEmoji, staticLayout.getText())) {
                        try {
                            StaticLayout staticLayout2 = new StaticLayout(replaceEmoji, this.namePaint, AndroidUtilities.m50dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.textLayout = staticLayout2;
                            if (staticLayout2.getLineCount() > 0) {
                                this.textLeft = this.textLayout.getLineLeft(0);
                                this.textWidth = this.textLayout.getLineWidth(0);
                                this.textHeight = this.textLayout.getLineBottom(0);
                            }
                        } catch (Exception e) {
                            FileLog.m45e(e);
                        }
                    }
                } else {
                    this.textLayout = null;
                }
            }
            if (this.textLayout != null) {
                float f5 = width;
                float m50dp2 = f5 / AndroidUtilities.m50dp(50);
                float f6 = f5 / 2.0f;
                canvas.scale(m50dp2, m50dp2, f6, f6);
                canvas.translate(((f5 - this.textWidth) / 2.0f) - this.textLeft, (f5 - this.textHeight) / 2.0f);
                this.textLayout.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }

    public void setRoundRadius(int i) {
        this.roundRadius = i;
    }
}
