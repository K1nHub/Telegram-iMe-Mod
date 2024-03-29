package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
/* renamed from: org.telegram.ui.Components.QuoteHighlight */
/* loaded from: classes6.dex */
public class QuoteHighlight extends Path {
    private float currentOffsetX;
    private float currentOffsetY;
    public final int end;

    /* renamed from: id */
    public final int f1933id;
    private Rect lastRect;
    private float minX;
    public final Paint paint;
    private final Path path;
    private final ArrayList<Rect> rectangles;
    public final int start;

    /* renamed from: t */
    private final AnimatedFloat f1934t;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.QuoteHighlight$Rect */
    /* loaded from: classes6.dex */
    public static class Rect {
        public float bottom;
        public boolean first;
        public boolean last;
        public float left;
        public float nextBottom;
        public float prevTop;
        public float right;
        public float top;

        private Rect() {
        }
    }

    public QuoteHighlight(final View view, final ViewParent viewParent, int i, ArrayList<MessageObject.TextLayoutBlock> arrayList, int i2, int i3, float f) {
        int i4;
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new Path();
        this.rectangles = new ArrayList<>();
        this.f1934t = new AnimatedFloat((float) BitmapDescriptorFactory.HUE_RED, new Runnable() { // from class: org.telegram.ui.Components.QuoteHighlight$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                QuoteHighlight.lambda$new$0(view, viewParent);
            }
        }, 350L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.f1933id = i;
        this.start = i2;
        this.end = i3;
        if (arrayList == null) {
            return;
        }
        paint.setPathEffect(new CornerPathEffect(AndroidUtilities.m107dp(4)));
        boolean z = false;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i5);
            if (textLayoutBlock != null && i2 <= textLayoutBlock.charactersEnd && i3 >= (i4 = textLayoutBlock.charactersOffset)) {
                int max = Math.max(0, i2 - i4);
                int i6 = textLayoutBlock.charactersOffset;
                int min = Math.min(i3 - i6, textLayoutBlock.charactersEnd - i6);
                float f2 = -f;
                this.currentOffsetX = f2;
                if (textLayoutBlock.code && !textLayoutBlock.quote) {
                    this.currentOffsetX = f2 + AndroidUtilities.m107dp(10);
                }
                this.currentOffsetY = textLayoutBlock.textYOffset + textLayoutBlock.padTop;
                this.minX = textLayoutBlock.quote ? AndroidUtilities.m107dp(10) : BitmapDescriptorFactory.HUE_RED;
                z = z || AndroidUtilities.isRTL(textLayoutBlock.textLayout.getText());
                if (z) {
                    textLayoutBlock.textLayout.getSelectionPath(max, min, this);
                } else {
                    getSelectionPath(textLayoutBlock.textLayout, max, min);
                }
            }
        }
        if (this.rectangles.size() > 0) {
            Rect rect = this.rectangles.get(0);
            ArrayList<Rect> arrayList2 = this.rectangles;
            Rect rect2 = arrayList2.get(arrayList2.size() - 1);
            rect.first = true;
            rect.top -= AndroidUtilities.m108dp(0.66f);
            rect2.last = true;
            rect2.bottom += AndroidUtilities.m108dp(0.66f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(View view, ViewParent viewParent) {
        if (view != null) {
            view.invalidate();
        }
        if (viewParent instanceof View) {
            ((View) viewParent).invalidate();
        }
    }

    private void getSelectionPath(Layout layout, int i, int i2) {
        float lineLeft;
        float lineRight;
        if (i == i2) {
            return;
        }
        if (i2 < i) {
            i2 = i;
            i = i2;
        }
        int lineForOffset = layout.getLineForOffset(i);
        int lineForOffset2 = layout.getLineForOffset(i2);
        for (int i3 = lineForOffset; i3 <= lineForOffset2; i3++) {
            int lineStart = layout.getLineStart(i3);
            int lineEnd = layout.getLineEnd(i3);
            if (lineEnd != lineStart && (lineStart + 1 != lineEnd || !Character.isWhitespace(layout.getText().charAt(lineStart)))) {
                if (i3 == lineForOffset && i > lineStart) {
                    lineLeft = layout.getPrimaryHorizontal(i);
                } else {
                    lineLeft = layout.getLineLeft(i3);
                }
                if (i3 == lineForOffset2 && i2 < lineEnd) {
                    lineRight = layout.getPrimaryHorizontal(i2);
                } else {
                    lineRight = layout.getLineRight(i3);
                }
                addRect(Math.min(lineLeft, lineRight), layout.getLineTop(i3), Math.max(lineLeft, lineRight), layout.getLineBottom(i3));
            }
        }
    }

    public float getT() {
        return this.f1934t.set(1.0f);
    }

    public void draw(Canvas canvas, float f, float f2, android.graphics.Rect rect, float f3) {
        float f4 = this.f1934t.set(1.0f);
        canvas.save();
        canvas.translate(f, f2);
        this.path.rewind();
        for (int i = 0; i < this.rectangles.size(); i++) {
            Rect rect2 = this.rectangles.get(i);
            this.path.addRect(AndroidUtilities.lerp(rect.left - f, rect2.left, f4), AndroidUtilities.lerp(rect2.first ? rect.top - f2 : rect2.prevTop, rect2.top, f4), AndroidUtilities.lerp(rect.right - f, rect2.right, f4), AndroidUtilities.lerp(rect2.last ? rect.bottom - f2 : rect2.nextBottom, rect2.bottom, f4), Path.Direction.CW);
        }
        int alpha = this.paint.getAlpha();
        this.paint.setAlpha((int) (alpha * f3));
        canvas.drawPath(this.path, this.paint);
        this.paint.setAlpha(alpha);
        canvas.restore();
    }

    @Override // android.graphics.Path
    public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        addRect(f, f2, f3, f4);
    }

    public void addRect(float f, float f2, float f3, float f4) {
        if (f >= f3) {
            return;
        }
        float max = Math.max(this.minX, f);
        float max2 = Math.max(this.minX, f3);
        float f5 = this.currentOffsetX;
        float f6 = max + f5;
        float f7 = this.currentOffsetY;
        float f8 = f2 + f7;
        float f9 = max2 + f5;
        Rect rect = new Rect();
        rect.left = f6 - AndroidUtilities.m107dp(3);
        rect.right = f9 + AndroidUtilities.m107dp(3);
        rect.top = f8;
        rect.bottom = f4 + f7;
        Rect rect2 = this.lastRect;
        if (rect2 != null) {
            float f10 = rect2.bottom;
            rect2.nextBottom = (f10 + f8) / 2.0f;
            rect.prevTop = (f10 + f8) / 2.0f;
        }
        this.rectangles.add(rect);
        this.lastRect = rect;
    }
}
