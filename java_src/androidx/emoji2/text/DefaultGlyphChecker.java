package androidx.emoji2.text;

import android.os.Build;
import android.text.TextPaint;
import androidx.core.graphics.PaintCompat;
import androidx.emoji2.text.EmojiCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {
    private static final ThreadLocal<StringBuilder> sStringBuilder = new ThreadLocal<>();
    private final TextPaint mTextPaint;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultGlyphChecker() {
        TextPaint textPaint = new TextPaint();
        this.mTextPaint = textPaint;
        textPaint.setTextSize(10.0f);
    }

    @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
    public boolean hasGlyph(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23 || i3 <= i4) {
            StringBuilder stringBuilder = getStringBuilder();
            stringBuilder.setLength(0);
            while (i < i2) {
                stringBuilder.append(charSequence.charAt(i));
                i++;
            }
            return PaintCompat.hasGlyph(this.mTextPaint, stringBuilder.toString());
        }
        return false;
    }

    private static StringBuilder getStringBuilder() {
        ThreadLocal<StringBuilder> threadLocal = sStringBuilder;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        return threadLocal.get();
    }
}
