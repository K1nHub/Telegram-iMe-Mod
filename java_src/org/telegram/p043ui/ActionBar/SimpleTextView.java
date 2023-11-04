package org.telegram.p043ui.ActionBar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.EmptyStubSpan;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
/* renamed from: org.telegram.ui.ActionBar.SimpleTextView */
/* loaded from: classes5.dex */
public class SimpleTextView extends View {
    private boolean attachedToWindow;
    private boolean buildFullLayout;
    private boolean canHideRightDrawable;
    private int currentScrollDelay;
    private int drawablePadding;
    private boolean ellipsizeByGradient;
    private boolean ellipsizeByGradientLeft;
    private int ellipsizeByGradientWidthDp;
    private AnimatedEmojiSpan.EmojiGroupedSpans emojiStack;
    private Paint fadeEllpsizePaint;
    private int fadeEllpsizePaintWidth;
    private Paint fadePaint;
    private Paint fadePaintBack;
    private Layout firstLineLayout;
    private Boolean forceEllipsizeByGradientLeft;
    private float fullAlpha;
    private Layout fullLayout;
    private int fullLayoutAdditionalWidth;
    private float fullLayoutLeftCharactersOffset;
    private int fullLayoutLeftOffset;
    private int fullTextMaxLines;
    private int gravity;
    private long lastUpdateTime;
    private int lastWidth;
    private Layout layout;
    private Drawable leftDrawable;
    private int leftDrawableTopPadding;
    private Layout.Alignment mAlignment;
    private int maxLines;
    private boolean maybeClick;
    private int minWidth;
    private int minusWidth;
    private int offsetX;
    private int offsetY;
    private int paddingRight;
    private Layout partLayout;
    private Path path;
    private Drawable replacedDrawable;
    private String replacedText;
    private int replacingDrawableTextIndex;
    private float replacingDrawableTextOffset;
    private Drawable rightDrawable;
    private boolean rightDrawableHidden;
    private View.OnClickListener rightDrawableOnClickListener;
    private boolean rightDrawableOutside;
    private float rightDrawableScale;
    private int rightDrawableTopPadding;
    public int rightDrawableX;
    public int rightDrawableY;
    private boolean scrollNonFitText;
    private float scrollingOffset;
    private List<SpoilerEffect> spoilers;
    private Stack<SpoilerEffect> spoilersPool;
    private CharSequence text;
    private boolean textDoesNotFit;
    private int textHeight;
    private TextPaint textPaint;
    private int textWidth;
    private int totalWidth;
    private float touchDownX;
    private float touchDownY;
    private boolean usaAlphaForEmoji;
    private boolean wasLayout;
    private boolean widthWrapContent;
    private Drawable wrapBackgroundDrawable;

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public SimpleTextView(Context context) {
        super(context);
        this.gravity = 51;
        this.maxLines = 1;
        this.rightDrawableScale = 1.0f;
        this.drawablePadding = AndroidUtilities.m104dp(4);
        this.ellipsizeByGradientWidthDp = 16;
        this.fullTextMaxLines = 3;
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack<>();
        this.path = new Path();
        this.mAlignment = Layout.Alignment.ALIGN_NORMAL;
        this.textPaint = new TextPaint(1);
        setImportantForAccessibility(1);
    }

    public void setTextColor(int i) {
        this.textPaint.setColor(i);
        invalidate();
    }

    public void setLinkTextColor(int i) {
        this.textPaint.linkColor = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.emojiStack = AnimatedEmojiSpan.update(0, this, this.emojiStack, this.layout);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        AnimatedEmojiSpan.release(this, this.emojiStack);
        this.wasLayout = false;
    }

