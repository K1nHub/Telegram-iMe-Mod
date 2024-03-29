package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetShortName;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_stickerPack;
/* renamed from: org.telegram.ui.Components.Paint.Views.LocationMarker */
/* loaded from: classes6.dex */
public class LocationMarker extends View {
    private final RectF bounds;
    public final float density;
    private TLRPC$Document flagDocument;
    private final ImageReceiver flagImageReceiver;
    private boolean forceEmoji;

    /* renamed from: h */
    private float f1882h;
    private boolean hasFlag;
    private final Drawable icon;
    private StaticLayout layout;
    private float layoutLeft;
    private float layoutWidth;
    private int maxWidth;
    private final Paint outlinePaint;
    private final RectF padding;
    public final int padx;
    public final int pady;
    private boolean relayout;
    private String text;
    private final TextPaint textPaint;
    private float textScale;

    /* renamed from: w */
    private float f1883w;

    public LocationMarker(Context context, float f) {
        super(context);
        this.text = "";
        this.padding = new RectF(4.0f, 4.33f, 7.66f, 3.0f);
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        this.outlinePaint = new Paint(1);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.flagImageReceiver = imageReceiver;
        this.textScale = 1.0f;
        this.bounds = new RectF();
        new Path();
        this.density = f;
        imageReceiver.setCrossfadeWithOldImage(true);
        this.padx = (int) (3.0f * f);
        this.pady = (int) (1.0f * f);
        this.icon = context.getResources().getDrawable(C3632R.C3634drawable.map_pin3).mutate();
        textPaint.setTextSize(f * 24.0f);
        textPaint.setTypeface(AndroidUtilities.getTypeface("fonts/rcondensedbold.ttf"));
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
        this.relayout = true;
    }

    public void forceEmoji() {
        this.forceEmoji = true;
        this.relayout = true;
        requestLayout();
    }

