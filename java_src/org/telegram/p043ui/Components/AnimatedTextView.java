package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.IntStream;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedTextView;
import p033j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$VWRP;
import p033j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
/* renamed from: org.telegram.ui.Components.AnimatedTextView */
/* loaded from: classes6.dex */
public class AnimatedTextView extends View {
    public boolean adaptWidth;
    private final AnimatedTextDrawable drawable;
    private boolean first;
    private int lastMaxWidth;
    private int maxWidth;
    private boolean toSetMoveDown;
    private CharSequence toSetText;

    /* renamed from: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable */
    /* loaded from: classes6.dex */
    public static class AnimatedTextDrawable extends Drawable {
        private boolean allowCancel;
        private int alpha;
        private long animateDelay;
        private long animateDuration;
        private TimeInterpolator animateInterpolator;
        private ValueAnimator animator;
        private final Rect bounds;
        private float currentHeight;
        private Part[] currentParts;
        private CharSequence currentText;
        private float currentWidth;
        private boolean ellipsizeByGradient;
        private LinearGradient ellipsizeGradient;
        private Matrix ellipsizeGradientMatrix;
        private Paint ellipsizePaint;
        private int gravity;
        public boolean ignoreRTL;
        private boolean isRTL;
        private float moveAmplitude;
        private boolean moveDown;
        private float oldHeight;
        private Part[] oldParts;
        private CharSequence oldText;
        private float oldWidth;
        private Runnable onAnimationFinishListener;
        private int overrideFullWidth;
        private boolean preserveIndex;
        private float rightPadding;
        private int shadowColor;
        private float shadowDx;
        private float shadowDy;
        private float shadowRadius;
        private boolean shadowed;
        private boolean splitByWords;
        private boolean startFromEnd;

        /* renamed from: t */
        private float f1813t;
        private final TextPaint textPaint;
        private CharSequence toSetText;
        private boolean toSetTextMoveDown;
        public boolean updateAll;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$RegionCallback */
        /* loaded from: classes6.dex */
        public interface RegionCallback {
            void run(CharSequence charSequence, int i, int i2);
        }

        @Override // android.graphics.drawable.Drawable
        @Deprecated
        public int getOpacity() {
            return -2;
        }

