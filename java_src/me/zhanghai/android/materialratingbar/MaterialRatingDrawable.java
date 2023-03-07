package me.zhanghai.android.materialratingbar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.content.res.AppCompatResources;
import me.zhanghai.android.materialratingbar.internal.ThemeUtils;
/* loaded from: classes4.dex */
public class MaterialRatingDrawable extends LayerDrawable {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialRatingDrawable(android.content.Context r5, boolean r6) {
        /*
            r4 = this;
            r0 = 3
            android.graphics.drawable.Drawable[] r0 = new android.graphics.drawable.Drawable[r0]
            if (r6 == 0) goto L8
            int r1 = me.zhanghai.android.materialratingbar.R$drawable.mrb_star_icon_black_36dp
            goto La
        L8:
            int r1 = me.zhanghai.android.materialratingbar.R$drawable.mrb_star_border_icon_black_36dp
        La:
            if (r6 == 0) goto Lf
            int r2 = me.zhanghai.android.materialratingbar.R$attr.colorControlHighlight
            goto L11
        Lf:
            int r2 = me.zhanghai.android.materialratingbar.R$attr.colorControlNormal
        L11:
            android.graphics.drawable.Drawable r1 = createLayerDrawableWithTintAttrRes(r1, r2, r5)
            r2 = 0
            r0[r2] = r1
            if (r6 == 0) goto L21
            int r6 = me.zhanghai.android.materialratingbar.R$drawable.mrb_star_icon_black_36dp
            android.graphics.drawable.Drawable r6 = createClippedLayerDrawableWithTintColor(r6, r2, r5)
            goto L29
        L21:
            int r6 = me.zhanghai.android.materialratingbar.R$drawable.mrb_star_border_icon_black_36dp
            int r1 = me.zhanghai.android.materialratingbar.R$attr.colorControlActivated
            android.graphics.drawable.Drawable r6 = createClippedLayerDrawableWithTintAttrRes(r6, r1, r5)
        L29:
            r1 = 1
            r0[r1] = r6
            int r6 = me.zhanghai.android.materialratingbar.R$drawable.mrb_star_icon_black_36dp
            int r3 = me.zhanghai.android.materialratingbar.R$attr.colorControlActivated
            android.graphics.drawable.Drawable r5 = createClippedLayerDrawableWithTintAttrRes(r6, r3, r5)
            r6 = 2
            r0[r6] = r5
            r4.<init>(r0)
            r5 = 16908288(0x1020000, float:2.387723E-38)
            r4.setId(r2, r5)
            r5 = 16908303(0x102000f, float:2.387727E-38)
            r4.setId(r1, r5)
            r5 = 16908301(0x102000d, float:2.3877265E-38)
            r4.setId(r6, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: me.zhanghai.android.materialratingbar.MaterialRatingDrawable.<init>(android.content.Context, boolean):void");
    }

    private static Drawable createLayerDrawableWithTintColor(int i, int i2, Context context) {
        TileDrawable tileDrawable = new TileDrawable(AppCompatResources.getDrawable(context, i));
        tileDrawable.mutate();
        tileDrawable.setTint(i2);
        return tileDrawable;
    }

    private static Drawable createLayerDrawableWithTintAttrRes(int i, int i2, Context context) {
        return createLayerDrawableWithTintColor(i, ThemeUtils.getColorFromAttrRes(i2, context), context);
    }

    private static Drawable createClippedLayerDrawableWithTintColor(int i, int i2, Context context) {
        return new ClipDrawableCompat(createLayerDrawableWithTintColor(i, i2, context), 3, 1);
    }

    private static Drawable createClippedLayerDrawableWithTintAttrRes(int i, int i2, Context context) {
        return new ClipDrawableCompat(createLayerDrawableWithTintAttrRes(i, i2, context), 3, 1);
    }

    public float getTileRatio() {
        Drawable drawable = getTileDrawableByLayerId(16908301).getDrawable();
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    public void setStarCount(int i) {
        getTileDrawableByLayerId(16908288).setTileCount(i);
        getTileDrawableByLayerId(16908303).setTileCount(i);
        getTileDrawableByLayerId(16908301).setTileCount(i);
    }

    private TileDrawable getTileDrawableByLayerId(int i) {
        Drawable findDrawableByLayerId = findDrawableByLayerId(i);
        if (i != 16908288) {
            if (i == 16908301 || i == 16908303) {
                return (TileDrawable) ((ClipDrawableCompat) findDrawableByLayerId).getDrawable();
            }
            throw new RuntimeException();
        }
        return (TileDrawable) findDrawableByLayerId;
    }
}