    private Drawable getEmojiThumb(String str) {
        final Drawable emojiBigDrawable = Emoji.getEmojiBigDrawable(str);
        if (emojiBigDrawable == null) {
            return null;
        }
        return new Drawable(this) { // from class: org.telegram.ui.Components.Paint.Views.LocationMarker.1
            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.save();
                if (emojiBigDrawable.getBounds() != null) {
                    canvas.scale(0.8333333f, 0.8333333f, emojiBigDrawable.getBounds().centerX(), emojiBigDrawable.getBounds().centerY());
                }
                emojiBigDrawable.draw(canvas);
                canvas.restore();
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
                emojiBigDrawable.setAlpha(i);
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
                emojiBigDrawable.setColorFilter(colorFilter);
            }

            @Override // android.graphics.drawable.Drawable
            public void setBounds(Rect rect) {
                emojiBigDrawable.setBounds(rect);
            }

            @Override // android.graphics.drawable.Drawable
            public void setBounds(int i, int i2, int i3, int i4) {
                emojiBigDrawable.setBounds(i, i2, i3, i4);
            }

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return emojiBigDrawable.getOpacity();
            }
        };
    }

    public void setCountryCodeEmoji(int i, final String str) {
        if (TextUtils.isEmpty(str)) {
            this.hasFlag = false;
            this.flagImageReceiver.clearImage();
        } else {
            this.hasFlag = true;
            this.flagDocument = null;
            TLRPC$TL_inputStickerSetShortName tLRPC$TL_inputStickerSetShortName = new TLRPC$TL_inputStickerSetShortName();
            tLRPC$TL_inputStickerSetShortName.short_name = "StaticEmoji";
            MediaDataController.getInstance(i).getStickerSet(tLRPC$TL_inputStickerSetShortName, 0, false, new Utilities.Callback() { // from class: org.telegram.ui.Components.Paint.Views.LocationMarker$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    LocationMarker.this.lambda$setCountryCodeEmoji$0(str, (TLRPC$TL_messages_stickerSet) obj);
                }
            });
            this.flagImageReceiver.setImage(ImageLocation.getForDocument(this.flagDocument), "80_80", getEmojiThumb(str), null, null, 0);
        }
        this.relayout = true;
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCountryCodeEmoji$0(String str, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        TLRPC$Document findDocument = findDocument(tLRPC$TL_messages_stickerSet, str);
        this.flagDocument = findDocument;
        this.flagImageReceiver.setImage(ImageLocation.getForDocument(findDocument), "80_80", getEmojiThumb(str), null, null, 0);
    }

    private TLRPC$Document findDocument(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, String str) {
        if (tLRPC$TL_messages_stickerSet != null && tLRPC$TL_messages_stickerSet.packs != null && tLRPC$TL_messages_stickerSet.documents != null) {
            for (int i = 0; i < tLRPC$TL_messages_stickerSet.packs.size(); i++) {
                TLRPC$TL_stickerPack tLRPC$TL_stickerPack = tLRPC$TL_messages_stickerSet.packs.get(i);
                if (tLRPC$TL_stickerPack.emoticon.contains(str) && !tLRPC$TL_stickerPack.documents.isEmpty()) {
                    long longValue = tLRPC$TL_stickerPack.documents.get(0).longValue();
                    for (int i2 = 0; i2 < tLRPC$TL_messages_stickerSet.documents.size(); i2++) {
                        if (tLRPC$TL_messages_stickerSet.documents.get(i2).f1610id == longValue) {
                            return tLRPC$TL_messages_stickerSet.documents.get(i2);
                        }
                    }
                    continue;
                }
            }
        }
        return null;
    }

    public TLRPC$Document getCountryCodeEmojiDocument() {
        return this.flagDocument;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.flagImageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.flagImageReceiver.onDetachedFromWindow();
    }

    public void setText(String str) {
        this.text = str;
        this.relayout = true;
        requestLayout();
    }

    public String getText() {
        return this.text;
    }

    public void setType(int i, int i2) {
        if (i == 0) {
            this.outlinePaint.setColor(i2);
            int i3 = AndroidUtilities.computePerceivedBrightness(i2) < 0.721f ? -1 : -16777216;
            this.textPaint.setColor(i3);
            this.icon.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
        } else if (i == 1) {
            this.outlinePaint.setColor(-16777216);
            this.textPaint.setColor(-1);
            this.icon.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        } else if (i == 2) {
            this.outlinePaint.setColor(1275068416);
            this.textPaint.setColor(-1);
            this.icon.setColorFilter(null);
        } else {
            this.outlinePaint.setColor(-1);
            this.textPaint.setColor(-16777216);
            this.icon.setColorFilter(null);
        }
        invalidate();
    }

    private void setupLayout() {
        if (this.relayout) {
            float measureText = this.textPaint.measureText(this.text);
            int i = this.maxWidth;
            int i2 = this.padx;
            float f = (i - i2) - i2;
            RectF rectF = this.padding;
            float f2 = 2.25f;
            float f3 = f - (((((rectF.left + ((this.hasFlag || this.forceEmoji) ? 2.25f : 0.0f)) + 21.33f) + 3.25f) + rectF.right) * this.density);
            float min = Math.min(1.0f, f3 / measureText);
            this.textScale = min;
            if (min < 0.4f) {
                String str = this.text;
                TextPaint textPaint = this.textPaint;
                this.layout = new StaticLayout(str, textPaint, HintView2.cutInFancyHalf(str, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.layout = new StaticLayout(this.text, this.textPaint, (int) Math.ceil(measureText), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            this.layoutWidth = BitmapDescriptorFactory.HUE_RED;
            this.layoutLeft = Float.MAX_VALUE;
            for (int i3 = 0; i3 < this.layout.getLineCount(); i3++) {
                this.layoutWidth = Math.max(this.layoutWidth, this.layout.getLineWidth(i3));
                this.layoutLeft = Math.min(this.layoutLeft, this.layout.getLineLeft(i3));
            }
            if (this.layout.getLineCount() > 2) {
                this.textScale = 0.3f;
            } else {
                this.textScale = Math.min(1.0f, f3 / this.layoutWidth);
            }
            RectF rectF2 = this.padding;
            float f4 = rectF2.left;
            if (!this.hasFlag && !this.forceEmoji) {
                f2 = 0.0f;
            }
            float f5 = f4 + f2 + 21.33f + 3.25f + rectF2.right;
            float f6 = this.density;
            this.f1883w = (f5 * f6) + (this.layoutWidth * this.textScale);
            this.f1882h = ((rectF2.top + rectF2.bottom) * f6) + Math.max(f6 * 21.33f, this.layout.getHeight() * this.textScale);
            this.relayout = false;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setupLayout();
        setMeasuredDimension(this.padx + Math.round(this.f1883w) + this.padx, this.pady + Math.round(this.f1882h) + this.pady);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        setupLayout();
        if (this.layout == null) {
            return;
        }
        RectF rectF = this.bounds;
        int i = this.padx;
        int i2 = this.pady;
        rectF.set(i, i2, i + this.f1883w, i2 + this.f1882h);
        RectF rectF2 = this.bounds;
        float f = this.f1882h;
        canvas.drawRoundRect(rectF2, f * 0.2f, f * 0.2f, this.outlinePaint);
        float f2 = 2.25f;
        if (this.hasFlag) {
            ImageReceiver imageReceiver = this.flagImageReceiver;
            float f3 = this.density;
            imageReceiver.setImageCoords(this.padx + ((this.padding.left + 2.25f) * f3), this.pady + ((this.f1882h - (f3 * 21.33f)) / 2.0f), f3 * 21.33f, f3 * 21.33f);
            canvas.save();
            canvas.scale(1.2f, 1.2f, this.flagImageReceiver.getCenterX(), this.flagImageReceiver.getCenterY());
            this.flagImageReceiver.draw(canvas);
            canvas.restore();
        } else if (!this.forceEmoji) {
            Drawable drawable = this.icon;
            int i3 = this.padx;
            float f4 = this.padding.left;
            float f5 = this.density;
            int i4 = this.pady;
            float f6 = this.f1882h;
            drawable.setBounds(((int) (f4 * f5)) + i3, ((int) ((f6 - (f5 * 21.33f)) / 2.0f)) + i4, i3 + ((int) ((f4 + 21.33f) * f5)), i4 + ((int) ((f6 + (f5 * 21.33f)) / 2.0f)));
            this.icon.draw(canvas);
        }
        canvas.save();
        float f7 = this.padx;
        float f8 = this.padding.left;
        if (!this.hasFlag && !this.forceEmoji) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        canvas.translate(f7 + ((f8 + f2 + 21.33f + 3.25f) * this.density), this.pady + (this.f1882h / 2.0f));
        float f9 = this.textScale;
        canvas.scale(f9, f9);
        canvas.translate(-this.layoutLeft, (-this.layout.getHeight()) / 2.0f);
        this.layout.draw(canvas);
        canvas.restore();
    }

    public void getEmojiBounds(RectF rectF) {
        int i = this.padx;
        float f = this.padding.left;
        float f2 = this.density;
        int i2 = this.pady;
        float f3 = this.f1882h;
        rectF.set(i + ((f + 2.25f) * f2), i2 + ((f3 - (f2 * 21.33f)) / 2.0f), i + ((f + 2.25f + 21.33f) * f2), i2 + ((f3 + (f2 * 21.33f)) / 2.0f));
    }
}