        public void setSplitByWords(boolean z) {
            this.splitByWords = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$Part */
        /* loaded from: classes6.dex */
        public static class Part {
            StaticLayout layout;
            float left;
            float offset;
            int toOppositeIndex;
            float width;

            public Part(StaticLayout staticLayout, float f, int i) {
                this.layout = staticLayout;
                this.toOppositeIndex = i;
                layout(f);
            }

            public void layout(float f) {
                this.offset = f;
                StaticLayout staticLayout = this.layout;
                float f2 = BitmapDescriptorFactory.HUE_RED;
                this.left = (staticLayout == null || staticLayout.getLineCount() <= 0) ? 0.0f : this.layout.getLineLeft(0);
                StaticLayout staticLayout2 = this.layout;
                if (staticLayout2 != null && staticLayout2.getLineCount() > 0) {
                    f2 = this.layout.getLineWidth(0);
                }
                this.width = f2;
            }
        }

        public void setHacks(boolean z, boolean z2, boolean z3) {
            this.splitByWords = z;
            this.preserveIndex = z2;
            this.startFromEnd = z3;
        }

        public void setOverrideFullWidth(int i) {
            this.overrideFullWidth = i;
        }

        public AnimatedTextDrawable() {
            this(false, false, false);
        }

        public AnimatedTextDrawable(boolean z, boolean z2, boolean z3) {
            this.textPaint = new TextPaint(1);
            this.gravity = 0;
            this.isRTL = false;
            this.f1813t = BitmapDescriptorFactory.HUE_RED;
            this.moveDown = true;
            this.animateDelay = 0L;
            this.animateDuration = 450L;
            this.animateInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.moveAmplitude = 1.0f;
            this.alpha = 255;
            this.bounds = new Rect();
            this.shadowed = false;
            this.splitByWords = z;
            this.preserveIndex = z2;
            this.startFromEnd = z3;
        }

        public void setAllowCancel(boolean z) {
            this.allowCancel = z;
        }

        public void setEllipsizeByGradient(boolean z) {
            this.ellipsizeByGradient = z;
            invalidateSelf();
        }

        public void setOnAnimationFinishListener(Runnable runnable) {
            this.onAnimationFinishListener = runnable;
        }

        private void applyAlphaInternal(float f) {
            this.textPaint.setAlpha((int) (this.alpha * f));
            if (this.shadowed) {
                this.textPaint.setShadowLayer(this.shadowRadius, this.shadowDx, this.shadowDy, Theme.multAlpha(this.shadowColor, f));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:107:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:125:? A[RETURN, SYNTHETIC] */
        @Override // android.graphics.drawable.Drawable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void draw(android.graphics.Canvas r17) {
            /*
                Method dump skipped, instructions count: 622
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.AnimatedTextView.AnimatedTextDrawable.draw(android.graphics.Canvas):void");
        }

        public void setRightPadding(float f) {
            this.rightPadding = f;
            invalidateSelf();
        }

        public void cancelAnimation() {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }

        public boolean isAnimating() {
            ValueAnimator valueAnimator = this.animator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        public void setText(CharSequence charSequence) {
            setText(charSequence, true);
        }

        public void setText(CharSequence charSequence, boolean z) {
            setText(charSequence, z, true);
        }

        public void setText(CharSequence charSequence, boolean z, boolean z2) {
            Part[] partArr;
            if (this.currentText == null || charSequence == null) {
                z = false;
            }
            if (charSequence == null) {
                charSequence = "";
            }
            final int i = this.overrideFullWidth;
            if (i <= 0) {
                i = this.bounds.width();
            }
            if (z) {
                if (this.allowCancel) {
                    ValueAnimator valueAnimator = this.animator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.animator = null;
                    }
                } else if (isAnimating()) {
                    this.toSetText = charSequence;
                    this.toSetTextMoveDown = z2;
                    return;
                }
                if (charSequence.equals(this.currentText)) {
                    return;
                }
                this.oldText = this.currentText;
                this.currentText = charSequence;
                final ArrayList arrayList = new ArrayList();
                final ArrayList arrayList2 = new ArrayList();
                this.currentHeight = BitmapDescriptorFactory.HUE_RED;
                this.currentWidth = BitmapDescriptorFactory.HUE_RED;
                this.oldHeight = BitmapDescriptorFactory.HUE_RED;
                this.oldWidth = BitmapDescriptorFactory.HUE_RED;
                this.isRTL = AndroidUtilities.isRTL(this.currentText);
                diff(this.splitByWords ? new WordSequence(this.oldText) : this.oldText, this.splitByWords ? new WordSequence(this.currentText) : this.currentText, new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3
                    @Override // org.telegram.p043ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                    public final void run(CharSequence charSequence2, int i2, int i3) {
                        AnimatedTextView.AnimatedTextDrawable.this.lambda$setText$0(i, arrayList2, arrayList, charSequence2, i2, i3);
                    }
                }, new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2
                    @Override // org.telegram.p043ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                    public final void run(CharSequence charSequence2, int i2, int i3) {
                        AnimatedTextView.AnimatedTextDrawable.this.lambda$setText$1(i, arrayList, charSequence2, i2, i3);
                    }
                }, new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1
                    @Override // org.telegram.p043ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                    public final void run(CharSequence charSequence2, int i2, int i3) {
                        AnimatedTextView.AnimatedTextDrawable.this.lambda$setText$2(i, arrayList2, charSequence2, i2, i3);
                    }
                });
                Part[] partArr2 = this.currentParts;
                if (partArr2 == null || partArr2.length != arrayList.size()) {
                    this.currentParts = new Part[arrayList.size()];
                }
                arrayList.toArray(this.currentParts);
                Part[] partArr3 = this.oldParts;
                if (partArr3 == null || partArr3.length != arrayList2.size()) {
                    this.oldParts = new Part[arrayList2.size()];
                }
                arrayList2.toArray(this.oldParts);
                ValueAnimator valueAnimator2 = this.animator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.moveDown = z2;
                float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f};
                this.f1813t = BitmapDescriptorFactory.HUE_RED;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                this.animator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        AnimatedTextView.AnimatedTextDrawable.this.lambda$setText$3(valueAnimator3);
                    }
                });
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        AnimatedTextDrawable.this.oldParts = null;
                        AnimatedTextDrawable.this.oldText = null;
                        AnimatedTextDrawable.this.oldWidth = BitmapDescriptorFactory.HUE_RED;
                        AnimatedTextDrawable.this.f1813t = BitmapDescriptorFactory.HUE_RED;
                        AnimatedTextDrawable.this.invalidateSelf();
                        AnimatedTextDrawable.this.animator = null;
                        if (AnimatedTextDrawable.this.toSetText == null) {
                            if (AnimatedTextDrawable.this.onAnimationFinishListener != null) {
                                AnimatedTextDrawable.this.onAnimationFinishListener.run();
                                return;
                            }
                            return;
                        }
                        AnimatedTextDrawable animatedTextDrawable = AnimatedTextDrawable.this;
                        animatedTextDrawable.setText(animatedTextDrawable.toSetText, true, AnimatedTextDrawable.this.toSetTextMoveDown);
                        AnimatedTextDrawable.this.toSetText = null;
                        AnimatedTextDrawable.this.toSetTextMoveDown = false;
                    }
                });
                this.animator.setStartDelay(this.animateDelay);
                this.animator.setDuration(this.animateDuration);
                this.animator.setInterpolator(this.animateInterpolator);
                this.animator.start();
                return;
            }
            ValueAnimator valueAnimator3 = this.animator;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
            }
            this.animator = null;
            this.toSetText = null;
            this.toSetTextMoveDown = false;
            this.f1813t = BitmapDescriptorFactory.HUE_RED;
            if (!charSequence.equals(this.currentText)) {
                this.currentParts = r12;
                this.currentText = charSequence;
                Part[] partArr4 = {new Part(makeLayout(charSequence, i), BitmapDescriptorFactory.HUE_RED, -1)};
                this.currentWidth = this.currentParts[0].width;
                this.currentHeight = partArr[0].layout.getHeight();
                this.isRTL = AndroidUtilities.isRTL(this.currentText);
            }
            this.oldParts = null;
            this.oldText = null;
            this.oldWidth = BitmapDescriptorFactory.HUE_RED;
            this.oldHeight = BitmapDescriptorFactory.HUE_RED;
            invalidateSelf();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(int i, ArrayList arrayList, ArrayList arrayList2, CharSequence charSequence, int i2, int i3) {
            StaticLayout makeLayout = makeLayout(charSequence, i - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
            Part part = new Part(makeLayout, this.currentWidth, arrayList.size());
            Part part2 = new Part(makeLayout, this.oldWidth, arrayList.size());
            arrayList2.add(part);
            arrayList.add(part2);
            float f = part.width;
            this.currentWidth += f;
            this.oldWidth += f;
            this.currentHeight = Math.max(this.currentHeight, makeLayout.getHeight());
            this.oldHeight = Math.max(this.oldHeight, makeLayout.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$1(int i, ArrayList arrayList, CharSequence charSequence, int i2, int i3) {
            StaticLayout makeLayout;
            Part part = new Part(makeLayout(charSequence, i - ((int) Math.ceil(this.currentWidth))), this.currentWidth, -1);
            arrayList.add(part);
            this.currentWidth += part.width;
            this.currentHeight = Math.max(this.currentHeight, makeLayout.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$2(int i, ArrayList arrayList, CharSequence charSequence, int i2, int i3) {
            StaticLayout makeLayout;
            Part part = new Part(makeLayout(charSequence, i - ((int) Math.ceil(this.oldWidth))), this.oldWidth, -1);
            arrayList.add(part);
            this.oldWidth += part.width;
            this.oldHeight = Math.max(this.oldHeight, makeLayout.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$3(ValueAnimator valueAnimator) {
            this.f1813t = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidateSelf();
        }

        public CharSequence getText() {
            return this.currentText;
        }

        public float getWidth() {
            return Math.max(this.currentWidth, this.oldWidth);
        }

        public float getCurrentWidth() {
            if (this.currentParts != null && this.oldParts != null) {
                return AndroidUtilities.lerp(this.oldWidth, this.currentWidth, this.f1813t);
            }
            return this.currentWidth;
        }

        public float getAnimateToWidth() {
            return this.currentWidth;
        }

        public float getHeight() {
            return this.currentHeight;
        }

        private StaticLayout makeLayout(CharSequence charSequence, int i) {
            if (i <= 0) {
                Point point = AndroidUtilities.displaySize;
                i = Math.min(point.x, point.y);
            }
            int i2 = i;
            if (Build.VERSION.SDK_INT >= 23) {
                return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.textPaint, i2).setMaxLines(1).setLineSpacing(BitmapDescriptorFactory.HUE_RED, 1.0f).setAlignment(Layout.Alignment.ALIGN_NORMAL).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(i2).build();
            }
            return new StaticLayout(charSequence, 0, charSequence.length(), this.textPaint, i2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$WordSequence */
        /* loaded from: classes6.dex */
        public static class WordSequence implements CharSequence {
            private final int length;
            private final CharSequence[] words;

            @Override // java.lang.CharSequence
            public /* synthetic */ IntStream chars() {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(chars());
            }

            @Override // java.lang.CharSequence
            public /* synthetic */ IntStream codePoints() {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(codePoints());
            }

            public WordSequence(CharSequence charSequence) {
                if (charSequence == null) {
                    this.words = new CharSequence[0];
                    this.length = 0;
                    return;
                }
                this.length = charSequence.length();
                int i = 0;
                for (int i2 = 0; i2 < this.length; i2++) {
                    if (charSequence.charAt(i2) == ' ') {
                        i++;
                    }
                }
                this.words = new CharSequence[i + 1];
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int i6 = this.length;
                    if (i3 > i6) {
                        return;
                    }
                    if (i3 == i6 || charSequence.charAt(i3) == ' ') {
                        int i7 = i4 + 1;
                        this.words[i4] = charSequence.subSequence(i5, (i3 < this.length ? 1 : 0) + i3);
                        i5 = i3 + 1;
                        i4 = i7;
                    }
                    i3++;
                }
            }

            public CharSequence wordAt(int i) {
                if (i >= 0) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i >= charSequenceArr.length) {
                        return null;
                    }
                    return charSequenceArr[i];
                }
                return null;
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.words.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                int i2 = 0;
                while (true) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i2 >= charSequenceArr.length) {
                        return (char) 0;
                    }
                    if (i < charSequenceArr[i2].length()) {
                        return this.words[i2].charAt(i);
                    }
                    i -= this.words[i2].length();
                    i2++;
                }
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return TextUtils.concat((CharSequence[]) Arrays.copyOfRange(this.words, i, i2));
            }

