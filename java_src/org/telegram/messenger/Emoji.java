package org.telegram.messenger;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.telegram.messenger.CompoundEmoji;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
/* loaded from: classes4.dex */
public class Emoji {
    private static String[] DEFAULT_RECENT = null;
    private static final int MAX_RECENT_EMOJI_COUNT = 48;
    public static int bigImgSize;
    public static int drawImgSize;
    private static Bitmap[][] emojiBmp;
    public static HashMap<String, String> emojiColor;
    private static int[] emojiCounts;
    public static boolean emojiDrawingUseAlpha;
    public static float emojiDrawingYOffset;
    public static HashMap<String, Integer> emojiUseHistory;
    public static Runnable invalidateUiRunnable;
    private static boolean[][] loadingEmoji;
    public static Paint placeholderPaint;
    public static ArrayList<String> recentEmoji;
    private static boolean recentEmojiLoaded;
    private static HashMap<CharSequence, DrawableInfo> rects = new HashMap<>();
    private static boolean inited = false;

    /* loaded from: classes4.dex */
    public static abstract class EmojiDrawable extends Drawable {
        boolean fullSize = false;
        int placeholderColor = 268435456;

        public boolean isLoaded() {
            return false;
        }

        public void preload() {
        }
    }

    static {
        String[][] strArr = EmojiData.data;
        emojiCounts = new int[]{strArr[0].length, strArr[1].length, strArr[2].length, strArr[3].length, strArr[4].length, strArr[5].length, strArr[6].length, strArr[7].length};
        emojiBmp = new Bitmap[8];
        loadingEmoji = new boolean[8];
        emojiUseHistory = new HashMap<>();
        recentEmoji = new ArrayList<>();
        emojiColor = new HashMap<>();
        invalidateUiRunnable = new Runnable() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Emoji.lambda$static$0();
            }
        };
        emojiDrawingUseAlpha = true;
        DEFAULT_RECENT = new String[]{"😂", "😘", "❤", "😍", "😊", "😁", "👍", "☺", "😔", "😄", "😭", "💋", "😒", "😳", "😜", "🙈", "😉", "😃", "😢", "😝", "😱", "😡", "😏", "😞", "😅", "😚", "🙊", "😌", "😀", "😋", "😆", "👌", "😐", "😕"};
        drawImgSize = AndroidUtilities.m72dp(20);
        bigImgSize = AndroidUtilities.m72dp(AndroidUtilities.isTablet() ? 40 : 34);
        int i = 0;
        while (true) {
            Bitmap[][] bitmapArr = emojiBmp;
            if (i >= bitmapArr.length) {
                break;
            }
            int[] iArr = emojiCounts;
            bitmapArr[i] = new Bitmap[iArr[i]];
            loadingEmoji[i] = new boolean[iArr[i]];
            i++;
        }
        for (int i2 = 0; i2 < EmojiData.data.length; i2++) {
            int i3 = 0;
            while (true) {
                String[][] strArr2 = EmojiData.data;
                if (i3 < strArr2[i2].length) {
                    rects.put(strArr2[i2][i3], new DrawableInfo((byte) i2, (short) i3, i3));
                    i3++;
                }
            }
        }
        Paint paint = new Paint();
        placeholderPaint = paint;
        paint.setColor(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiLoaded, new Object[0]);
    }

    public static void preloadEmoji(CharSequence charSequence) {
        DrawableInfo drawableInfo = getDrawableInfo(charSequence);
        if (drawableInfo != null) {
            loadEmoji(drawableInfo.page, drawableInfo.page2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loadEmoji(final byte b, final short s) {
        if (emojiBmp[b][s] == null) {
            boolean[][] zArr = loadingEmoji;
            if (zArr[b][s]) {
                return;
            }
            zArr[b][s] = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Emoji.lambda$loadEmoji$1(b, s);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadEmoji$1(byte b, short s) {
        Bitmap loadBitmap = loadBitmap("emoji/" + String.format(Locale.US, "%d_%d.png", Byte.valueOf(b), Short.valueOf(s)));
        if (loadBitmap != null) {
            emojiBmp[b][s] = loadBitmap;
            AndroidUtilities.cancelRunOnUIThread(invalidateUiRunnable);
            AndroidUtilities.runOnUIThread(invalidateUiRunnable);
        }
        loadingEmoji[b][s] = false;
    }

    public static Bitmap loadBitmap(String str) {
        Bitmap bitmap;
        try {
            int i = AndroidUtilities.density <= 1.0f ? 2 : 1;
            try {
                InputStream open = ApplicationLoader.applicationContext.getAssets().open(str);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = false;
                options.inSampleSize = i;
                bitmap = BitmapFactory.decodeStream(open, null, options);
                try {
                    open.close();
                } catch (Throwable th) {
                    th = th;
                    FileLog.m67e(th);
                    return bitmap;
                }
            } catch (Throwable th2) {
                th = th2;
                bitmap = null;
            }
            return bitmap;
        } catch (Throwable th3) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m68e("Error loading emoji", th3);
            }
            return null;
        }
    }

    public static void invalidateAll(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                invalidateAll(viewGroup.getChildAt(i));
            }
        } else if (view instanceof TextView) {
            view.invalidate();
        }
    }

    public static String fixEmoji(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt < 55356 || charAt > 55358) {
                if (charAt == 8419) {
                    return str;
                }
                if (charAt >= 8252 && charAt <= 12953 && EmojiData.emojiToFE0FMap.containsKey(Character.valueOf(charAt))) {
                    StringBuilder sb = new StringBuilder();
                    i++;
                    sb.append(str.substring(0, i));
                    sb.append("️");
                    sb.append(str.substring(i));
                    str = sb.toString();
                    length++;
                }
            } else if (charAt != 55356 || i >= length - 1) {
                i++;
            } else {
                int i2 = i + 1;
                char charAt2 = str.charAt(i2);
                if (charAt2 == 56879 || charAt2 == 56324 || charAt2 == 56858 || charAt2 == 56703) {
                    StringBuilder sb2 = new StringBuilder();
                    i += 2;
                    sb2.append(str.substring(0, i));
                    sb2.append("️");
                    sb2.append(str.substring(i));
                    str = sb2.toString();
                    length++;
                } else {
                    i = i2;
                }
            }
            i++;
        }
        return str;
    }

    public static EmojiDrawable getEmojiDrawable(CharSequence charSequence) {
        CompoundEmoji.CompoundEmojiDrawable compoundEmojiDrawable;
        DrawableInfo drawableInfo = getDrawableInfo(charSequence);
        if (drawableInfo != null) {
            SimpleEmojiDrawable simpleEmojiDrawable = new SimpleEmojiDrawable(drawableInfo);
            int i = drawImgSize;
            simpleEmojiDrawable.setBounds(0, 0, i, i);
            return simpleEmojiDrawable;
        } else if (charSequence == null || (compoundEmojiDrawable = CompoundEmoji.getCompoundEmojiDrawable(charSequence.toString())) == null) {
            return null;
        } else {
            int i2 = drawImgSize;
            compoundEmojiDrawable.setBounds(0, 0, i2, i2);
            return compoundEmojiDrawable;
        }
    }

    private static DrawableInfo getDrawableInfo(CharSequence charSequence) {
        CharSequence charSequence2;
        DrawableInfo drawableInfo = rects.get(charSequence);
        return (drawableInfo != null || (charSequence2 = EmojiData.emojiAliasMap.get(charSequence)) == null) ? drawableInfo : rects.get(charSequence2);
    }

    public static boolean isValidEmoji(CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        DrawableInfo drawableInfo = rects.get(charSequence);
        if (drawableInfo == null && (charSequence2 = EmojiData.emojiAliasMap.get(charSequence)) != null) {
            drawableInfo = rects.get(charSequence2);
        }
        return drawableInfo != null;
    }

    public static Drawable getEmojiBigDrawable(String str) {
        CharSequence charSequence;
        EmojiDrawable compoundEmojiDrawable = CompoundEmoji.getCompoundEmojiDrawable(str);
        if (compoundEmojiDrawable != null) {
            int i = drawImgSize;
            compoundEmojiDrawable.setBounds(0, 0, i, i);
        } else {
            compoundEmojiDrawable = null;
        }
        if (compoundEmojiDrawable == null) {
            compoundEmojiDrawable = getEmojiDrawable(str);
        }
        if (compoundEmojiDrawable == null && (charSequence = EmojiData.emojiAliasMap.get(str)) != null) {
            compoundEmojiDrawable = getEmojiDrawable(charSequence);
        }
        if (compoundEmojiDrawable == null) {
            return null;
        }
        int i2 = bigImgSize;
        compoundEmojiDrawable.setBounds(0, 0, i2, i2);
        compoundEmojiDrawable.fullSize = true;
        return compoundEmojiDrawable;
    }

    /* loaded from: classes4.dex */
    public static class SimpleEmojiDrawable extends EmojiDrawable {
        private static Paint paint = new Paint(2);
        private static Rect rect = new Rect();
        private DrawableInfo info;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public SimpleEmojiDrawable(DrawableInfo drawableInfo) {
            this.info = drawableInfo;
        }

        public DrawableInfo getDrawableInfo() {
            return this.info;
        }

        public Rect getDrawRect() {
            Rect bounds = getBounds();
            int centerX = bounds.centerX();
            int centerY = bounds.centerY();
            Rect rect2 = rect;
            boolean z = this.fullSize;
            rect2.left = centerX - ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.right = centerX + ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.top = centerY - ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.bottom = centerY + ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            return rect;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds;
            if (!isLoaded()) {
                DrawableInfo drawableInfo = this.info;
                Emoji.loadEmoji(drawableInfo.page, drawableInfo.page2);
                Emoji.placeholderPaint.setColor(this.placeholderColor);
                Rect bounds2 = getBounds();
                canvas.drawCircle(bounds2.centerX(), bounds2.centerY(), bounds2.width() * 0.4f, Emoji.placeholderPaint);
                return;
            }
            if (this.fullSize) {
                bounds = getDrawRect();
            } else {
                bounds = getBounds();
            }
            if (canvas.quickReject(bounds.left, bounds.top, bounds.right, bounds.bottom, Canvas.EdgeType.AA)) {
                return;
            }
            Bitmap[][] bitmapArr = Emoji.emojiBmp;
            DrawableInfo drawableInfo2 = this.info;
            canvas.drawBitmap(bitmapArr[drawableInfo2.page][drawableInfo2.page2], (Rect) null, bounds, paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            paint.setAlpha(i);
        }

        @Override // org.telegram.messenger.Emoji.EmojiDrawable
        public boolean isLoaded() {
            Bitmap[][] bitmapArr = Emoji.emojiBmp;
            DrawableInfo drawableInfo = this.info;
            return bitmapArr[drawableInfo.page][drawableInfo.page2] != null;
        }

        @Override // org.telegram.messenger.Emoji.EmojiDrawable
        public void preload() {
            if (isLoaded()) {
                return;
            }
            DrawableInfo drawableInfo = this.info;
            Emoji.loadEmoji(drawableInfo.page, drawableInfo.page2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class DrawableInfo {
        public int emojiIndex;
        public byte page;
        public short page2;

        public DrawableInfo(byte b, short s, int i) {
            this.page = b;
            this.page2 = s;
            this.emojiIndex = i;
        }
    }

    /* loaded from: classes4.dex */
    public static class EmojiSpanRange {
        public CharSequence code;
        public int end;
        public int start;

        public EmojiSpanRange(int i, int i2, CharSequence charSequence) {
            this.start = i;
            this.end = i2;
            this.code = charSequence;
        }
    }

    public static boolean fullyConsistsOfEmojis(CharSequence charSequence) {
        int[] iArr = new int[1];
        parseEmojis(charSequence, iArr);
        return iArr[0] > 0;
    }

    public static ArrayList<EmojiSpanRange> parseEmojis(CharSequence charSequence) {
        return parseEmojis(charSequence, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0199 A[Catch: Exception -> 0x027d, TryCatch #0 {Exception -> 0x027d, blocks: (B:9:0x0029, B:30:0x006e, B:86:0x011c, B:88:0x0120, B:90:0x012d, B:94:0x013b, B:116:0x0199, B:118:0x019d, B:122:0x01aa, B:124:0x01b0, B:162:0x020d, B:140:0x01dc, B:142:0x01e0, B:153:0x01f8, B:155:0x01fc, B:166:0x0218, B:168:0x021f, B:170:0x0223, B:172:0x022e, B:176:0x023c, B:179:0x024c, B:181:0x0255, B:183:0x0258, B:184:0x0269, B:95:0x0148, B:97:0x014f, B:99:0x0159, B:103:0x0168, B:105:0x0177, B:106:0x017e, B:108:0x0188, B:110:0x018e, B:17:0x0043, B:19:0x004e, B:32:0x007a, B:43:0x0097, B:41:0x008e, B:47:0x00a7, B:55:0x00bb, B:75:0x00fd, B:66:0x00dd, B:73:0x00f3), top: B:195:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0216 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x021f A[Catch: Exception -> 0x027d, TryCatch #0 {Exception -> 0x027d, blocks: (B:9:0x0029, B:30:0x006e, B:86:0x011c, B:88:0x0120, B:90:0x012d, B:94:0x013b, B:116:0x0199, B:118:0x019d, B:122:0x01aa, B:124:0x01b0, B:162:0x020d, B:140:0x01dc, B:142:0x01e0, B:153:0x01f8, B:155:0x01fc, B:166:0x0218, B:168:0x021f, B:170:0x0223, B:172:0x022e, B:176:0x023c, B:179:0x024c, B:181:0x0255, B:183:0x0258, B:184:0x0269, B:95:0x0148, B:97:0x014f, B:99:0x0159, B:103:0x0168, B:105:0x0177, B:106:0x017e, B:108:0x0188, B:110:0x018e, B:17:0x0043, B:19:0x004e, B:32:0x007a, B:43:0x0097, B:41:0x008e, B:47:0x00a7, B:55:0x00bb, B:75:0x00fd, B:66:0x00dd, B:73:0x00f3), top: B:195:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00fd A[Catch: Exception -> 0x027d, TryCatch #0 {Exception -> 0x027d, blocks: (B:9:0x0029, B:30:0x006e, B:86:0x011c, B:88:0x0120, B:90:0x012d, B:94:0x013b, B:116:0x0199, B:118:0x019d, B:122:0x01aa, B:124:0x01b0, B:162:0x020d, B:140:0x01dc, B:142:0x01e0, B:153:0x01f8, B:155:0x01fc, B:166:0x0218, B:168:0x021f, B:170:0x0223, B:172:0x022e, B:176:0x023c, B:179:0x024c, B:181:0x0255, B:183:0x0258, B:184:0x0269, B:95:0x0148, B:97:0x014f, B:99:0x0159, B:103:0x0168, B:105:0x0177, B:106:0x017e, B:108:0x0188, B:110:0x018e, B:17:0x0043, B:19:0x004e, B:32:0x007a, B:43:0x0097, B:41:0x008e, B:47:0x00a7, B:55:0x00bb, B:75:0x00fd, B:66:0x00dd, B:73:0x00f3), top: B:195:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011c A[Catch: Exception -> 0x027d, TryCatch #0 {Exception -> 0x027d, blocks: (B:9:0x0029, B:30:0x006e, B:86:0x011c, B:88:0x0120, B:90:0x012d, B:94:0x013b, B:116:0x0199, B:118:0x019d, B:122:0x01aa, B:124:0x01b0, B:162:0x020d, B:140:0x01dc, B:142:0x01e0, B:153:0x01f8, B:155:0x01fc, B:166:0x0218, B:168:0x021f, B:170:0x0223, B:172:0x022e, B:176:0x023c, B:179:0x024c, B:181:0x0255, B:183:0x0258, B:184:0x0269, B:95:0x0148, B:97:0x014f, B:99:0x0159, B:103:0x0168, B:105:0x0177, B:106:0x017e, B:108:0x0188, B:110:0x018e, B:17:0x0043, B:19:0x004e, B:32:0x007a, B:43:0x0097, B:41:0x008e, B:47:0x00a7, B:55:0x00bb, B:75:0x00fd, B:66:0x00dd, B:73:0x00f3), top: B:195:0x0029 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<org.telegram.messenger.Emoji.EmojiSpanRange> parseEmojis(java.lang.CharSequence r25, int[] r26) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.Emoji.parseEmojis(java.lang.CharSequence, int[]):java.util.ArrayList");
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return replaceEmoji(charSequence, fontMetricsInt, AndroidUtilities.m72dp(16), z, (int[]) null);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, int i, boolean z) {
        return replaceEmoji(charSequence, fontMetricsInt, i, z, (int[]) null);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, int i, boolean z, int[] iArr) {
        return replaceEmoji(charSequence, fontMetricsInt, z, iArr, 0);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr, int i) {
        Spannable newSpannable;
        int i2;
        EmojiSpanRange emojiSpanRange;
        boolean z2;
        if (SharedConfig.useSystemEmoji || charSequence == null || charSequence.length() == 0) {
            return charSequence;
        }
        if (!z && (charSequence instanceof Spannable)) {
            newSpannable = (Spannable) charSequence;
        } else {
            newSpannable = Spannable.Factory.getInstance().newSpannable(charSequence.toString());
        }
        ArrayList<EmojiSpanRange> parseEmojis = parseEmojis(newSpannable, iArr);
        if (parseEmojis.isEmpty()) {
            return charSequence;
        }
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) newSpannable.getSpans(0, newSpannable.length(), AnimatedEmojiSpan.class);
        int i3 = SharedConfig.getDevicePerformanceClass() >= 2 ? 100 : 50;
        for (i2 = 0; i2 < parseEmojis.size(); i2 = i2 + 1) {
            try {
                emojiSpanRange = parseEmojis.get(i2);
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            if (animatedEmojiSpanArr != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= animatedEmojiSpanArr.length) {
                        z2 = false;
                        break;
                    }
                    AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[i4];
                    if (animatedEmojiSpan != null && newSpannable.getSpanStart(animatedEmojiSpan) == emojiSpanRange.start && newSpannable.getSpanEnd(animatedEmojiSpan) == emojiSpanRange.end) {
                        z2 = true;
                        break;
                    }
                    i4++;
                }
                i2 = z2 ? i2 + 1 : 0;
            }
            EmojiDrawable emojiDrawable = getEmojiDrawable(emojiSpanRange.code);
            if (emojiDrawable != null) {
                EmojiSpan emojiSpan = new EmojiSpan(emojiDrawable, i, fontMetricsInt);
                CharSequence charSequence2 = emojiSpanRange.code;
                emojiSpan.emoji = charSequence2 == null ? null : charSequence2.toString();
                newSpannable.setSpan(emojiSpan, emojiSpanRange.start, emojiSpanRange.end, 33);
            }
            int i5 = Build.VERSION.SDK_INT;
            if ((i5 < 23 || i5 >= 29) && i2 + 1 >= i3) {
                break;
            }
        }
        return newSpannable;
    }

    /* loaded from: classes4.dex */
    public static class EmojiSpan extends ImageSpan {
        public boolean drawn;
        public String emoji;
        public Paint.FontMetricsInt fontMetrics;
        public float lastDrawX;
        public float lastDrawY;
        public float scale;
        public int size;

        public EmojiSpan(Drawable drawable, int i, Paint.FontMetricsInt fontMetricsInt) {
            super(drawable, i);
            this.scale = 1.0f;
            this.size = AndroidUtilities.m72dp(20);
            this.fontMetrics = fontMetricsInt;
            if (fontMetricsInt != null) {
                int abs = Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent);
                this.size = abs;
                if (abs == 0) {
                    this.size = AndroidUtilities.m72dp(20);
                }
            }
        }

        public void replaceFontMetrics(Paint.FontMetricsInt fontMetricsInt, int i) {
            this.fontMetrics = fontMetricsInt;
            this.size = i;
        }

        public void replaceFontMetrics(Paint.FontMetricsInt fontMetricsInt) {
            this.fontMetrics = fontMetricsInt;
            if (fontMetricsInt != null) {
                int abs = Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent);
                this.size = abs;
                if (abs == 0) {
                    this.size = AndroidUtilities.m72dp(20);
                }
            }
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            if (fontMetricsInt == null) {
                fontMetricsInt = new Paint.FontMetricsInt();
            }
            int i3 = (int) (this.scale * this.size);
            Paint.FontMetricsInt fontMetricsInt2 = this.fontMetrics;
            if (fontMetricsInt2 == null) {
                int size = super.getSize(paint, charSequence, i, i2, fontMetricsInt);
                int m72dp = AndroidUtilities.m72dp(8);
                int m72dp2 = AndroidUtilities.m72dp(10);
                int i4 = (-m72dp2) - m72dp;
                fontMetricsInt.top = i4;
                int i5 = m72dp2 - m72dp;
                fontMetricsInt.bottom = i5;
                fontMetricsInt.ascent = i4;
                fontMetricsInt.leading = 0;
                fontMetricsInt.descent = i5;
                return size;
            }
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
            if (getDrawable() != null) {
                getDrawable().setBounds(0, 0, i3, i3);
            }
            return i3;
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            boolean z;
            this.lastDrawX = f + ((this.scale * this.size) / 2.0f);
            this.lastDrawY = i3 + ((i5 - i3) / 2.0f);
            boolean z2 = true;
            this.drawn = true;
            if (paint.getAlpha() == 255 || !Emoji.emojiDrawingUseAlpha) {
                z = false;
            } else {
                getDrawable().setAlpha(paint.getAlpha());
                z = true;
            }
            float f2 = Emoji.emojiDrawingYOffset;
            int i6 = this.size;
            float f3 = f2 - ((i6 - (this.scale * i6)) / 2.0f);
            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, f3);
            } else {
                z2 = false;
            }
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            if (z2) {
                canvas.restore();
            }
            if (z) {
                getDrawable().setAlpha(255);
            }
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (getDrawable() instanceof EmojiDrawable) {
                ((EmojiDrawable) getDrawable()).placeholderColor = 285212671 & textPaint.getColor();
            }
            super.updateDrawState(textPaint);
        }
    }

    public static void addRecentEmoji(String str) {
        Integer num = emojiUseHistory.get(str);
        if (num == null) {
            num = 0;
        }
        if (num.intValue() == 0 && emojiUseHistory.size() >= 48) {
            ArrayList<String> arrayList = recentEmoji;
            emojiUseHistory.remove(arrayList.get(arrayList.size() - 1));
            ArrayList<String> arrayList2 = recentEmoji;
            arrayList2.set(arrayList2.size() - 1, str);
        }
        emojiUseHistory.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void removeRecentEmoji(String str) {
        emojiUseHistory.remove(str);
        recentEmoji.remove(str);
        if (emojiUseHistory.isEmpty() || recentEmoji.isEmpty()) {
            addRecentEmoji(DEFAULT_RECENT[0]);
        }
    }

    public static void sortEmoji() {
        recentEmoji.clear();
        for (Map.Entry<String, Integer> entry : emojiUseHistory.entrySet()) {
            recentEmoji.add(entry.getKey());
        }
        Collections.sort(recentEmoji, new Comparator() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$sortEmoji$2;
                lambda$sortEmoji$2 = Emoji.lambda$sortEmoji$2((String) obj, (String) obj2);
                return lambda$sortEmoji$2;
            }
        });
        while (recentEmoji.size() > 48) {
            ArrayList<String> arrayList = recentEmoji;
            arrayList.remove(arrayList.size() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortEmoji$2(String str, String str2) {
        Integer num = emojiUseHistory.get(str);
        Integer num2 = emojiUseHistory.get(str2);
        if (num == null) {
            num = 0;
        }
        if (num2 == null) {
            num2 = 0;
        }
        if (num.intValue() > num2.intValue()) {
            return -1;
        }
        return num.intValue() < num2.intValue() ? 1 : 0;
    }

    public static void saveRecentEmoji() {
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Integer> entry : emojiUseHistory.entrySet()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        globalEmojiSettings.edit().putString("emojis2", sb.toString()).commit();
    }

    public static void clearRecentEmoji() {
        MessagesController.getGlobalEmojiSettings().edit().putBoolean("filled_default", true).commit();
        emojiUseHistory.clear();
        recentEmoji.clear();
        saveRecentEmoji();
    }

    public static void loadRecentEmoji() {
        if (recentEmojiLoaded) {
            return;
        }
        recentEmojiLoaded = true;
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        try {
            emojiUseHistory.clear();
            if (globalEmojiSettings.contains("emojis")) {
                String string = globalEmojiSettings.getString("emojis", "");
                if (string != null && string.length() > 0) {
                    for (String str : string.split(",")) {
                        String[] split = str.split("=");
                        long longValue = Utilities.parseLong(split[0]).longValue();
                        StringBuilder sb = new StringBuilder();
                        for (int i = 0; i < 4; i++) {
                            sb.insert(0, (char) longValue);
                            longValue >>= 16;
                            if (longValue == 0) {
                                break;
                            }
                        }
                        if (sb.length() > 0) {
                            emojiUseHistory.put(sb.toString(), Utilities.parseInt((CharSequence) split[1]));
                        }
                    }
                }
                globalEmojiSettings.edit().remove("emojis").commit();
                saveRecentEmoji();
            } else {
                String string2 = globalEmojiSettings.getString("emojis2", "");
                if (string2 != null && string2.length() > 0) {
                    for (String str2 : string2.split(",")) {
                        String[] split2 = str2.split("=");
                        emojiUseHistory.put(split2[0], Utilities.parseInt((CharSequence) split2[1]));
                    }
                }
            }
            if (emojiUseHistory.isEmpty() && !globalEmojiSettings.getBoolean("filled_default", false)) {
                int i2 = 0;
                while (true) {
                    String[] strArr = DEFAULT_RECENT;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    emojiUseHistory.put(strArr[i2], Integer.valueOf(strArr.length - i2));
                    i2++;
                }
                globalEmojiSettings.edit().putBoolean("filled_default", true).commit();
                saveRecentEmoji();
            }
            sortEmoji();
        } catch (Exception e) {
            FileLog.m67e(e);
        }
        try {
            String string3 = globalEmojiSettings.getString(TtmlNode.ATTR_TTS_COLOR, "");
            if (string3 == null || string3.length() <= 0) {
                return;
            }
            for (String str3 : string3.split(",")) {
                String[] split3 = str3.split("=");
                emojiColor.put(split3[0], split3[1]);
            }
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
    }

    public static void saveEmojiColors() {
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : emojiColor.entrySet()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        globalEmojiSettings.edit().putString(TtmlNode.ATTR_TTS_COLOR, sb.toString()).commit();
    }
}
