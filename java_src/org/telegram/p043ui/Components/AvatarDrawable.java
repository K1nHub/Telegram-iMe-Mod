package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.AvatarDrawable */
/* loaded from: classes6.dex */
public class AvatarDrawable extends Drawable {
    private GradientTools advancedGradient;
    private int alpha;
    private float archivedAvatarProgress;
    private int avatarType;
    private int color;
    private int color2;
    private boolean drawAvatarBackground;
    private boolean drawDeleted;
    private LinearGradient gradient;
    private int gradientBottom;
    private int gradientColor1;
    private int gradientColor2;
    private boolean hasAdvancedGradient;
    private boolean hasGradient;
    private boolean invalidateTextLayout;
    private boolean isCompactMode;
    private TextPaint namePaint;
    private boolean needApplyColorAccent;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean rotate45Background;
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

    public void setCompactMode(boolean z) {
        this.isCompactMode = z;
    }

    public AvatarDrawable() {
        this((Theme.ResourcesProvider) null);
    }

    public AvatarDrawable(Theme.ResourcesProvider resourcesProvider) {
        this.scaleSize = 1.0f;
        this.stringBuilder = new StringBuilder(5);
        this.roundRadius = -1;
        this.drawAvatarBackground = true;
        this.rotate45Background = false;
        this.alpha = 255;
        this.resourcesProvider = resourcesProvider;
        TextPaint textPaint = new TextPaint(1);
        this.namePaint = textPaint;
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.namePaint.setTextSize(AndroidUtilities.m107dp(18));
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
            setInfo(tLRPC$User.f1751id, tLRPC$User.first_name, tLRPC$User.last_name, null);
            this.drawDeleted = UserObject.isDeleted(tLRPC$User);
        }
    }

    public AvatarDrawable(TLRPC$Chat tLRPC$Chat, boolean z) {
        this();
        setInfo(tLRPC$Chat);
    }

    public void setDrawAvatarBackground(boolean z) {
        this.drawAvatarBackground = z;
    }

    public static int getPeerColorIndex(int i) {
        float[] tempHsv = Theme.getTempHsv(5);
        Color.colorToHSV(i, tempHsv);
        int i2 = (int) tempHsv[0];
        if (i2 >= 345 || i2 < 29) {
            return 0;
        }
        if (i2 < 67) {
            return 1;
        }
        if (i2 < 140) {
            return 3;
        }
        if (i2 < 199) {
            return 4;
        }
        if (i2 < 234) {
            return 5;
        }
        return i2 < 301 ? 2 : 6;
    }

    public static int getColorIndex(long j) {
        return (j < 0 || j >= ((long) Theme.keys_avatar_background.length)) ? (int) Math.abs(j % Theme.keys_avatar_background.length) : (int) j;
    }

    public static int getColorForId(long j) {
        return Theme.getColor(Theme.keys_avatar_background[getColorIndex(j)]);
    }

    public static int getIconColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor(Theme.key_avatar_actionBarIconBlue, resourcesProvider);
    }

    public static int getProfileColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor(Theme.keys_avatar_background[getColorIndex(j)], resourcesProvider);
    }

    public static int getProfileTextColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor(Theme.key_avatar_subtitleInProfileBlue, resourcesProvider);
    }

    public static int getProfileBackColorForId(long j, Theme.ResourcesProvider resourcesProvider) {
        return Theme.getColor(Theme.key_avatar_backgroundActionBarBlue, resourcesProvider);
    }

    public static String colorName(int i) {
        return LocaleController.getString(new int[]{C3632R.string.ColorRed, C3632R.string.ColorOrange, C3632R.string.ColorViolet, C3632R.string.ColorGreen, C3632R.string.ColorCyan, C3632R.string.ColorBlue, C3632R.string.ColorPink}[i % 7]);
    }

    public void setInfo(TLRPC$User tLRPC$User) {
        setInfo(UserConfig.selectedAccount, tLRPC$User);
    }

    public void setInfo(int i, TLRPC$User tLRPC$User) {
        if (tLRPC$User != null) {
            setInfo(tLRPC$User.f1751id, tLRPC$User.first_name, tLRPC$User.last_name, null, tLRPC$User.color != null ? Integer.valueOf(UserObject.getColorId(tLRPC$User)) : null, UserObject.getPeerColorForAvatar(i, tLRPC$User));
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

    public void setInfo(int i, TLObject tLObject) {
        if (tLObject instanceof TLRPC$User) {
            setInfo(i, (TLRPC$User) tLObject);
        } else if (tLObject instanceof TLRPC$Chat) {
            setInfo(i, (TLRPC$Chat) tLObject);
        } else if (tLObject instanceof TLRPC$ChatInvite) {
            setInfo(i, (TLRPC$ChatInvite) tLObject);
        }
    }

    public void setScaleSize(float f) {
        this.scaleSize = f;
    }

    public void setAvatarType(int i) {
        this.avatarType = i;
        this.rotate45Background = false;
        this.hasAdvancedGradient = false;
        this.hasGradient = false;
        if (i == 101) {
            this.color = getThemedColor(Theme.key_avatar_backgroundSaved);
        } else if (i == 100) {
            this.color = Theme.getColor(Theme.key_avatar_backgroundArchivedHidden);
        } else if (i == 13) {
            int color = Theme.getColor(Theme.key_chats_actionBackground);
            this.color2 = color;
            this.color = color;
        } else if (i == 2) {
            int themedColor = getThemedColor(Theme.key_avatar_backgroundArchivedHidden);
            this.color2 = themedColor;
            this.color = themedColor;
        } else if (i == 12 || i == 1 || i == 14) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.key_avatar_backgroundSaved);
            this.color2 = getThemedColor(Theme.key_avatar_background2Saved);
        } else if (i == 20) {
            this.rotate45Background = true;
            this.hasGradient = true;
            this.color = getThemedColor(Theme.key_stories_circle1);
            this.color2 = getThemedColor(Theme.key_stories_circle2);
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
        } else if (i == 17) {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(5L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(5L)]);
        } else if (i == 21) {
            this.hasAdvancedGradient = true;
            if (this.advancedGradient == null) {
                this.advancedGradient = new GradientTools();
            }
            this.advancedGradient.setColors(-8160001, -5217281, -36183, -1938945);
        } else if (i == 22) {
            this.hasAdvancedGradient = true;
            if (this.advancedGradient == null) {
                this.advancedGradient = new GradientTools();
            }
            this.advancedGradient.setColors(-11694593, -13910017, -14622003, -15801871);
        } else {
            this.hasGradient = true;
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(4L)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(4L)]);
        }
        int i2 = this.avatarType;
        boolean z = (i2 == 2 || i2 == 1 || i2 == 20 || i2 == 21 || i2 == 12 || i2 == 14) ? false : true;
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
        setInfo(UserConfig.selectedAccount, tLRPC$Chat);
    }

    public void setInfo(int i, TLRPC$Chat tLRPC$Chat) {
        if (tLRPC$Chat != null) {
            setInfo(tLRPC$Chat.f1602id, tLRPC$Chat.title, null, null, tLRPC$Chat.color != null ? Integer.valueOf(ChatObject.getColorId(tLRPC$Chat)) : null, ChatObject.getPeerColorForAvatar(i, tLRPC$Chat));
        }
    }

    public void setInfo(TLRPC$ChatInvite tLRPC$ChatInvite) {
        setInfo(UserConfig.selectedAccount, tLRPC$ChatInvite);
    }

    public void setInfo(int i, TLRPC$ChatInvite tLRPC$ChatInvite) {
        if (tLRPC$ChatInvite != null) {
            String str = tLRPC$ChatInvite.title;
            TLRPC$Chat tLRPC$Chat = tLRPC$ChatInvite.chat;
            setInfo(0L, str, null, null, (tLRPC$Chat == null || tLRPC$Chat.color == null) ? null : Integer.valueOf(ChatObject.getColorId(tLRPC$Chat)), ChatObject.getPeerColorForAvatar(i, tLRPC$ChatInvite.chat));
        }
    }

    public void setColor(int i) {
        this.hasGradient = false;
        this.hasAdvancedGradient = false;
        this.color2 = i;
        this.color = i;
        this.needApplyColorAccent = false;
    }

    public void setColor(int i, int i2) {
        this.hasGradient = true;
        this.hasAdvancedGradient = false;
        this.color = i;
        this.color2 = i2;
        this.needApplyColorAccent = false;
    }

    public void setTextSize(int i) {
        this.namePaint.setTextSize(i);
    }

    public void setInfo(long j, String str, String str2) {
        setInfo(j, str, str2, null, null, null);
    }

    public int getColor() {
        return this.needApplyColorAccent ? Theme.changeColorAccent(this.color) : this.color;
    }

    public int getColor2() {
        return this.needApplyColorAccent ? Theme.changeColorAccent(this.color2) : this.color2;
    }

    private static String takeFirstCharacter(String str) {
        ArrayList<Emoji.EmojiSpanRange> parseEmojis = Emoji.parseEmojis(str);
        if (parseEmojis != null && !parseEmojis.isEmpty() && parseEmojis.get(0).start == 0) {
            return str.substring(0, parseEmojis.get(0).end);
        }
        return str.substring(0, str.offsetByCodePoints(0, Math.min(str.codePointCount(0, str.length()), 1)));
    }

    public void setInfo(long j, String str, String str2, String str3) {
        setInfo(j, str, str2, str3, null, null);
    }

    public void setInfo(long j, String str, String str2, String str3, Integer num, MessagesController.PeerColor peerColor) {
        MessagesController.PeerColors peerColors;
        this.hasGradient = true;
        this.hasAdvancedGradient = false;
        this.invalidateTextLayout = true;
        if (peerColor != null) {
            this.color = peerColor.getAvatarColor1();
            this.color2 = peerColor.getAvatarColor2();
        } else if (num != null) {
            if (num.intValue() >= 14) {
                MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
                if (messagesController != null && (peerColors = messagesController.peerColors) != null && peerColors.getColor(num.intValue()) != null) {
                    int color1 = messagesController.peerColors.getColor(num.intValue()).getColor1();
                    this.color = getThemedColor(Theme.keys_avatar_background[getPeerColorIndex(color1)]);
                    this.color2 = getThemedColor(Theme.keys_avatar_background2[getPeerColorIndex(color1)]);
                } else {
                    this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(num.intValue())]);
                    this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(num.intValue())]);
                }
            } else {
                this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(num.intValue())]);
                this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(num.intValue())]);
            }
        } else {
            this.color = getThemedColor(Theme.keys_avatar_background[getColorIndex(j)]);
            this.color2 = getThemedColor(Theme.keys_avatar_background2[getColorIndex(j)]);
        }
        this.needApplyColorAccent = j == 5;
        this.avatarType = 0;
        this.drawDeleted = false;
        if (str == null || str.length() == 0) {
            str = str2;
            str2 = null;
        }
        getAvatarSymbols(str, str2, str3, this.stringBuilder);
    }

    public static void getAvatarSymbols(String str, String str2, String str3, StringBuilder sb) {
        sb.setLength(0);
        if (str3 != null) {
            sb.append(str3);
            return;
        }
        if (str != null && str.length() > 0) {
            sb.append(takeFirstCharacter(str));
        }
        if (str2 != null && str2.length() > 0) {
            int lastIndexOf = str2.lastIndexOf(32);
            if (lastIndexOf >= 0) {
                str2 = str2.substring(lastIndexOf + 1);
            }
            if (Build.VERSION.SDK_INT > 17) {
                sb.append("\u200c");
            }
            sb.append(takeFirstCharacter(str2));
        } else if (str != null && str.length() > 0) {
            for (int length = str.length() - 1; length >= 0; length--) {
                if (str.charAt(length) == ' ' && length != str.length() - 1 && str.charAt(length + 1) != ' ') {
                    int length2 = sb.length();
                    if (Build.VERSION.SDK_INT > 17) {
                        sb.append("\u200c");
                    }
                    sb.append(takeFirstCharacter(str.substring(length2)));
                    return;
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable;
        GradientTools gradientTools;
        int i;
        int i2;
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        int width = bounds.width();
        this.namePaint.setColor(ColorUtils.setAlphaComponent(getThemedColor(Theme.key_avatar_text), this.alpha));
        Paint paint = Theme.avatar_backgroundPaint;
        if (this.hasAdvancedGradient && (gradientTools = this.advancedGradient) != null) {
            gradientTools.setBounds(bounds.left, bounds.top, i + width, i2 + width);
            paint = this.advancedGradient.paint;
        } else if (this.hasGradient) {
            int alphaComponent = ColorUtils.setAlphaComponent(getColor(), this.alpha);
            int alphaComponent2 = ColorUtils.setAlphaComponent(getColor2(), this.alpha);
            if (this.gradient == null || this.gradientBottom != bounds.height() || this.gradientColor1 != alphaComponent || this.gradientColor2 != alphaComponent2) {
                int height = bounds.height();
                this.gradientBottom = height;
                this.gradientColor1 = alphaComponent;
                this.gradientColor2 = alphaComponent2;
                this.gradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, height, alphaComponent, alphaComponent2, Shader.TileMode.CLAMP);
            }
            paint.setShader(this.gradient);
        } else {
            paint.setShader(null);
            paint.setColor(ColorUtils.setAlphaComponent(getColor(), this.alpha));
        }
        canvas.save();
        canvas.translate(bounds.left, bounds.top);
        if (this.drawAvatarBackground) {
            if (this.rotate45Background) {
                canvas.save();
                float f = width / 2.0f;
                canvas.rotate(-45.0f, f, f);
            }
            if (this.roundRadius > 0) {
                RectF rectF = AndroidUtilities.rectTmp;
                float f2 = width;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, f2);
                int i3 = this.roundRadius;
                canvas.drawRoundRect(rectF, i3, i3, paint);
            } else {
                float f3 = width / 2.0f;
                canvas.drawCircle(f3, f3, f3, paint);
            }
            if (this.rotate45Background) {
                canvas.restore();
            }
        }
        int i4 = this.avatarType;
        if (i4 == 2) {
            if (this.archivedAvatarProgress != BitmapDescriptorFactory.HUE_RED) {
                int i5 = Theme.key_avatar_backgroundArchived;
                paint.setColor(ColorUtils.setAlphaComponent(getThemedColor(i5), this.alpha));
                float f4 = width / 2.0f;
                canvas.drawCircle(f4, f4, this.archivedAvatarProgress * f4, paint);
                if (Theme.dialogs_archiveAvatarDrawableRecolored) {
                    Theme.dialogs_archiveAvatarDrawable.beginApplyLayerColors();
                    Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow1.**", Theme.getNonAnimatedColor(i5));
                    Theme.dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", Theme.getNonAnimatedColor(i5));
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
            if (this.isCompactMode) {
                intrinsicWidth = (int) (intrinsicWidth * 0.8f);
                intrinsicHeight = (int) (intrinsicHeight * 0.8f);
            }
            int i6 = (width - intrinsicWidth) / 2;
            int i7 = (width - intrinsicHeight) / 2;
            canvas.save();
            Theme.dialogs_archiveAvatarDrawable.setBounds(i6, i7, intrinsicWidth + i6, intrinsicHeight + i7);
            Theme.dialogs_archiveAvatarDrawable.draw(canvas);
            canvas.restore();
        } else if (i4 != 0) {
            if (i4 == 101) {
                drawable = AppCompatResources.getDrawable(ApplicationLoader.applicationContext, C3632R.C3634drawable.fork_templates_filled);
                if (drawable != null) {
                    drawable.setBounds(0, 0, width, width);
                }
            } else if (i4 == 100) {
                drawable = AppCompatResources.getDrawable(ApplicationLoader.applicationContext, C3632R.C3634drawable.fork_filter_icon_lock_filled);
                if (drawable != null) {
                    drawable.setBounds(0, 0, width, width);
                }
            } else if (i4 == 1) {
                drawable = Theme.avatarDrawables[0];
                drawable.setBounds(0, 0, width, width);
            } else {
                drawable = i4 == 4 ? Theme.avatarDrawables[2] : i4 == 5 ? Theme.avatarDrawables[3] : i4 == 6 ? Theme.avatarDrawables[4] : i4 == 7 ? Theme.avatarDrawables[5] : i4 == 8 ? Theme.avatarDrawables[6] : i4 == 9 ? Theme.avatarDrawables[7] : i4 == 10 ? Theme.avatarDrawables[8] : i4 == 3 ? Theme.avatarDrawables[10] : i4 == 12 ? Theme.avatarDrawables[11] : i4 == 14 ? Theme.avatarDrawables[12] : i4 == 15 ? Theme.avatarDrawables[13] : i4 == 16 ? Theme.avatarDrawables[14] : i4 == 19 ? Theme.avatarDrawables[15] : i4 == 18 ? Theme.avatarDrawables[16] : i4 == 20 ? Theme.avatarDrawables[17] : i4 == 21 ? Theme.avatarDrawables[18] : i4 == 22 ? Theme.avatarDrawables[19] : Theme.avatarDrawables[9];
            }
            if (drawable != null) {
                int intrinsicWidth2 = (int) (drawable.getIntrinsicWidth() * this.scaleSize);
                int intrinsicHeight2 = (int) (drawable.getIntrinsicHeight() * this.scaleSize);
                if (this.isCompactMode) {
                    intrinsicWidth2 = (int) (intrinsicWidth2 * 0.8f);
                    intrinsicHeight2 = (int) (intrinsicHeight2 * 0.8f);
                }
                int i8 = (width - intrinsicWidth2) / 2;
                int i9 = (width - intrinsicHeight2) / 2;
                drawable.setBounds(i8, i9, intrinsicWidth2 + i8, intrinsicHeight2 + i9);
                int i10 = this.alpha;
                if (i10 != 255) {
                    drawable.setAlpha(i10);
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
                    if (intrinsicWidth3 > width - AndroidUtilities.m107dp(6) || intrinsicHeight3 > width - AndroidUtilities.m107dp(6)) {
                        float m107dp = width / AndroidUtilities.m107dp(50);
                        intrinsicWidth3 = (int) (intrinsicWidth3 * m107dp);
                        intrinsicHeight3 = (int) (intrinsicHeight3 * m107dp);
                    }
                    int i11 = (width - intrinsicWidth3) / 2;
                    int i12 = (width - intrinsicHeight3) / 2;
                    Theme.avatarDrawables[1].setBounds(i11, i12, intrinsicWidth3 + i11, intrinsicHeight3 + i12);
                    Theme.avatarDrawables[1].draw(canvas);
                }
            }
            if (this.invalidateTextLayout) {
                this.invalidateTextLayout = false;
                if (this.stringBuilder.length() > 0) {
                    CharSequence replaceEmoji = Emoji.replaceEmoji((CharSequence) this.stringBuilder.toString().toUpperCase(), this.namePaint.getFontMetricsInt(), AndroidUtilities.m107dp(16), true);
                    StaticLayout staticLayout = this.textLayout;
                    if (staticLayout == null || !TextUtils.equals(replaceEmoji, staticLayout.getText())) {
                        try {
                            StaticLayout staticLayout2 = new StaticLayout(replaceEmoji, this.namePaint, AndroidUtilities.m107dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.textLayout = staticLayout2;
                            if (staticLayout2.getLineCount() > 0) {
                                this.textLeft = this.textLayout.getLineLeft(0);
                                this.textWidth = this.textLayout.getLineWidth(0);
                                this.textHeight = this.textLayout.getLineBottom(0);
                            }
                        } catch (Exception e) {
                            FileLog.m102e(e);
                        }
                    }
                } else {
                    this.textLayout = null;
                }
            }
            if (this.textLayout != null) {
                float f5 = width;
                float m107dp2 = f5 / AndroidUtilities.m107dp(50);
                float f6 = f5 / 2.0f;
                canvas.scale(m107dp2, m107dp2, f6, f6);
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

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setRoundRadius(int i) {
        this.roundRadius = i;
    }
}
