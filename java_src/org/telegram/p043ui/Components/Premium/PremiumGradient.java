package org.telegram.p043ui.Components.Premium;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.Premium.PremiumGradient */
/* loaded from: classes6.dex */
public class PremiumGradient {
    private static PremiumGradient instance;
    private int lastStarColor;
    Paint lockedPremiumPaint;
    private final PremiumGradientTools mainGradient;
    private final Paint mainGradientPaint;
    public Drawable premiumStarColoredDrawable;
    public Drawable premiumStarDrawableMini;
    public InternalDrawable premiumStarMenuDrawable;
    public InternalDrawable premiumStarMenuDrawable2;

    public static PremiumGradient getInstance() {
        if (instance == null) {
            instance = new PremiumGradient();
        }
        return instance;
    }

    private PremiumGradient() {
        PremiumGradientTools premiumGradientTools = new PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, Theme.key_premiumGradient3, Theme.key_premiumGradient4);
        this.mainGradient = premiumGradientTools;
        this.mainGradientPaint = premiumGradientTools.paint;
        Context context = ApplicationLoader.applicationContext;
        int i = C3632R.C3634drawable.msg_premium_liststar;
        this.premiumStarDrawableMini = ContextCompat.getDrawable(context, i).mutate();
        this.premiumStarMenuDrawable = createGradientDrawable(ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3632R.C3634drawable.msg_settings_premium));
        this.premiumStarMenuDrawable2 = createGradientDrawable(ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3632R.C3634drawable.msg_premium_normal));
        this.premiumStarColoredDrawable = ContextCompat.getDrawable(ApplicationLoader.applicationContext, i).mutate();
        premiumGradientTools.chekColors();
        checkIconColors();
    }

    public InternalDrawable createGradientDrawable(Drawable drawable) {
        return createGradientDrawable(drawable, this.mainGradient);
    }

    public InternalDrawable createGradientDrawable(Drawable drawable, PremiumGradientTools premiumGradientTools) {
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int minimumHeight = drawable.getMinimumHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, minimumHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, minimumHeight);
        drawable.draw(canvas);
        premiumGradientTools.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        premiumGradientTools.gradientMatrix(0, 0, intrinsicWidth, minimumHeight, -intrinsicWidth, BitmapDescriptorFactory.HUE_RED);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, intrinsicWidth, minimumHeight, premiumGradientTools.paint);
        premiumGradientTools.paint.setXfermode(null);
        return new InternalDrawable(drawable, createBitmap, premiumGradientTools.colors);
    }

    public void checkIconColors() {
        int i = Theme.key_chats_verifiedBackground;
        if (Theme.getColor(i) != this.lastStarColor) {
            this.lastStarColor = Theme.getColor(i);
            this.premiumStarDrawableMini.setColorFilter(new PorterDuffColorFilter(this.lastStarColor, PorterDuff.Mode.MULTIPLY));
        }
        this.premiumStarMenuDrawable = checkColors(this.premiumStarMenuDrawable);
        this.premiumStarMenuDrawable2 = checkColors(this.premiumStarMenuDrawable2);
    }

    private InternalDrawable checkColors(InternalDrawable internalDrawable) {
        int[] iArr = this.mainGradient.colors;
        int i = iArr[0];
        int[] iArr2 = internalDrawable.colors;
        return (i == iArr2[0] && iArr[1] == iArr2[1] && iArr[2] == iArr2[2] && iArr[3] == iArr2[3]) ? internalDrawable : createGradientDrawable(internalDrawable.originDrawable);
    }

    public void updateMainGradientMatrix(int i, int i2, int i3, int i4, float f, float f2) {
        this.mainGradient.gradientMatrix(i, i2, i3, i4, f, f2);
    }

    public Paint getPremiumLocakedPaint() {
        if (this.lockedPremiumPaint == null) {
            this.lockedPremiumPaint = new Paint(1);
        }
        this.lockedPremiumPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
        return this.lockedPremiumPaint;
    }

    /* renamed from: org.telegram.ui.Components.Premium.PremiumGradient$InternalDrawable */
    /* loaded from: classes6.dex */
    public static class InternalDrawable extends BitmapDrawable {
        public int[] colors;
        Drawable originDrawable;

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(int i, PorterDuff.Mode mode) {
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public InternalDrawable(Drawable drawable, Bitmap bitmap, int[] iArr) {
            super(ApplicationLoader.applicationContext.getResources(), bitmap);
            this.originDrawable = drawable;
            int[] iArr2 = new int[iArr.length];
            this.colors = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        }
    }

    public Paint getMainGradientPaint() {
        if (MessagesController.getInstance(UserConfig.selectedAccount).premiumLocked) {
            if (this.lockedPremiumPaint == null) {
                this.lockedPremiumPaint = new Paint(1);
            }
            this.lockedPremiumPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
            return this.lockedPremiumPaint;
        }
        return this.mainGradientPaint;
    }

    /* renamed from: org.telegram.ui.Components.Premium.PremiumGradient$PremiumGradientTools */
    /* loaded from: classes6.dex */
    public static class PremiumGradientTools {
        final int colorKey1;
        final int colorKey2;
        final int colorKey3;
        final int colorKey4;
        final int colorKey5;
        final int[] colors;

        /* renamed from: cx */
        public float f1906cx;

        /* renamed from: cy */
        public float f1907cy;
        public boolean exactly;
        Matrix matrix;
        public final Paint paint;
        private final Theme.ResourcesProvider resourcesProvider;
        Shader shader;

        /* renamed from: x1 */
        public float f1908x1;

        /* renamed from: x2 */
        public float f1909x2;

        /* renamed from: y1 */
        public float f1910y1;

        /* renamed from: y2 */
        public float f1911y2;

        public PremiumGradientTools(int i, int i2, int i3, int i4) {
            this(i, i2, i3, i4, -1);
        }

        public PremiumGradientTools(int i, int i2, int i3, int i4, int i5) {
            this(i, i2, i3, i4, -1, null);
        }

        public PremiumGradientTools(int i, int i2, int i3, int i4, int i5, Theme.ResourcesProvider resourcesProvider) {
            this.f1906cx = 0.5f;
            this.f1907cy = 0.5f;
            this.matrix = new Matrix();
            this.paint = new Paint(1);
            this.colors = new int[5];
            this.f1908x1 = BitmapDescriptorFactory.HUE_RED;
            this.f1910y1 = 1.0f;
            this.f1909x2 = 1.5f;
            this.f1911y2 = BitmapDescriptorFactory.HUE_RED;
            this.resourcesProvider = resourcesProvider;
            this.colorKey1 = i;
            this.colorKey2 = i2;
            this.colorKey3 = i3;
            this.colorKey4 = i4;
            this.colorKey5 = i5;
        }

        public void gradientMatrix(int i, int i2, int i3, int i4, float f, float f2) {
            chekColors();
            if (this.exactly) {
                this.matrix.reset();
                this.matrix.postScale((i3 - i) / 100.0f, (i4 - i2) / 100.0f, this.f1906cx * 100.0f, this.f1907cy * 100.0f);
                this.matrix.postTranslate(f, f2);
                this.shader.setLocalMatrix(this.matrix);
                return;
            }
            int i5 = i4 - i2;
            int i6 = i5 + i5;
            chekColors();
            this.matrix.reset();
            this.matrix.postScale((i3 - i) / 100.0f, i6 / 100.0f, 75.0f, 50.0f);
            this.matrix.postTranslate(f, (-i6) + f2);
            this.shader.setLocalMatrix(this.matrix);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void chekColors() {
            int color = Theme.getColor(this.colorKey1, this.resourcesProvider);
            int color2 = Theme.getColor(this.colorKey2, this.resourcesProvider);
            int i = this.colorKey3;
            int color3 = i < 0 ? 0 : Theme.getColor(i, this.resourcesProvider);
            int i2 = this.colorKey4;
            int color4 = i2 < 0 ? 0 : Theme.getColor(i2, this.resourcesProvider);
            int i3 = this.colorKey5;
            int color5 = i3 < 0 ? 0 : Theme.getColor(i3, this.resourcesProvider);
            int[] iArr = this.colors;
            if (iArr[0] == color && iArr[1] == color2 && iArr[2] == color3 && iArr[3] == color4 && iArr[4] == color5) {
                return;
            }
            iArr[0] = color;
            iArr[1] = color2;
            iArr[2] = color3;
            iArr[3] = color4;
            iArr[4] = color5;
            if (color3 == 0) {
                float f = this.f1908x1 * 100.0f;
                float f2 = this.f1910y1 * 100.0f;
                float f3 = this.f1909x2 * 100.0f;
                float f4 = this.f1911y2 * 100.0f;
                int[] iArr2 = this.colors;
                this.shader = new LinearGradient(f, f2, f3, f4, new int[]{iArr2[0], iArr2[1]}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            } else if (color4 == 0) {
                float f5 = this.f1908x1 * 100.0f;
                float f6 = this.f1910y1 * 100.0f;
                float f7 = this.f1909x2 * 100.0f;
                float f8 = this.f1911y2 * 100.0f;
                int[] iArr3 = this.colors;
                this.shader = new LinearGradient(f5, f6, f7, f8, new int[]{iArr3[0], iArr3[1], iArr3[2]}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
            } else if (color5 == 0) {
                float f9 = this.f1908x1 * 100.0f;
                float f10 = this.f1910y1 * 100.0f;
                float f11 = this.f1909x2 * 100.0f;
                float f12 = this.f1911y2 * 100.0f;
                int[] iArr4 = this.colors;
                this.shader = new LinearGradient(f9, f10, f11, f12, new int[]{iArr4[0], iArr4[1], iArr4[2], iArr4[3]}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 0.78f, 1.0f}, Shader.TileMode.CLAMP);
            } else {
                float f13 = this.f1908x1 * 100.0f;
                float f14 = this.f1910y1 * 100.0f;
                float f15 = this.f1909x2 * 100.0f;
                float f16 = this.f1911y2 * 100.0f;
                int[] iArr5 = this.colors;
                this.shader = new LinearGradient(f13, f14, f15, f16, new int[]{iArr5[0], iArr5[1], iArr5[2], iArr5[3], iArr5[4]}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.425f, 0.655f, 0.78f, 1.0f}, Shader.TileMode.CLAMP);
            }
            this.shader.setLocalMatrix(this.matrix);
            this.paint.setShader(this.shader);
        }

        public void gradientMatrixLinear(float f, float f2) {
            chekColors();
            this.matrix.reset();
            this.matrix.postScale(1.0f, f / 100.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, f2);
            this.shader.setLocalMatrix(this.matrix);
        }
    }
}