            @Override // java.lang.CharSequence
            public String toString() {
                StringBuilder sb = new StringBuilder();
                int i = 0;
                while (true) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i < charSequenceArr.length) {
                        sb.append(charSequenceArr[i]);
                        i++;
                    } else {
                        return sb.toString();
                    }
                }
            }

            public CharSequence toCharSequence() {
                return TextUtils.concat(this.words);
            }

            @Override // java.lang.CharSequence
            public p033j$.util.stream.IntStream chars() {
                if (Build.VERSION.SDK_INT >= 24) {
                    return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(toCharSequence().chars());
                }
                return null;
            }

            @Override // java.lang.CharSequence
            public p033j$.util.stream.IntStream codePoints() {
                if (Build.VERSION.SDK_INT >= 24) {
                    return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(toCharSequence().codePoints());
                }
                return null;
            }
        }

        public static boolean partEquals(CharSequence charSequence, CharSequence charSequence2, int i, int i2) {
            if (!(charSequence instanceof WordSequence) || !(charSequence2 instanceof WordSequence)) {
                if (charSequence == null && charSequence2 == null) {
                    return true;
                }
                return (charSequence == null || charSequence2 == null || charSequence.charAt(i) != charSequence2.charAt(i2)) ? false : true;
            }
            CharSequence wordAt = ((WordSequence) charSequence).wordAt(i);
            CharSequence wordAt2 = ((WordSequence) charSequence2).wordAt(i2);
            if (wordAt == null && wordAt2 == null) {
                return true;
            }
            return wordAt != null && wordAt.equals(wordAt2);
        }

        private void diff(CharSequence charSequence, CharSequence charSequence2, RegionCallback regionCallback, RegionCallback regionCallback2, RegionCallback regionCallback3) {
            boolean z = false;
            if (this.updateAll) {
                regionCallback3.run(charSequence, 0, charSequence.length());
                regionCallback2.run(charSequence2, 0, charSequence2.length());
            } else if (this.preserveIndex) {
                int min = Math.min(charSequence2.length(), charSequence.length());
                if (this.startFromEnd) {
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    boolean z2 = true;
                    boolean z3 = true;
                    for (int i2 = 0; i2 <= min; i2++) {
                        int length = (charSequence2.length() - i2) - 1;
                        int length2 = (charSequence.length() - i2) - 1;
                        boolean z4 = length >= 0 && length2 >= 0 && partEquals(charSequence2, charSequence, length, length2);
                        if (z2 != z4 || i2 == min) {
                            int i3 = i2 - i;
                            if (i3 > 0) {
                                if (arrayList.size() != 0) {
                                    z2 = z3;
                                }
                                arrayList.add(Integer.valueOf(i3));
                                z3 = z2;
                            }
                            i = i2;
                            z2 = z4;
                        }
                    }
                    int length3 = charSequence2.length() - min;
                    int length4 = charSequence.length() - min;
                    if (length3 > 0) {
                        regionCallback2.run(charSequence2.subSequence(0, length3), 0, length3);
                    }
                    if (length4 > 0) {
                        regionCallback3.run(charSequence.subSequence(0, length4), 0, length4);
                    }
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        int intValue = ((Integer) arrayList.get(size)).intValue();
                        if ((size % 2 == 0) == z3) {
                            if (charSequence2.length() > charSequence.length()) {
                                int i4 = length3 + intValue;
                                regionCallback.run(charSequence2.subSequence(length3, i4), length3, i4);
                            } else {
                                int i5 = length4 + intValue;
                                regionCallback.run(charSequence.subSequence(length4, i5), length4, i5);
                            }
                        } else {
                            int i6 = length3 + intValue;
                            regionCallback2.run(charSequence2.subSequence(length3, i6), length3, i6);
                            int i7 = length4 + intValue;
                            regionCallback3.run(charSequence.subSequence(length4, i7), length4, i7);
                        }
                        length3 += intValue;
                        length4 += intValue;
                    }
                    return;
                }
                int i8 = 0;
                int i9 = 0;
                boolean z5 = true;
                while (i8 <= min) {
                    boolean z6 = i8 < min && partEquals(charSequence2, charSequence, i8, i8);
                    if (z5 != z6 || i8 == min) {
                        if (i8 - i9 > 0) {
                            if (z5) {
                                regionCallback.run(charSequence2.subSequence(i9, i8), i9, i8);
                            } else {
                                regionCallback2.run(charSequence2.subSequence(i9, i8), i9, i8);
                                regionCallback3.run(charSequence.subSequence(i9, i8), i9, i8);
                            }
                        }
                        i9 = i8;
                        z5 = z6;
                    }
                    i8++;
                }
                if (charSequence2.length() - min > 0) {
                    regionCallback2.run(charSequence2.subSequence(min, charSequence2.length()), min, charSequence2.length());
                }
                if (charSequence.length() - min > 0) {
                    regionCallback3.run(charSequence.subSequence(min, charSequence.length()), min, charSequence.length());
                }
            } else {
                int min2 = Math.min(charSequence2.length(), charSequence.length());
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                boolean z7 = true;
                while (i10 <= min2) {
                    boolean z8 = (i10 >= min2 || !partEquals(charSequence2, charSequence, i10, i11)) ? z : true;
                    if (z7 != z8 || i10 == min2) {
                        if (i10 == min2) {
                            i10 = charSequence2.length();
                            i11 = charSequence.length();
                        }
                        int i14 = i10 - i12;
                        int i15 = i11 - i13;
                        if (i14 > 0 || i15 > 0) {
                            if (i14 == i15 && z7) {
                                regionCallback.run(charSequence2.subSequence(i12, i10), i12, i10);
                            } else {
                                if (i14 > 0) {
                                    regionCallback2.run(charSequence2.subSequence(i12, i10), i12, i10);
                                }
                                if (i15 > 0) {
                                    regionCallback3.run(charSequence.subSequence(i13, i11), i13, i11);
                                }
                            }
                        }
                        i12 = i10;
                        i13 = i11;
                        z7 = z8;
                    }
                    if (z8) {
                        i11++;
                    }
                    i10++;
                    z = false;
                }
            }
        }

        public void setTextSize(float f) {
            Part[] partArr;
            Part[] partArr2;
            float textSize = this.textPaint.getTextSize();
            this.textPaint.setTextSize(f);
            if (Math.abs(textSize - f) > 0.5f) {
                int i = this.overrideFullWidth;
                if (i <= 0) {
                    i = this.bounds.width();
                }
                int i2 = 0;
                if (this.currentParts != null) {
                    this.currentWidth = BitmapDescriptorFactory.HUE_RED;
                    this.currentHeight = BitmapDescriptorFactory.HUE_RED;
                    int i3 = 0;
                    while (true) {
                        Part[] partArr3 = this.currentParts;
                        if (i3 >= partArr3.length) {
                            break;
                        }
                        StaticLayout makeLayout = makeLayout(partArr3[i3].layout.getText(), i - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
                        Part[] partArr4 = this.currentParts;
                        partArr4[i3] = new Part(makeLayout, partArr4[i3].offset, partArr4[i3].toOppositeIndex);
                        this.currentWidth = this.currentWidth + this.currentParts[i3].width;
                        this.currentHeight = Math.max(this.currentHeight, partArr2[i3].layout.getHeight());
                        i3++;
                    }
                }
                if (this.oldParts != null) {
                    this.oldWidth = BitmapDescriptorFactory.HUE_RED;
                    this.oldHeight = BitmapDescriptorFactory.HUE_RED;
                    while (true) {
                        Part[] partArr5 = this.oldParts;
                        if (i2 >= partArr5.length) {
                            break;
                        }
                        StaticLayout makeLayout2 = makeLayout(partArr5[i2].layout.getText(), i - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
                        Part[] partArr6 = this.oldParts;
                        partArr6[i2] = new Part(makeLayout2, partArr6[i2].offset, partArr6[i2].toOppositeIndex);
                        this.oldWidth = this.oldWidth + this.oldParts[i2].width;
                        this.oldHeight = Math.max(this.oldHeight, partArr[i2].layout.getHeight());
                        i2++;
                    }
                }
                invalidateSelf();
            }
        }

        public float getTextSize() {
            return this.textPaint.getTextSize();
        }

        public void setTextColor(int i) {
            this.textPaint.setColor(i);
            this.alpha = Color.alpha(i);
        }

        public void setShadowLayer(float f, float f2, float f3, int i) {
            this.shadowed = true;
            TextPaint textPaint = this.textPaint;
            this.shadowRadius = f;
            this.shadowDx = f2;
            this.shadowDy = f3;
            this.shadowColor = i;
            textPaint.setShadowLayer(f, f2, f3, i);
        }

        public int getTextColor() {
            return this.textPaint.getColor();
        }

        public void setTypeface(Typeface typeface) {
            this.textPaint.setTypeface(typeface);
        }

        public void setGravity(int i) {
            this.gravity = i;
        }

        public void setAnimationProperties(float f, long j, long j2, TimeInterpolator timeInterpolator) {
            this.moveAmplitude = f;
            this.animateDelay = j;
            this.animateDuration = j2;
            this.animateInterpolator = timeInterpolator;
        }

        public TextPaint getPaint() {
            return this.textPaint;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.textPaint.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(Rect rect) {
            super.setBounds(rect);
            this.bounds.set(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4);
            this.bounds.set(i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public Rect getDirtyBounds() {
            return this.bounds;
        }

        public float isNotEmpty() {
            CharSequence charSequence = this.oldText;
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = (charSequence == null || charSequence.length() <= 0) ? 0.0f : 1.0f;
            CharSequence charSequence2 = this.currentText;
            if (charSequence2 != null && charSequence2.length() > 0) {
                f = 1.0f;
            }
            return AndroidUtilities.lerp(f2, f, this.oldText != null ? this.f1813t : 1.0f);
        }
    }

    public AnimatedTextView(Context context) {
        this(context, false, false, false);
    }

    public AnimatedTextView(Context context, boolean z, boolean z2, boolean z3) {
        super(context);
        this.adaptWidth = true;
        this.first = true;
        AnimatedTextDrawable animatedTextDrawable = new AnimatedTextDrawable(z, z2, z3);
        this.drawable = animatedTextDrawable;
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setOnAnimationFinishListener(new Runnable() { // from class: org.telegram.ui.Components.AnimatedTextView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AnimatedTextView.this.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        CharSequence charSequence = this.toSetText;
        if (charSequence != null) {
            setText(charSequence, this.toSetMoveDown, true);
            this.toSetText = null;
            this.toSetMoveDown = false;
        }
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.maxWidth;
        if (i3 > 0) {
            size = Math.min(size, i3);
        }
        if (this.lastMaxWidth != size && getLayoutParams().width != 0) {
            this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), size - getPaddingRight(), size2 - getPaddingBottom());
            setText(this.drawable.getText(), false);
        }
        this.lastMaxWidth = size;
        if (this.adaptWidth && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            size = getPaddingRight() + getPaddingLeft() + ((int) Math.ceil(this.drawable.getWidth()));
        }
        setMeasuredDimension(size, size2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        this.drawable.draw(canvas);
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, true, true);
    }

    public void setText(CharSequence charSequence, boolean z) {
        setText(charSequence, z, true);
    }

    public void cancelAnimation() {
        this.drawable.cancelAnimation();
    }

    public boolean isAnimating() {
        return this.drawable.isAnimating();
    }

    public void setIgnoreRTL(boolean z) {
        this.drawable.ignoreRTL = z;
    }

    public void setText(CharSequence charSequence, boolean z, boolean z2) {
        boolean z3 = !this.first && z;
        this.first = false;
        if (z3) {
            if (this.drawable.allowCancel) {
                if (this.drawable.animator != null) {
                    this.drawable.animator.cancel();
                    this.drawable.animator = null;
                }
            } else if (this.drawable.isAnimating()) {
                this.toSetText = charSequence;
                this.toSetMoveDown = z2;
                return;
            }
        }
        this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), this.lastMaxWidth - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        this.drawable.setText(charSequence, z3, z2);
        float width = (int) this.drawable.getWidth();
        if (width < this.drawable.getWidth() || !(z3 || width == this.drawable.getWidth())) {
            requestLayout();
        }
    }

    public int width() {
        return getPaddingLeft() + ((int) Math.ceil(this.drawable.getCurrentWidth())) + getPaddingRight();
    }

    public CharSequence getText() {
        return this.drawable.getText();
    }

    public int getTextHeight() {
        return getPaint().getFontMetricsInt().descent - getPaint().getFontMetricsInt().ascent;
    }

    public void setTextSize(float f) {
        this.drawable.setTextSize(f);
    }

    public void setTextColor(int i) {
        this.drawable.setTextColor(i);
        invalidate();
    }

    public int getTextColor() {
        return this.drawable.getTextColor();
    }

    public void setTypeface(Typeface typeface) {
        this.drawable.setTypeface(typeface);
    }

    public void setGravity(int i) {
        this.drawable.setGravity(i);
    }

    public void setAnimationProperties(float f, long j, long j2, TimeInterpolator timeInterpolator) {
        this.drawable.setAnimationProperties(f, j, j2, timeInterpolator);
    }

    public AnimatedTextDrawable getDrawable() {
        return this.drawable;
    }

    public TextPaint getPaint() {
        return this.drawable.getPaint();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
        invalidate();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.TextView");
        accessibilityNodeInfo.setText(getText());
    }

    public void setEllipsizeByGradient(boolean z) {
        this.drawable.setEllipsizeByGradient(z);
    }

    public void setRightPadding(float f) {
        this.drawable.setRightPadding(f);
    }
}