    public void setTextSize(int i) {
        float m104dp = AndroidUtilities.m104dp(i);
        if (m104dp == this.textPaint.getTextSize()) {
            return;
        }
        this.textPaint.setTextSize(m104dp);
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setBuildFullLayout(boolean z) {
        this.buildFullLayout = z;
    }

    public void setFullAlpha(float f) {
        this.fullAlpha = f;
        invalidate();
    }

    public float getFullAlpha() {
        return this.fullAlpha;
    }

    public void setScrollNonFitText(boolean z) {
        if (this.scrollNonFitText == z) {
            return;
        }
        this.scrollNonFitText = z;
        updateFadePaints();
        requestLayout();
    }

    public void setEllipsizeByGradient(boolean z) {
        setEllipsizeByGradient(z, (Boolean) null);
    }

    public void setEllipsizeByGradient(int i) {
        setEllipsizeByGradient(i, (Boolean) null);
    }

    public void setEllipsizeByGradient(boolean z, Boolean bool) {
        if (this.scrollNonFitText == z) {
            return;
        }
        this.ellipsizeByGradient = z;
        this.forceEllipsizeByGradientLeft = bool;
        updateFadePaints();
    }

    public void setEllipsizeByGradient(int i, Boolean bool) {
        setEllipsizeByGradient(true, bool);
        this.ellipsizeByGradientWidthDp = i;
        updateFadePaints();
    }

    public void setWidthWrapContent(boolean z) {
        this.widthWrapContent = z;
    }

    private void updateFadePaints() {
        if ((this.fadePaint == null || this.fadePaintBack == null) && this.scrollNonFitText) {
            Paint paint = new Paint();
            this.fadePaint = paint;
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(6), (float) BitmapDescriptorFactory.HUE_RED, new int[]{-1, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            this.fadePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            Paint paint2 = new Paint();
            this.fadePaintBack = paint2;
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(6), (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
        Boolean bool = this.forceEllipsizeByGradientLeft;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        if (!(this.fadeEllpsizePaint != null && this.fadeEllpsizePaintWidth == AndroidUtilities.m104dp(this.ellipsizeByGradientWidthDp) && this.ellipsizeByGradientLeft == booleanValue) && this.ellipsizeByGradient) {
            if (this.fadeEllpsizePaint == null) {
                this.fadeEllpsizePaint = new Paint();
            }
            this.ellipsizeByGradientLeft = booleanValue;
            if (booleanValue) {
                Paint paint3 = this.fadeEllpsizePaint;
                int m104dp = AndroidUtilities.m104dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = m104dp;
                paint3.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m104dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{-1, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            } else {
                Paint paint4 = this.fadeEllpsizePaint;
                int m104dp2 = AndroidUtilities.m104dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = m104dp2;
                paint4.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m104dp2, (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            }
            this.fadeEllpsizePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
    }

    public void setMaxLines(int i) {
        this.maxLines = i;
    }

    public void setGravity(int i) {
        this.gravity = i;
    }

    public void setTypeface(Typeface typeface) {
        this.textPaint.setTypeface(typeface);
    }

    public int getSideDrawablesSize() {
        Drawable drawable = this.leftDrawable;
        int intrinsicWidth = drawable != null ? 0 + drawable.getIntrinsicWidth() + this.drawablePadding : 0;
        Drawable drawable2 = this.rightDrawable;
        return drawable2 != null ? intrinsicWidth + ((int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding : intrinsicWidth;
    }

    public Paint getPaint() {
        return this.textPaint;
    }

    private void calcOffset(int i) {
        Layout layout = this.layout;
        if (layout == null) {
            return;
        }
        if (layout.getLineCount() > 0) {
            this.textWidth = (int) Math.ceil(this.layout.getLineWidth(0));
            Layout layout2 = this.fullLayout;
            if (layout2 != null) {
                this.textHeight = layout2.getLineBottom(layout2.getLineCount() - 1);
            } else if (this.maxLines > 1 && this.layout.getLineCount() > 0) {
                Layout layout3 = this.layout;
                this.textHeight = layout3.getLineBottom(layout3.getLineCount() - 1);
            } else {
                this.textHeight = this.layout.getLineBottom(0);
            }
            int i2 = this.gravity;
            if ((i2 & 7) == 1) {
                this.offsetX = ((i - this.textWidth) / 2) - ((int) this.layout.getLineLeft(0));
            } else if ((i2 & 7) == 3) {
                Layout layout4 = this.firstLineLayout;
                if (layout4 != null) {
                    this.offsetX = -((int) layout4.getLineLeft(0));
                } else {
                    this.offsetX = -((int) this.layout.getLineLeft(0));
                }
            } else if (this.layout.getLineLeft(0) == BitmapDescriptorFactory.HUE_RED) {
                Layout layout5 = this.firstLineLayout;
                if (layout5 != null) {
                    this.offsetX = (int) (i - layout5.getLineWidth(0));
                } else {
                    this.offsetX = i - this.textWidth;
                }
            } else {
                this.offsetX = -AndroidUtilities.m104dp(8);
            }
            this.offsetX += getPaddingLeft();
            this.textDoesNotFit = this.textWidth > i - this.paddingRight;
            Layout layout6 = this.fullLayout;
            if (layout6 != null && this.fullLayoutAdditionalWidth > 0) {
                this.fullLayoutLeftCharactersOffset = layout6.getPrimaryHorizontal(0) - this.firstLineLayout.getPrimaryHorizontal(0);
            }
        }
        int i3 = this.replacingDrawableTextIndex;
        if (i3 >= 0) {
            this.replacingDrawableTextOffset = this.layout.getPrimaryHorizontal(i3);
        } else {
            this.replacingDrawableTextOffset = BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean createLayout(int i) {
        Drawable drawable;
        int i2;
        int m104dp;
        int i3;
        int m104dp2;
        CharSequence charSequence = this.text;
        this.replacingDrawableTextIndex = -1;
        this.rightDrawableHidden = false;
        if (charSequence != null) {
            try {
                Drawable drawable2 = this.leftDrawable;
                int intrinsicWidth = drawable2 != null ? (i - drawable2.getIntrinsicWidth()) - this.drawablePadding : i;
                if (this.rightDrawable == null || this.rightDrawableOutside) {
                    i2 = 0;
                } else {
                    i2 = (int) (drawable.getIntrinsicWidth() * this.rightDrawableScale);
                    intrinsicWidth = (intrinsicWidth - i2) - this.drawablePadding;
                }
                SpannableStringBuilder spannableStringBuilder = charSequence;
                if (this.replacedText != null) {
                    spannableStringBuilder = charSequence;
                    if (this.replacedDrawable != null) {
                        int indexOf = charSequence.toString().indexOf(this.replacedText);
                        this.replacingDrawableTextIndex = indexOf;
                        if (indexOf >= 0) {
                            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
                            DialogCell.FixedWidthSpan fixedWidthSpan = new DialogCell.FixedWidthSpan(this.replacedDrawable.getIntrinsicWidth());
                            int i4 = this.replacingDrawableTextIndex;
                            valueOf.setSpan(fixedWidthSpan, i4, this.replacedText.length() + i4, 0);
                            spannableStringBuilder = valueOf;
                        } else {
                            intrinsicWidth = (intrinsicWidth - this.replacedDrawable.getIntrinsicWidth()) - this.drawablePadding;
                            spannableStringBuilder = charSequence;
                        }
                    }
                }
                if (this.canHideRightDrawable && i2 != 0 && !this.rightDrawableOutside && !spannableStringBuilder.equals(TextUtils.ellipsize(spannableStringBuilder, this.textPaint, intrinsicWidth, TextUtils.TruncateAt.END))) {
                    this.rightDrawableHidden = true;
                    intrinsicWidth = intrinsicWidth + i2 + this.drawablePadding;
                }
                int i5 = intrinsicWidth;
                if (this.buildFullLayout) {
                    CharSequence ellipsize = !this.ellipsizeByGradient ? TextUtils.ellipsize(spannableStringBuilder, this.textPaint, i5, TextUtils.TruncateAt.END) : spannableStringBuilder;
                    if (!this.ellipsizeByGradient && !ellipsize.equals(spannableStringBuilder)) {
                        StaticLayout createStaticLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, 0, spannableStringBuilder.length(), this.textPaint, i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5, this.fullTextMaxLines, false);
                        this.fullLayout = createStaticLayout;
                        if (createStaticLayout != null) {
                            int lineEnd = createStaticLayout.getLineEnd(0);
                            int lineStart = this.fullLayout.getLineStart(1);
                            CharSequence subSequence = spannableStringBuilder.subSequence(0, lineEnd);
                            SpannableStringBuilder valueOf2 = SpannableStringBuilder.valueOf(spannableStringBuilder);
                            valueOf2.setSpan(new EmptyStubSpan(), 0, lineStart, 0);
                            String subSequence2 = lineEnd < ellipsize.length() ? ellipsize.subSequence(lineEnd, ellipsize.length()) : "…";
                            this.firstLineLayout = new StaticLayout(ellipsize, 0, ellipsize.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.m104dp(2000) : AndroidUtilities.m104dp(8) + i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            StaticLayout staticLayout = new StaticLayout(subSequence, 0, subSequence.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.m104dp(2000) : AndroidUtilities.m104dp(8) + i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.layout = staticLayout;
                            String str = subSequence2;
                            if (staticLayout.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED) {
                                str = "\u200f" + ((Object) subSequence2);
                            }
                            CharSequence charSequence2 = str;
                            this.partLayout = new StaticLayout(charSequence2, 0, charSequence2.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.m104dp(2000) : AndroidUtilities.m104dp(8) + i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.fullLayout = StaticLayoutEx.createStaticLayout(valueOf2, 0, valueOf2.length(), this.textPaint, AndroidUtilities.m104dp(8) + i5 + this.fullLayoutAdditionalWidth, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5 + this.fullLayoutAdditionalWidth, this.fullTextMaxLines, false);
                        }
                    } else {
                        int length = ellipsize.length();
                        TextPaint textPaint = this.textPaint;
                        if (!this.scrollNonFitText && !this.ellipsizeByGradient) {
                            m104dp2 = AndroidUtilities.m104dp(8) + i5;
                            this.layout = new StaticLayout(ellipsize, 0, length, textPaint, m104dp2, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.fullLayout = null;
                            this.partLayout = null;
                            this.firstLineLayout = null;
                        }
                        m104dp2 = AndroidUtilities.m104dp(2000);
                        this.layout = new StaticLayout(ellipsize, 0, length, textPaint, m104dp2, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.fullLayout = null;
                        this.partLayout = null;
                        this.firstLineLayout = null;
                    }
                } else if (this.maxLines > 1) {
                    this.layout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, 0, spannableStringBuilder.length(), this.textPaint, i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5, this.maxLines, false);
                } else {
                    CharSequence charSequence3 = spannableStringBuilder;
                    if (!this.scrollNonFitText) {
                        charSequence3 = this.ellipsizeByGradient ? spannableStringBuilder : TextUtils.ellipsize(spannableStringBuilder, this.textPaint, i5, TextUtils.TruncateAt.END);
                    }
                    CharSequence charSequence4 = charSequence3;
                    int length2 = charSequence4.length();
                    TextPaint textPaint2 = this.textPaint;
                    if (!this.scrollNonFitText && !this.ellipsizeByGradient) {
                        m104dp = AndroidUtilities.m104dp(8) + i5;
                        this.layout = new StaticLayout(charSequence4, 0, length2, textPaint2, m104dp, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    }
                    m104dp = AndroidUtilities.m104dp(2000);
                    this.layout = new StaticLayout(charSequence4, 0, length2, textPaint2, m104dp, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
                this.spoilersPool.addAll(this.spoilers);
                this.spoilers.clear();
                Layout layout = this.layout;
                if (layout == null || !(layout.getText() instanceof Spannable)) {
                    i3 = i5;
                } else {
                    i3 = i5;
                    SpoilerEffect.addSpoilers(this, this.layout, -2, -2, this.spoilersPool, this.spoilers);
                }
                calcOffset(i3);
            } catch (Exception unused) {
            }
        } else {
            this.layout = null;
            this.textWidth = 0;
            this.textHeight = 0;
        }
        AnimatedEmojiSpan.release(this, this.emojiStack);
        if (this.attachedToWindow) {
            this.emojiStack = AnimatedEmojiSpan.update(0, this, this.emojiStack, this.layout);
        }
        invalidate();
        return true;
    }

    public void setAlignment(Layout.Alignment alignment) {
        this.mAlignment = alignment;
        requestLayout();
    }

    private Layout.Alignment getAlignment() {
        return this.mAlignment;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Drawable drawable;
        Drawable drawable2;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.lastWidth;
        int i4 = AndroidUtilities.displaySize.x;
        if (i3 != i4) {
            this.lastWidth = i4;
            this.scrollingOffset = BitmapDescriptorFactory.HUE_RED;
            this.currentScrollDelay = 500;
        }
        int i5 = 0;
        createLayout((((size - getPaddingLeft()) - getPaddingRight()) - this.minusWidth) - ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding));
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            size2 = getPaddingBottom() + getPaddingTop() + this.textHeight;
        }
        if (this.widthWrapContent) {
            int paddingLeft = getPaddingLeft() + this.textWidth + getPaddingRight() + this.minusWidth;
            if (this.rightDrawableOutside && (drawable = this.rightDrawable) != null) {
                i5 = drawable.getIntrinsicWidth() + this.drawablePadding;
            }
            size = Math.min(size, paddingLeft + i5);
        }
        setMeasuredDimension(size, size2);
        if ((this.gravity & 112) == 16) {
            this.offsetY = getPaddingTop() + ((((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - this.textHeight) / 2);
        } else {
            this.offsetY = getPaddingTop();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.wasLayout = true;
    }

    public int getTextWidth() {
        return this.textWidth;
    }

    public int getTextHeight() {
        return this.textHeight;
    }

    public void setLeftDrawableTopPadding(int i) {
        this.leftDrawableTopPadding = i;
    }

    public void setRightDrawableTopPadding(int i) {
        this.rightDrawableTopPadding = i;
    }

    public void setLeftDrawable(int i) {
        setLeftDrawable(i == 0 ? null : getContext().getResources().getDrawable(i));
    }

    public Drawable getLeftDrawable() {
        return this.leftDrawable;
    }

    public void setRightDrawable(int i) {
        setRightDrawable(i == 0 ? null : getContext().getResources().getDrawable(i));
    }

    public void setMinWidth(int i) {
        this.minWidth = i;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.maxLines > 1) {
            super.setBackgroundDrawable(drawable);
        } else {
            this.wrapBackgroundDrawable = drawable;
        }
    }

    @Override // android.view.View
    public Drawable getBackground() {
        Drawable drawable = this.wrapBackgroundDrawable;
        return drawable != null ? drawable : super.getBackground();
    }

    public void setLeftDrawable(Drawable drawable) {
        Drawable drawable2 = this.leftDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.leftDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.rightDrawable || drawable == this.leftDrawable || super.verifyDrawable(drawable);
    }

    public void replaceTextWithDrawable(Drawable drawable, String str) {
        Drawable drawable2 = this.replacedDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.replacedDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (!recreateLayoutMaybe()) {
            invalidate();
        }
        this.replacedText = str;
    }

    public void setMinusWidth(int i) {
        if (i == this.minusWidth) {
            return;
        }
        this.minusWidth = i;
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public Drawable getRightDrawable() {
        return this.rightDrawable;
    }

    public void setRightDrawable(Drawable drawable) {
        Drawable drawable2 = this.rightDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.rightDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setRightDrawableScale(float f) {
        this.rightDrawableScale = f;
    }

    public void setSideDrawablesColor(int i) {
        Theme.setDrawableColor(this.rightDrawable, i);
        Theme.setDrawableColor(this.leftDrawable, i);
    }

    public boolean setText(CharSequence charSequence) {
        return setText(charSequence, false);
    }

    public boolean setText(CharSequence charSequence, boolean z) {
        CharSequence charSequence2 = this.text;
        if (charSequence2 == null && charSequence == null) {
            return false;
        }
        if (z || charSequence2 == null || !charSequence2.equals(charSequence)) {
            this.text = charSequence;
            this.currentScrollDelay = 500;
            recreateLayoutMaybe();
            return true;
        }
        return false;
    }

    public void resetScrolling() {
        this.scrollingOffset = BitmapDescriptorFactory.HUE_RED;
    }

    public void copyScrolling(SimpleTextView simpleTextView) {
        this.scrollingOffset = simpleTextView.scrollingOffset;
    }

    public void setDrawablePadding(int i) {
        if (this.drawablePadding == i) {
            return;
        }
        this.drawablePadding = i;
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    private boolean recreateLayoutMaybe() {
        if (this.wasLayout && getMeasuredHeight() != 0 && !this.buildFullLayout) {
            boolean createLayout = createLayout(((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth);
            if ((this.gravity & 112) == 16) {
                this.offsetY = (getMeasuredHeight() - this.textHeight) / 2;
            } else {
                this.offsetY = getPaddingTop();
            }
            return createLayout;
        }
        requestLayout();
        return true;
    }

    public CharSequence getText() {
        CharSequence charSequence = this.text;
        return charSequence == null ? "" : charSequence;
    }

    public int getLineCount() {
        Layout layout = this.layout;
        int lineCount = layout != null ? 0 + layout.getLineCount() : 0;
        Layout layout2 = this.fullLayout;
        return layout2 != null ? lineCount + layout2.getLineCount() : lineCount;
    }

    public int getTextStartX() {
        int i = 0;
        if (this.layout == null) {
            return 0;
        }
        Drawable drawable = this.leftDrawable;
        if (drawable != null && (this.gravity & 7) == 3) {
            i = 0 + this.drawablePadding + drawable.getIntrinsicWidth();
        }
        Drawable drawable2 = this.replacedDrawable;
        if (drawable2 != null && this.replacingDrawableTextIndex < 0 && (this.gravity & 7) == 3) {
            i += this.drawablePadding + drawable2.getIntrinsicWidth();
        }
        return ((int) getX()) + this.offsetX + i;
    }

    public TextPaint getTextPaint() {
        return this.textPaint;
    }

    public int getTextStartY() {
        if (this.layout == null) {
            return 0;
        }
        return (int) getY();
    }

    public void setRightPadding(int i) {
        if (this.paddingRight != i) {
            this.paddingRight = i;
            int maxTextWidth = ((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth;
            Drawable drawable = this.leftDrawable;
            if (drawable != null) {
                maxTextWidth = (maxTextWidth - drawable.getIntrinsicWidth()) - this.drawablePadding;
            }
            int i2 = 0;
            Drawable drawable2 = this.rightDrawable;
            if (drawable2 != null && !this.rightDrawableOutside) {
                i2 = (int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale);
                maxTextWidth = (maxTextWidth - i2) - this.drawablePadding;
            }
            if (this.replacedText != null && this.replacedDrawable != null) {
                int indexOf = this.text.toString().indexOf(this.replacedText);
                this.replacingDrawableTextIndex = indexOf;
                if (indexOf < 0) {
                    maxTextWidth = (maxTextWidth - this.replacedDrawable.getIntrinsicWidth()) - this.drawablePadding;
                }
            }
            if (this.canHideRightDrawable && i2 != 0 && !this.rightDrawableOutside) {
                if (!this.text.equals(TextUtils.ellipsize(this.text, this.textPaint, maxTextWidth, TextUtils.TruncateAt.END))) {
                    this.rightDrawableHidden = true;
                    maxTextWidth = maxTextWidth + i2 + this.drawablePadding;
                }
            }
            calcOffset(maxTextWidth);
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        Drawable drawable;
        int paddingTop;
        int i2;
        float f;
        Drawable drawable2;
        int paddingTop2;
        int i3;
        int paddingTop3;
        int i4;
        int paddingTop4;
        int i5;
        int intrinsicHeight;
        int paddingTop5;
        int i6;
        super.onDraw(canvas);
        boolean z = this.scrollNonFitText && (this.textDoesNotFit || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED);
        int i7 = Integer.MIN_VALUE;
        if (z || this.ellipsizeByGradient) {
            i7 = canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
        }
        int i8 = i7;
        this.totalWidth = this.textWidth;
        if (this.leftDrawable != null) {
            int i9 = (int) (-this.scrollingOffset);
            int i10 = this.gravity;
            if ((i10 & 7) == 1) {
                i9 += this.offsetX;
            }
            if ((i10 & 112) == 16) {
                paddingTop5 = (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2;
                i6 = this.leftDrawableTopPadding;
            } else {
                paddingTop5 = getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2);
                i6 = this.leftDrawableTopPadding;
            }
            int i11 = paddingTop5 + i6;
            Drawable drawable3 = this.leftDrawable;
            drawable3.setBounds(i9, i11, drawable3.getIntrinsicWidth() + i9, this.leftDrawable.getIntrinsicHeight() + i11);
            this.leftDrawable.draw(canvas);
            int i12 = this.gravity;
            i = ((i12 & 7) == 3 || (i12 & 7) == 1) ? this.drawablePadding + this.leftDrawable.getIntrinsicWidth() + 0 : 0;
            this.totalWidth += this.drawablePadding + this.leftDrawable.getIntrinsicWidth();
        } else {
            i = 0;
        }
        Drawable drawable4 = this.replacedDrawable;
        if (drawable4 != null && this.replacedText != null) {
            int i13 = (int) ((-this.scrollingOffset) + this.replacingDrawableTextOffset);
            int i14 = this.gravity;
            if ((i14 & 7) == 1) {
                i13 += this.offsetX;
            }
            if ((i14 & 112) == 16) {
                intrinsicHeight = ((getMeasuredHeight() - this.replacedDrawable.getIntrinsicHeight()) / 2) + this.leftDrawableTopPadding;
            } else {
                intrinsicHeight = this.leftDrawableTopPadding + ((this.textHeight - drawable4.getIntrinsicHeight()) / 2);
            }
            Drawable drawable5 = this.replacedDrawable;
            drawable5.setBounds(i13, intrinsicHeight, drawable5.getIntrinsicWidth() + i13, this.replacedDrawable.getIntrinsicHeight() + intrinsicHeight);
            this.replacedDrawable.draw(canvas);
            if (this.replacingDrawableTextIndex < 0) {
                int i15 = this.gravity;
                if ((i15 & 7) == 3 || (i15 & 7) == 1) {
                    i += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
                }
                this.totalWidth += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
            }
        }
        int i16 = i;
        if (this.rightDrawable != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside) {
            int i17 = this.textWidth + i16 + this.drawablePadding + ((int) (-this.scrollingOffset));
            int i18 = this.gravity;
            if ((i18 & 7) == 1 || (i18 & 7) == 5) {
                i17 += this.offsetX;
            }
            int intrinsicWidth = (int) (drawable.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight2 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop4 = (getMeasuredHeight() - intrinsicHeight2) / 2;
                i5 = this.rightDrawableTopPadding;
            } else {
                paddingTop4 = getPaddingTop() + ((this.textHeight - intrinsicHeight2) / 2);
                i5 = this.rightDrawableTopPadding;
            }
            int i19 = paddingTop4 + i5;
            this.rightDrawable.setBounds(i17, i19, i17 + intrinsicWidth, i19 + intrinsicHeight2);
            this.rightDrawableX = i17 + (intrinsicWidth >> 1);
            this.rightDrawableY = i19 + (intrinsicHeight2 >> 1);
            this.rightDrawable.draw(canvas);
            this.totalWidth += this.drawablePadding + intrinsicWidth;
        }
        int m104dp = this.totalWidth + AndroidUtilities.m104dp(16);
        float f2 = this.scrollingOffset;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            if (this.leftDrawable != null) {
                int i20 = ((int) (-f2)) + m104dp;
                if ((this.gravity & 112) == 16) {
                    paddingTop3 = (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2;
                    i4 = this.leftDrawableTopPadding;
                } else {
                    paddingTop3 = getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2);
                    i4 = this.leftDrawableTopPadding;
                }
                int i21 = paddingTop3 + i4;
                Drawable drawable6 = this.leftDrawable;
                drawable6.setBounds(i20, i21, drawable6.getIntrinsicWidth() + i20, this.leftDrawable.getIntrinsicHeight() + i21);
                this.leftDrawable.draw(canvas);
            }
            if (this.rightDrawable != null && !this.rightDrawableOutside) {
                int intrinsicWidth2 = (int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight3 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                int i22 = this.textWidth + i16 + this.drawablePadding + ((int) (-this.scrollingOffset)) + m104dp;
                if ((this.gravity & 112) == 16) {
                    paddingTop2 = (getMeasuredHeight() - intrinsicHeight3) / 2;
                    i3 = this.rightDrawableTopPadding;
                } else {
                    paddingTop2 = getPaddingTop() + ((this.textHeight - intrinsicHeight3) / 2);
                    i3 = this.rightDrawableTopPadding;
                }
                int i23 = paddingTop2 + i3;
                this.rightDrawable.setBounds(i22, i23, intrinsicWidth2 + i22, intrinsicHeight3 + i23);
                this.rightDrawable.draw(canvas);
            }
        }
        if (this.layout != null) {
            if (this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                canvas.save();
                int maxTextWidth = getMaxTextWidth() - this.paddingRight;
                Drawable drawable7 = this.rightDrawable;
                canvas.clipRect(0, 0, maxTextWidth - AndroidUtilities.m104dp((drawable7 == null || (drawable7 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? 0 : 2), getMeasuredHeight());
            }
            Emoji.emojiDrawingUseAlpha = this.usaAlphaForEmoji;
            if (this.wrapBackgroundDrawable != null) {
                int i24 = this.textWidth;
                int i25 = ((int) ((this.offsetX + i16) - this.scrollingOffset)) + (i24 / 2);
                int max = Math.max(i24 + getPaddingLeft() + getPaddingRight(), this.minWidth);
                int i26 = i25 - (max / 2);
                this.wrapBackgroundDrawable.setBounds(i26, 0, max + i26, getMeasuredHeight());
                this.wrapBackgroundDrawable.draw(canvas);
            }
            if (this.offsetX + i16 != 0 || this.offsetY != 0 || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate((this.offsetX + i16) - this.scrollingOffset, this.offsetY);
            }
            drawLayout(canvas);
            if (this.partLayout != null && this.fullAlpha < 1.0f) {
                int alpha = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) ((1.0f - this.fullAlpha) * 255.0f));
                canvas.save();
                if (this.partLayout.getText().length() == 1) {
                    f = this.fullTextMaxLines == 1 ? AndroidUtilities.m105dp(0.5f) : AndroidUtilities.m104dp(4);
                } else {
                    f = 0.0f;
                }
                if (this.layout.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED) {
                    canvas.translate((-this.layout.getLineWidth(0)) + f, BitmapDescriptorFactory.HUE_RED);
                } else {
                    canvas.translate(this.layout.getLineWidth(0) - f, BitmapDescriptorFactory.HUE_RED);
                }
                float f3 = this.fullAlpha;
                canvas.translate(((-this.fullLayoutLeftOffset) * f3) + (this.fullLayoutLeftCharactersOffset * f3), BitmapDescriptorFactory.HUE_RED);
                this.partLayout.draw(canvas);
                canvas.restore();
                this.textPaint.setAlpha(alpha);
            }
            if (this.fullLayout != null && this.fullAlpha > BitmapDescriptorFactory.HUE_RED) {
                int alpha2 = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) (this.fullAlpha * 255.0f));
                float f4 = this.fullAlpha;
                float f5 = this.fullLayoutLeftCharactersOffset;
                canvas.translate((((-this.fullLayoutLeftOffset) * f4) + (f4 * f5)) - f5, BitmapDescriptorFactory.HUE_RED);
                this.fullLayout.draw(canvas);
                this.textPaint.setAlpha(alpha2);
            }
            if (this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.translate(m104dp, BitmapDescriptorFactory.HUE_RED);
                drawLayout(canvas);
            }
            if (this.offsetX + i16 != 0 || this.offsetY != 0 || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.restore();
            }
            if (z) {
                if (this.scrollingOffset < AndroidUtilities.m104dp(10)) {
                    this.fadePaint.setAlpha((int) ((this.scrollingOffset / AndroidUtilities.m104dp(10)) * 255.0f));
                } else if (this.scrollingOffset > (this.totalWidth + AndroidUtilities.m104dp(16)) - AndroidUtilities.m104dp(10)) {
                    this.fadePaint.setAlpha((int) ((1.0f - ((this.scrollingOffset - ((this.totalWidth + AndroidUtilities.m104dp(16)) - AndroidUtilities.m104dp(10))) / AndroidUtilities.m104dp(10))) * 255.0f));
                } else {
                    this.fadePaint.setAlpha(255);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(6), getMeasuredHeight(), this.fadePaint);
                canvas.save();
                canvas.translate((getMaxTextWidth() - this.paddingRight) - AndroidUtilities.m104dp(6), BitmapDescriptorFactory.HUE_RED);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(6), getMeasuredHeight(), this.fadePaintBack);
                canvas.restore();
            } else if (this.ellipsizeByGradient && this.textDoesNotFit && this.fadeEllpsizePaint != null) {
                canvas.save();
                updateFadePaints();
                if (!this.ellipsizeByGradientLeft) {
                    int maxTextWidth2 = (getMaxTextWidth() - this.paddingRight) - this.fadeEllpsizePaintWidth;
                    Drawable drawable8 = this.rightDrawable;
                    canvas.translate(maxTextWidth2 - AndroidUtilities.m104dp((drawable8 == null || (drawable8 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? 0 : 2), BitmapDescriptorFactory.HUE_RED);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.fadeEllpsizePaintWidth, getMeasuredHeight(), this.fadeEllpsizePaint);
                canvas.restore();
            }
            updateScrollAnimation();
            Emoji.emojiDrawingUseAlpha = true;
            if (this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                canvas.restore();
            }
        }
        if (z || this.ellipsizeByGradient) {
            canvas.restoreToCount(i8);
        }
        if (this.rightDrawable == null || !this.rightDrawableOutside) {
            return;
        }
        int i27 = i16 + this.textWidth + this.drawablePadding;
        float f6 = this.scrollingOffset;
        int min = Math.min(i27 + (f6 == BitmapDescriptorFactory.HUE_RED ? -m104dp : (int) (-f6)) + m104dp, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
        int intrinsicWidth3 = (int) (this.rightDrawable.getIntrinsicWidth() * this.rightDrawableScale);
        int intrinsicHeight4 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
        if ((this.gravity & 112) == 16) {
            paddingTop = (getMeasuredHeight() - intrinsicHeight4) / 2;
            i2 = this.rightDrawableTopPadding;
        } else {
            paddingTop = getPaddingTop() + ((this.textHeight - intrinsicHeight4) / 2);
            i2 = this.rightDrawableTopPadding;
        }
        int i28 = paddingTop + i2;
        this.rightDrawable.setBounds(min, i28, min + intrinsicWidth3, i28 + intrinsicHeight4);
        this.rightDrawableX = min + (intrinsicWidth3 >> 1);
        this.rightDrawableY = i28 + (intrinsicHeight4 >> 1);
        this.rightDrawable.draw(canvas);
    }

    public int getRightDrawableX() {
        return this.rightDrawableX;
    }

    public int getRightDrawableY() {
        return this.rightDrawableY;
    }

    private int getMaxTextWidth() {
        Drawable drawable;
        return getMeasuredWidth() - ((!this.rightDrawableOutside || (drawable = this.rightDrawable) == null) ? 0 : drawable.getIntrinsicWidth() + this.drawablePadding);
    }

    private void drawLayout(Canvas canvas) {
        if (this.fullAlpha > BitmapDescriptorFactory.HUE_RED && this.fullLayoutLeftOffset != 0) {
            canvas.save();
            float f = this.fullAlpha;
            canvas.translate(((-this.fullLayoutLeftOffset) * f) + (this.fullLayoutLeftCharactersOffset * f), BitmapDescriptorFactory.HUE_RED);
            canvas.save();
            clipOutSpoilers(canvas);
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.emojiStack;
            if (emojiGroupedSpans != null) {
                emojiGroupedSpans.clearPositions();
            }
            this.layout.draw(canvas);
            canvas.restore();
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            drawSpoilers(canvas);
            canvas.restore();
            return;
        }
        canvas.save();
        clipOutSpoilers(canvas);
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2 = this.emojiStack;
        if (emojiGroupedSpans2 != null) {
            emojiGroupedSpans2.clearPositions();
        }
        this.layout.draw(canvas);
        canvas.restore();
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        drawSpoilers(canvas);
    }

    private void clipOutSpoilers(Canvas canvas) {
        this.path.rewind();
        for (SpoilerEffect spoilerEffect : this.spoilers) {
            Rect bounds = spoilerEffect.getBounds();
            this.path.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        canvas.clipPath(this.path, Region.Op.DIFFERENCE);
    }

    private void drawSpoilers(Canvas canvas) {
        for (SpoilerEffect spoilerEffect : this.spoilers) {
            spoilerEffect.draw(canvas);
        }
    }

    private void updateScrollAnimation() {
        if (this.scrollNonFitText) {
            if (this.textDoesNotFit || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.lastUpdateTime;
                if (j > 17) {
                    j = 17;
                }
                int i = this.currentScrollDelay;
                if (i > 0) {
                    this.currentScrollDelay = (int) (i - j);
                } else {
                    int m104dp = this.totalWidth + AndroidUtilities.m104dp(16);
                    float f = 50.0f;
                    if (this.scrollingOffset < AndroidUtilities.m104dp(100)) {
                        f = ((this.scrollingOffset / AndroidUtilities.m104dp(100)) * 20.0f) + 30.0f;
                    } else if (this.scrollingOffset >= m104dp - AndroidUtilities.m104dp(100)) {
                        f = 50.0f - (((this.scrollingOffset - (m104dp - AndroidUtilities.m104dp(100))) / AndroidUtilities.m104dp(100)) * 20.0f);
                    }
                    float m105dp = this.scrollingOffset + ((((float) j) / 1000.0f) * AndroidUtilities.m105dp(f));
                    this.scrollingOffset = m105dp;
                    this.lastUpdateTime = elapsedRealtime;
                    if (m105dp > m104dp) {
                        this.scrollingOffset = BitmapDescriptorFactory.HUE_RED;
                        this.currentScrollDelay = 500;
                    }
                }
                invalidate();
            }
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = this.leftDrawable;
        if (drawable == drawable2) {
            invalidate(drawable2.getBounds());
            return;
        }
        Drawable drawable3 = this.rightDrawable;
        if (drawable == drawable3) {
            invalidate(drawable3.getBounds());
            return;
        }
        Drawable drawable4 = this.replacedDrawable;
        if (drawable == drawable4) {
            invalidate(drawable4.getBounds());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(true);
        accessibilityNodeInfo.setClassName("android.widget.TextView");
        accessibilityNodeInfo.setText(this.text);
    }

    public void setFullLayoutAdditionalWidth(int i, int i2) {
        if (this.fullLayoutAdditionalWidth == i && this.fullLayoutLeftOffset == i2) {
            return;
        }
        this.fullLayoutAdditionalWidth = i;
        this.fullLayoutLeftOffset = i2;
        createLayout(((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth);
    }

    public void setFullTextMaxLines(int i) {
        this.fullTextMaxLines = i;
    }

    public int getTextColor() {
        return this.textPaint.getColor();
    }

    public void setCanHideRightDrawable(boolean z) {
        this.canHideRightDrawable = z;
    }

    public void setRightDrawableOutside(boolean z) {
        this.rightDrawableOutside = z;
    }

    public boolean getRightDrawableOutside() {
        return this.rightDrawableOutside;
    }

    public void setRightDrawableOnClick(View.OnClickListener onClickListener) {
        this.rightDrawableOnClickListener = onClickListener;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.rightDrawableOnClickListener != null && this.rightDrawable != null) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.rightDrawableX - AndroidUtilities.m104dp(16), this.rightDrawableY - AndroidUtilities.m104dp(16), this.rightDrawableX + AndroidUtilities.m104dp(16), this.rightDrawableY + AndroidUtilities.m104dp(16));
            if (motionEvent.getAction() == 0 && rectF.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                this.maybeClick = true;
                this.touchDownX = motionEvent.getX();
                this.touchDownY = motionEvent.getY();
                getParent().requestDisallowInterceptTouchEvent(true);
            } else if (motionEvent.getAction() == 2 && this.maybeClick) {
                if (Math.abs(motionEvent.getX() - this.touchDownX) >= AndroidUtilities.touchSlop || Math.abs(motionEvent.getY() - this.touchDownY) >= AndroidUtilities.touchSlop) {
                    this.maybeClick = false;
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (this.maybeClick && motionEvent.getAction() == 1) {
                    this.rightDrawableOnClickListener.onClick(this);
                }
                this.maybeClick = false;
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.onTouchEvent(motionEvent) || this.maybeClick;
    }
}
