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
    private Drawable rightDrawable2;
    private boolean rightDrawableHidden;
    private boolean rightDrawableInside;
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

    /* renamed from: org.telegram.ui.ActionBar.SimpleTextView$PressableDrawable */
    /* loaded from: classes5.dex */
    public interface PressableDrawable {
        void setPressed(boolean z);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public SimpleTextView(Context context) {
        super(context);
        this.gravity = 51;
        this.maxLines = 1;
        this.rightDrawableScale = 1.0f;
        this.drawablePadding = AndroidUtilities.m107dp(4);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.emojiStack = AnimatedEmojiSpan.update(0, this, this.emojiStack, this.layout);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        AnimatedEmojiSpan.release(this, this.emojiStack);
        this.wasLayout = false;
    }

    public void setTextSize(int i) {
        float m107dp = AndroidUtilities.m107dp(i);
        if (m107dp == this.textPaint.getTextSize()) {
            return;
        }
        this.textPaint.setTextSize(m107dp);
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
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(6), (float) BitmapDescriptorFactory.HUE_RED, new int[]{-1, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            this.fadePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            Paint paint2 = new Paint();
            this.fadePaintBack = paint2;
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(6), (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
        Boolean bool = this.forceEllipsizeByGradientLeft;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        if (!(this.fadeEllpsizePaint != null && this.fadeEllpsizePaintWidth == AndroidUtilities.m107dp(this.ellipsizeByGradientWidthDp) && this.ellipsizeByGradientLeft == booleanValue) && this.ellipsizeByGradient) {
            if (this.fadeEllpsizePaint == null) {
                this.fadeEllpsizePaint = new Paint();
            }
            this.ellipsizeByGradientLeft = booleanValue;
            if (booleanValue) {
                Paint paint3 = this.fadeEllpsizePaint;
                int m107dp = AndroidUtilities.m107dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = m107dp;
                paint3.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m107dp, (float) BitmapDescriptorFactory.HUE_RED, new int[]{-1, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            } else {
                Paint paint4 = this.fadeEllpsizePaint;
                int m107dp2 = AndroidUtilities.m107dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = m107dp2;
                paint4.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m107dp2, (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
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
        if (drawable2 != null) {
            intrinsicWidth += ((int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
        }
        Drawable drawable3 = this.rightDrawable2;
        return drawable3 != null ? intrinsicWidth + ((int) (drawable3.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding : intrinsicWidth;
    }

    public Paint getPaint() {
        return this.textPaint;
    }

    private void calcOffset(int i) {
        int i2;
        Drawable drawable;
        Drawable drawable2;
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
            int i3 = this.gravity;
            if ((i3 & 7) == 1) {
                this.offsetX = ((i - this.textWidth) / 2) - ((int) this.layout.getLineLeft(0));
            } else if ((i3 & 7) == 3) {
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
                this.offsetX = -AndroidUtilities.m107dp(8);
            }
            this.offsetX += getPaddingLeft();
            if (this.rightDrawableInside) {
                i2 = (this.rightDrawable == null || this.rightDrawableOutside) ? 0 : ((int) (drawable.getIntrinsicWidth() * this.rightDrawableScale)) + 0;
                if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                    i2 += (int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale);
                }
            } else {
                i2 = 0;
            }
            this.textDoesNotFit = this.textWidth + i2 > i - this.paddingRight;
            Layout layout6 = this.fullLayout;
            if (layout6 != null && this.fullLayoutAdditionalWidth > 0) {
                this.fullLayoutLeftCharactersOffset = layout6.getPrimaryHorizontal(0) - this.firstLineLayout.getPrimaryHorizontal(0);
            }
        }
        int i4 = this.replacingDrawableTextIndex;
        if (i4 >= 0) {
            this.replacingDrawableTextOffset = this.layout.getPrimaryHorizontal(i4);
        } else {
            this.replacingDrawableTextOffset = BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean createLayout(int i) {
        int i2;
        int m107dp;
        int i3;
        int m107dp2;
        Drawable drawable;
        Drawable drawable2;
        CharSequence charSequence = this.text;
        this.replacingDrawableTextIndex = -1;
        this.rightDrawableHidden = false;
        if (charSequence != null) {
            try {
                Drawable drawable3 = this.leftDrawable;
                int intrinsicWidth = drawable3 != null ? (i - drawable3.getIntrinsicWidth()) - this.drawablePadding : i;
                if (this.rightDrawableInside) {
                    i2 = 0;
                } else {
                    if (this.rightDrawable == null || this.rightDrawableOutside) {
                        i2 = 0;
                    } else {
                        i2 = ((int) (drawable.getIntrinsicWidth() * this.rightDrawableScale)) + 0;
                        intrinsicWidth = (intrinsicWidth - i2) - this.drawablePadding;
                    }
                    if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                        i2 += (int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale);
                        intrinsicWidth = (intrinsicWidth - i2) - this.drawablePadding;
                    }
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
                        StaticLayout createStaticLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, this.textPaint, i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5, this.fullTextMaxLines, false);
                        this.fullLayout = createStaticLayout;
                        if (createStaticLayout != null) {
                            int lineEnd = createStaticLayout.getLineEnd(0);
                            int lineStart = this.fullLayout.getLineStart(1);
                            CharSequence subSequence = spannableStringBuilder.subSequence(0, lineEnd);
                            SpannableStringBuilder valueOf2 = SpannableStringBuilder.valueOf(spannableStringBuilder);
                            valueOf2.setSpan(new EmptyStubSpan(), 0, lineStart, 0);
                            String subSequence2 = lineEnd < ellipsize.length() ? ellipsize.subSequence(lineEnd, ellipsize.length()) : "…";
                            this.firstLineLayout = new StaticLayout(ellipsize, 0, ellipsize.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.m107dp(2000) : AndroidUtilities.m107dp(8) + i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            StaticLayout staticLayout = new StaticLayout(subSequence, 0, subSequence.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.m107dp(2000) : AndroidUtilities.m107dp(8) + i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.layout = staticLayout;
                            String str = subSequence2;
                            if (staticLayout.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED) {
                                str = "\u200f" + ((Object) subSequence2);
                            }
                            CharSequence charSequence2 = str;
                            this.partLayout = new StaticLayout(charSequence2, 0, charSequence2.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.m107dp(2000) : AndroidUtilities.m107dp(8) + i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.fullLayout = StaticLayoutEx.createStaticLayout(valueOf2, this.textPaint, AndroidUtilities.m107dp(8) + i5 + this.fullLayoutAdditionalWidth, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5 + this.fullLayoutAdditionalWidth, this.fullTextMaxLines, false);
                        }
                    } else {
                        int length = ellipsize.length();
                        TextPaint textPaint = this.textPaint;
                        if (!this.scrollNonFitText && !this.ellipsizeByGradient) {
                            m107dp2 = AndroidUtilities.m107dp(8) + i5;
                            this.layout = new StaticLayout(ellipsize, 0, length, textPaint, m107dp2, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.fullLayout = null;
                            this.partLayout = null;
                            this.firstLineLayout = null;
                        }
                        m107dp2 = AndroidUtilities.m107dp(2000);
                        this.layout = new StaticLayout(ellipsize, 0, length, textPaint, m107dp2, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.fullLayout = null;
                        this.partLayout = null;
                        this.firstLineLayout = null;
                    }
                } else if (this.maxLines > 1) {
                    this.layout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, this.textPaint, i5, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i5, this.maxLines, false);
                } else {
                    CharSequence charSequence3 = spannableStringBuilder;
                    if (!this.scrollNonFitText) {
                        charSequence3 = this.ellipsizeByGradient ? spannableStringBuilder : TextUtils.ellipsize(spannableStringBuilder, this.textPaint, i5, TextUtils.TruncateAt.END);
                    }
                    CharSequence charSequence4 = charSequence3;
                    int length2 = charSequence4.length();
                    TextPaint textPaint2 = this.textPaint;
                    if (!this.scrollNonFitText && !this.ellipsizeByGradient) {
                        m107dp = AndroidUtilities.m107dp(8) + i5;
                        this.layout = new StaticLayout(charSequence4, 0, length2, textPaint2, m107dp, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    }
                    m107dp = AndroidUtilities.m107dp(2000);
                    this.layout = new StaticLayout(charSequence4, 0, length2, textPaint2, m107dp, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
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
        Drawable drawable3;
        Drawable drawable4;
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
        createLayout(((((size - getPaddingLeft()) - getPaddingRight()) - this.minusWidth) - ((!this.rightDrawableOutside || (drawable4 = this.rightDrawable) == null) ? 0 : drawable4.getIntrinsicWidth() + this.drawablePadding)) - ((!this.rightDrawableOutside || (drawable3 = this.rightDrawable2) == null) ? 0 : drawable3.getIntrinsicWidth() + this.drawablePadding));
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            size2 = getPaddingBottom() + getPaddingTop() + this.textHeight;
        }
        if (this.widthWrapContent) {
            int paddingLeft = getPaddingLeft() + this.textWidth + getPaddingRight() + this.minusWidth + ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding);
            if (this.rightDrawableOutside && (drawable = this.rightDrawable2) != null) {
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
        int i = this.textWidth;
        if (this.rightDrawableInside) {
            Drawable drawable = this.rightDrawable;
            int intrinsicWidth = drawable != null ? (int) (drawable.getIntrinsicWidth() * this.rightDrawableScale) : 0;
            Drawable drawable2 = this.rightDrawable2;
            r2 = (drawable2 != null ? (int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale) : 0) + intrinsicWidth;
        }
        return i + r2;
    }

    public int getRightDrawableWidth() {
        Drawable drawable = this.rightDrawable;
        if (drawable == null) {
            return 0;
        }
        return (int) (this.drawablePadding + (drawable.getIntrinsicWidth() * this.rightDrawableScale));
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
        return drawable == this.rightDrawable || drawable == this.rightDrawable2 || drawable == this.leftDrawable || super.verifyDrawable(drawable);
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

    public void setRightDrawable2(Drawable drawable) {
        Drawable drawable2 = this.rightDrawable2;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.rightDrawable2 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public Drawable getRightDrawable2() {
        return this.rightDrawable2;
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
            if (!this.rightDrawableInside) {
                Drawable drawable2 = this.rightDrawable;
                if (drawable2 != null && !this.rightDrawableOutside) {
                    i2 = (int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale);
                    maxTextWidth = (maxTextWidth - i2) - this.drawablePadding;
                }
                Drawable drawable3 = this.rightDrawable2;
                if (drawable3 != null && !this.rightDrawableOutside) {
                    i2 = (int) (drawable3.getIntrinsicWidth() * this.rightDrawableScale);
                    maxTextWidth = (maxTextWidth - i2) - this.drawablePadding;
                }
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
        Drawable drawable2;
        int paddingTop;
        int i2;
        int paddingTop2;
        Drawable drawable3;
        Drawable drawable4;
        int paddingTop3;
        int paddingTop4;
        float f;
        Drawable drawable5;
        Drawable drawable6;
        Drawable drawable7;
        int paddingTop5;
        int paddingTop6;
        int paddingTop7;
        Drawable drawable8;
        int paddingTop8;
        int paddingTop9;
        int i3;
        int intrinsicHeight;
        int paddingTop10;
        int i4;
        super.onDraw(canvas);
        boolean z = this.scrollNonFitText && (this.textDoesNotFit || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED);
        int i5 = Integer.MIN_VALUE;
        if (z || this.ellipsizeByGradient) {
            i5 = canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
        }
        int i6 = i5;
        this.totalWidth = this.textWidth;
        if (this.leftDrawable != null) {
            int i7 = (int) (-this.scrollingOffset);
            int i8 = this.gravity;
            if ((i8 & 7) == 1) {
                i7 += this.offsetX;
            }
            if ((i8 & 112) == 16) {
                paddingTop10 = (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2;
                i4 = this.leftDrawableTopPadding;
            } else {
                paddingTop10 = getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2);
                i4 = this.leftDrawableTopPadding;
            }
            int i9 = paddingTop10 + i4;
            Drawable drawable9 = this.leftDrawable;
            drawable9.setBounds(i7, i9, drawable9.getIntrinsicWidth() + i7, this.leftDrawable.getIntrinsicHeight() + i9);
            this.leftDrawable.draw(canvas);
            int i10 = this.gravity;
            i = ((i10 & 7) == 3 || (i10 & 7) == 1) ? this.drawablePadding + this.leftDrawable.getIntrinsicWidth() + 0 : 0;
            this.totalWidth += this.drawablePadding + this.leftDrawable.getIntrinsicWidth();
        } else {
            i = 0;
        }
        Drawable drawable10 = this.replacedDrawable;
        if (drawable10 != null && this.replacedText != null) {
            int i11 = (int) ((-this.scrollingOffset) + this.replacingDrawableTextOffset);
            int i12 = this.gravity;
            if ((i12 & 7) == 1) {
                i11 += this.offsetX;
            }
            if ((i12 & 112) == 16) {
                intrinsicHeight = ((getMeasuredHeight() - this.replacedDrawable.getIntrinsicHeight()) / 2) + this.leftDrawableTopPadding;
            } else {
                intrinsicHeight = this.leftDrawableTopPadding + ((this.textHeight - drawable10.getIntrinsicHeight()) / 2);
            }
            Drawable drawable11 = this.replacedDrawable;
            drawable11.setBounds(i11, intrinsicHeight, drawable11.getIntrinsicWidth() + i11, this.replacedDrawable.getIntrinsicHeight() + intrinsicHeight);
            this.replacedDrawable.draw(canvas);
            if (this.replacingDrawableTextIndex < 0) {
                int i13 = this.gravity;
                if ((i13 & 7) == 3 || (i13 & 7) == 1) {
                    i += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
                }
                this.totalWidth += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
            }
        }
        int i14 = i;
        if (this.rightDrawable != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && !this.rightDrawableInside) {
            int i15 = this.textWidth + i14 + this.drawablePadding + ((int) (-this.scrollingOffset));
            int i16 = this.gravity;
            if ((i16 & 7) == 1 || (i16 & 7) == 5) {
                i15 += this.offsetX;
            }
            int intrinsicWidth = (int) (drawable.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight2 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop9 = (getMeasuredHeight() - intrinsicHeight2) / 2;
                i3 = this.rightDrawableTopPadding;
            } else {
                paddingTop9 = getPaddingTop() + ((this.textHeight - intrinsicHeight2) / 2);
                i3 = this.rightDrawableTopPadding;
            }
            int i17 = paddingTop9 + i3;
            this.rightDrawable.setBounds(i15, i17, i15 + intrinsicWidth, i17 + intrinsicHeight2);
            this.rightDrawableX = i15 + (intrinsicWidth >> 1);
            this.rightDrawableY = i17 + (intrinsicHeight2 >> 1);
            this.rightDrawable.draw(canvas);
            this.totalWidth += this.drawablePadding + intrinsicWidth;
        }
        if (this.rightDrawable2 != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && !this.rightDrawableInside) {
            int i18 = this.textWidth + i14 + this.drawablePadding + ((int) (-this.scrollingOffset));
            if (this.rightDrawable != null) {
                i18 += ((int) (drawable8.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
            }
            int i19 = this.gravity;
            if ((i19 & 7) == 1 || (i19 & 7) == 5) {
                i18 += this.offsetX;
            }
            int intrinsicWidth2 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight3 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop8 = ((getMeasuredHeight() - intrinsicHeight3) / 2) + this.rightDrawableTopPadding;
            } else {
                paddingTop8 = getPaddingTop() + ((this.textHeight - intrinsicHeight3) / 2) + this.rightDrawableTopPadding;
            }
            this.rightDrawable2.setBounds(i18, paddingTop8, i18 + intrinsicWidth2, intrinsicHeight3 + paddingTop8);
            this.rightDrawable2.draw(canvas);
            this.totalWidth += this.drawablePadding + intrinsicWidth2;
        }
        int m107dp = this.totalWidth + AndroidUtilities.m107dp(16);
        float f2 = this.scrollingOffset;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            if (this.leftDrawable != null) {
                int i20 = ((int) (-f2)) + m107dp;
                if ((this.gravity & 112) == 16) {
                    paddingTop7 = ((getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2) + this.leftDrawableTopPadding;
                } else {
                    paddingTop7 = getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2) + this.leftDrawableTopPadding;
                }
                Drawable drawable12 = this.leftDrawable;
                drawable12.setBounds(i20, paddingTop7, drawable12.getIntrinsicWidth() + i20, this.leftDrawable.getIntrinsicHeight() + paddingTop7);
                this.leftDrawable.draw(canvas);
            }
            if (this.rightDrawable != null && !this.rightDrawableOutside) {
                int intrinsicWidth3 = (int) (drawable5.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight4 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                int i21 = this.textWidth + i14 + this.drawablePadding + ((int) (-this.scrollingOffset)) + m107dp;
                if ((this.gravity & 112) == 16) {
                    paddingTop6 = ((getMeasuredHeight() - intrinsicHeight4) / 2) + this.rightDrawableTopPadding;
                } else {
                    paddingTop6 = getPaddingTop() + ((this.textHeight - intrinsicHeight4) / 2) + this.rightDrawableTopPadding;
                }
                this.rightDrawable.setBounds(i21, paddingTop6, intrinsicWidth3 + i21, intrinsicHeight4 + paddingTop6);
                this.rightDrawable.draw(canvas);
            }
            if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                int intrinsicWidth4 = (int) (drawable6.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight5 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
                int i22 = this.textWidth + i14 + this.drawablePadding + ((int) (-this.scrollingOffset)) + m107dp;
                if (this.rightDrawable != null) {
                    i22 += ((int) (drawable7.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
                }
                if ((this.gravity & 112) == 16) {
                    paddingTop5 = ((getMeasuredHeight() - intrinsicHeight5) / 2) + this.rightDrawableTopPadding;
                } else {
                    paddingTop5 = getPaddingTop() + ((this.textHeight - intrinsicHeight5) / 2) + this.rightDrawableTopPadding;
                }
                this.rightDrawable2.setBounds(i22, paddingTop5, intrinsicWidth4 + i22, intrinsicHeight5 + paddingTop5);
                this.rightDrawable2.draw(canvas);
            }
        }
        if (this.layout != null) {
            if (this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                canvas.save();
                int maxTextWidth = getMaxTextWidth() - this.paddingRight;
                Drawable drawable13 = this.rightDrawable;
                canvas.clipRect(0, 0, maxTextWidth - AndroidUtilities.m107dp((drawable13 == null || (drawable13 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? 0 : 2), getMeasuredHeight());
            }
            Emoji.emojiDrawingUseAlpha = this.usaAlphaForEmoji;
            if (this.wrapBackgroundDrawable != null) {
                int i23 = this.textWidth;
                int i24 = ((int) ((this.offsetX + i14) - this.scrollingOffset)) + (i23 / 2);
                int max = Math.max(i23 + getPaddingLeft() + getPaddingRight(), this.minWidth);
                int i25 = i24 - (max / 2);
                this.wrapBackgroundDrawable.setBounds(i25, 0, max + i25, getMeasuredHeight());
                this.wrapBackgroundDrawable.draw(canvas);
            }
            if (this.offsetX + i14 != 0 || this.offsetY != 0 || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate((this.offsetX + i14) - this.scrollingOffset, this.offsetY);
            }
            drawLayout(canvas);
            if (this.partLayout != null && this.fullAlpha < 1.0f) {
                int alpha = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) ((1.0f - this.fullAlpha) * 255.0f));
                canvas.save();
                if (this.partLayout.getText().length() == 1) {
                    f = this.fullTextMaxLines == 1 ? AndroidUtilities.m108dp(0.5f) : AndroidUtilities.m107dp(4);
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
                canvas.translate(m107dp, BitmapDescriptorFactory.HUE_RED);
                drawLayout(canvas);
            }
            if (this.offsetX + i14 != 0 || this.offsetY != 0 || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.restore();
            }
            if (this.rightDrawable != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && this.rightDrawableInside) {
                int i26 = this.textWidth + i14 + this.drawablePadding + ((int) (-this.scrollingOffset));
                int i27 = this.gravity;
                if ((i27 & 7) == 1 || (i27 & 7) == 5) {
                    i26 += this.offsetX;
                }
                int intrinsicWidth5 = (int) (drawable3.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight6 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                if ((this.gravity & 112) == 16) {
                    paddingTop4 = ((getMeasuredHeight() - intrinsicHeight6) / 2) + this.rightDrawableTopPadding;
                } else {
                    paddingTop4 = this.rightDrawableTopPadding + getPaddingTop() + ((this.textHeight - intrinsicHeight6) / 2);
                }
                this.rightDrawable.setBounds(i26, paddingTop4, i26 + intrinsicWidth5, paddingTop4 + intrinsicHeight6);
                this.rightDrawableX = i26 + (intrinsicWidth5 >> 1);
                this.rightDrawableY = paddingTop4 + (intrinsicHeight6 >> 1);
                this.rightDrawable.draw(canvas);
                this.totalWidth += this.drawablePadding + intrinsicWidth5;
            }
            if (this.rightDrawable2 != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && this.rightDrawableInside) {
                int i28 = this.textWidth + i14 + this.drawablePadding + ((int) (-this.scrollingOffset));
                if (this.rightDrawable != null) {
                    i28 += ((int) (drawable4.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
                }
                int i29 = this.gravity;
                if ((i29 & 7) == 1 || (i29 & 7) == 5) {
                    i28 += this.offsetX;
                }
                int intrinsicWidth6 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight7 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
                if ((this.gravity & 112) == 16) {
                    paddingTop3 = ((getMeasuredHeight() - intrinsicHeight7) / 2) + this.rightDrawableTopPadding;
                } else {
                    paddingTop3 = getPaddingTop() + ((this.textHeight - intrinsicHeight7) / 2) + this.rightDrawableTopPadding;
                }
                this.rightDrawable2.setBounds(i28, paddingTop3, i28 + intrinsicWidth6, intrinsicHeight7 + paddingTop3);
                this.rightDrawable2.draw(canvas);
                this.totalWidth += this.drawablePadding + intrinsicWidth6;
            }
            if (z) {
                if (this.scrollingOffset < AndroidUtilities.m107dp(10)) {
                    this.fadePaint.setAlpha((int) ((this.scrollingOffset / AndroidUtilities.m107dp(10)) * 255.0f));
                } else if (this.scrollingOffset > (this.totalWidth + AndroidUtilities.m107dp(16)) - AndroidUtilities.m107dp(10)) {
                    this.fadePaint.setAlpha((int) ((1.0f - ((this.scrollingOffset - ((this.totalWidth + AndroidUtilities.m107dp(16)) - AndroidUtilities.m107dp(10))) / AndroidUtilities.m107dp(10))) * 255.0f));
                } else {
                    this.fadePaint.setAlpha(255);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(6), getMeasuredHeight(), this.fadePaint);
                canvas.save();
                canvas.translate((getMaxTextWidth() - this.paddingRight) - AndroidUtilities.m107dp(6), BitmapDescriptorFactory.HUE_RED);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(6), getMeasuredHeight(), this.fadePaintBack);
                canvas.restore();
            } else if (this.ellipsizeByGradient && this.textDoesNotFit && this.fadeEllpsizePaint != null) {
                canvas.save();
                updateFadePaints();
                if (!this.ellipsizeByGradientLeft) {
                    int maxTextWidth2 = (getMaxTextWidth() - this.paddingRight) - this.fadeEllpsizePaintWidth;
                    Drawable drawable14 = this.rightDrawable;
                    canvas.translate(maxTextWidth2 - AndroidUtilities.m107dp((drawable14 == null || (drawable14 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? 0 : 2), BitmapDescriptorFactory.HUE_RED);
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
            canvas.restoreToCount(i6);
        }
        if (this.rightDrawable != null && this.rightDrawableOutside) {
            int i30 = this.textWidth + i14 + this.drawablePadding;
            float f6 = this.scrollingOffset;
            int min = Math.min(i30 + (f6 == BitmapDescriptorFactory.HUE_RED ? -m107dp : (int) (-f6)) + m107dp, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
            int intrinsicWidth7 = (int) (this.rightDrawable.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight8 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            if ((this.gravity & 112) == 16) {
                paddingTop2 = ((getMeasuredHeight() - intrinsicHeight8) / 2) + this.rightDrawableTopPadding;
            } else {
                paddingTop2 = getPaddingTop() + ((this.textHeight - intrinsicHeight8) / 2) + this.rightDrawableTopPadding;
            }
            this.rightDrawable.setBounds(min, paddingTop2, min + intrinsicWidth7, paddingTop2 + intrinsicHeight8);
            this.rightDrawableX = min + (intrinsicWidth7 >> 1);
            this.rightDrawableY = paddingTop2 + (intrinsicHeight8 >> 1);
            this.rightDrawable.draw(canvas);
        }
        if (this.rightDrawable2 == null || !this.rightDrawableOutside) {
            return;
        }
        int i31 = i14 + this.textWidth + this.drawablePadding;
        float f7 = this.scrollingOffset;
        int min2 = Math.min(i31 + (f7 == BitmapDescriptorFactory.HUE_RED ? -m107dp : (int) (-f7)) + m107dp, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
        if (this.rightDrawable != null) {
            min2 += ((int) (drawable2.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
        }
        int intrinsicWidth8 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
        int intrinsicHeight9 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
        if ((this.gravity & 112) == 16) {
            paddingTop = (getMeasuredHeight() - intrinsicHeight9) / 2;
            i2 = this.rightDrawableTopPadding;
        } else {
            paddingTop = getPaddingTop() + ((this.textHeight - intrinsicHeight9) / 2);
            i2 = this.rightDrawableTopPadding;
        }
        int i32 = paddingTop + i2;
        this.rightDrawable2.setBounds(min2, i32, intrinsicWidth8 + min2, intrinsicHeight9 + i32);
        this.rightDrawable2.draw(canvas);
    }

    public int getRightDrawableX() {
        return this.rightDrawableX;
    }

    public int getRightDrawableY() {
        return this.rightDrawableY;
    }

    private int getMaxTextWidth() {
        Drawable drawable;
        Drawable drawable2;
        int i = 0;
        int measuredWidth = getMeasuredWidth() - ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding);
        if (this.rightDrawableOutside && (drawable = this.rightDrawable2) != null) {
            i = this.drawablePadding + drawable.getIntrinsicWidth();
        }
        return measuredWidth - i;
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
                    int m107dp = this.totalWidth + AndroidUtilities.m107dp(16);
                    float f = 50.0f;
                    if (this.scrollingOffset < AndroidUtilities.m107dp(100)) {
                        f = ((this.scrollingOffset / AndroidUtilities.m107dp(100)) * 20.0f) + 30.0f;
                    } else if (this.scrollingOffset >= m107dp - AndroidUtilities.m107dp(100)) {
                        f = 50.0f - (((this.scrollingOffset - (m107dp - AndroidUtilities.m107dp(100))) / AndroidUtilities.m107dp(100)) * 20.0f);
                    }
                    float m108dp = this.scrollingOffset + ((((float) j) / 1000.0f) * AndroidUtilities.m108dp(f));
                    this.scrollingOffset = m108dp;
                    this.lastUpdateTime = elapsedRealtime;
                    if (m108dp > m107dp) {
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
        Drawable drawable4 = this.rightDrawable2;
        if (drawable == drawable4) {
            invalidate(drawable4.getBounds());
            return;
        }
        Drawable drawable5 = this.replacedDrawable;
        if (drawable == drawable5) {
            invalidate(drawable5.getBounds());
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

    public void setRightDrawableInside(boolean z) {
        this.rightDrawableInside = z;
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
            rectF.set(this.rightDrawableX - AndroidUtilities.m107dp(16), this.rightDrawableY - AndroidUtilities.m107dp(16), this.rightDrawableX + AndroidUtilities.m107dp(16), this.rightDrawableY + AndroidUtilities.m107dp(16));
            if (motionEvent.getAction() == 0 && rectF.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                this.maybeClick = true;
                this.touchDownX = motionEvent.getX();
                this.touchDownY = motionEvent.getY();
                getParent().requestDisallowInterceptTouchEvent(true);
                Drawable drawable = this.rightDrawable;
                if (drawable instanceof PressableDrawable) {
                    ((PressableDrawable) drawable).setPressed(true);
                }
            } else if (motionEvent.getAction() == 2 && this.maybeClick) {
                if (Math.abs(motionEvent.getX() - this.touchDownX) >= AndroidUtilities.touchSlop || Math.abs(motionEvent.getY() - this.touchDownY) >= AndroidUtilities.touchSlop) {
                    this.maybeClick = false;
                    getParent().requestDisallowInterceptTouchEvent(false);
                    Drawable drawable2 = this.rightDrawable;
                    if (drawable2 instanceof PressableDrawable) {
                        ((PressableDrawable) drawable2).setPressed(false);
                    }
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (this.maybeClick && motionEvent.getAction() == 1) {
                    this.rightDrawableOnClickListener.onClick(this);
                    Drawable drawable3 = this.rightDrawable;
                    if (drawable3 instanceof PressableDrawable) {
                        ((PressableDrawable) drawable3).setPressed(false);
                    }
                }
                this.maybeClick = false;
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.onTouchEvent(motionEvent) || this.maybeClick;
    }
}
