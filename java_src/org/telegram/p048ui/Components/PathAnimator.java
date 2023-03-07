package org.telegram.p048ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
/* renamed from: org.telegram.ui.Components.PathAnimator */
/* loaded from: classes6.dex */
public class PathAnimator {
    private float durationScale;
    private float scale;

    /* renamed from: tx */
    private float f1733tx;

    /* renamed from: ty */
    private float f1734ty;
    private Path path = new Path();
    private float pathTime = -1.0f;
    private ArrayList<KeyFrame> keyFrames = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PathAnimator$KeyFrame */
    /* loaded from: classes6.dex */
    public static class KeyFrame {
        public ArrayList<Object> commands;
        public float time;

        private KeyFrame() {
            this.commands = new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PathAnimator$MoveTo */
    /* loaded from: classes6.dex */
    public static class MoveTo {

        /* renamed from: x */
        public float f1743x;

        /* renamed from: y */
        public float f1744y;

        private MoveTo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PathAnimator$LineTo */
    /* loaded from: classes6.dex */
    public static class LineTo {

        /* renamed from: x */
        public float f1741x;

        /* renamed from: y */
        public float f1742y;

        private LineTo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PathAnimator$CurveTo */
    /* loaded from: classes6.dex */
    public static class CurveTo {

        /* renamed from: x */
        public float f1735x;

        /* renamed from: x1 */
        public float f1736x1;

        /* renamed from: x2 */
        public float f1737x2;

        /* renamed from: y */
        public float f1738y;

        /* renamed from: y1 */
        public float f1739y1;

        /* renamed from: y2 */
        public float f1740y2;

        private CurveTo() {
        }
    }

    public PathAnimator(float f, float f2, float f3, float f4) {
        this.scale = f;
        this.f1733tx = f2;
        this.f1734ty = f3;
        this.durationScale = f4;
    }

    public void addSvgKeyFrame(String str, float f) {
        if (str == null) {
            return;
        }
        try {
            KeyFrame keyFrame = new KeyFrame();
            keyFrame.time = f * this.durationScale;
            String[] split = str.split(" ");
            int i = 0;
            while (i < split.length) {
                char charAt = split[i].charAt(0);
                if (charAt == 'C') {
                    CurveTo curveTo = new CurveTo();
                    curveTo.f1736x1 = (Float.parseFloat(split[i + 1]) + this.f1733tx) * this.scale;
                    curveTo.f1739y1 = (Float.parseFloat(split[i + 2]) + this.f1734ty) * this.scale;
                    curveTo.f1737x2 = (Float.parseFloat(split[i + 3]) + this.f1733tx) * this.scale;
                    curveTo.f1740y2 = (Float.parseFloat(split[i + 4]) + this.f1734ty) * this.scale;
                    curveTo.f1735x = (Float.parseFloat(split[i + 5]) + this.f1733tx) * this.scale;
                    i += 6;
                    curveTo.f1738y = (Float.parseFloat(split[i]) + this.f1734ty) * this.scale;
                    keyFrame.commands.add(curveTo);
                } else if (charAt == 'L') {
                    LineTo lineTo = new LineTo();
                    lineTo.f1741x = (Float.parseFloat(split[i + 1]) + this.f1733tx) * this.scale;
                    i += 2;
                    lineTo.f1742y = (Float.parseFloat(split[i]) + this.f1734ty) * this.scale;
                    keyFrame.commands.add(lineTo);
                } else if (charAt == 'M') {
                    MoveTo moveTo = new MoveTo();
                    moveTo.f1743x = (Float.parseFloat(split[i + 1]) + this.f1733tx) * this.scale;
                    i += 2;
                    moveTo.f1744y = (Float.parseFloat(split[i]) + this.f1734ty) * this.scale;
                    keyFrame.commands.add(moveTo);
                }
                i++;
            }
            this.keyFrames.add(keyFrame);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public void draw(Canvas canvas, Paint paint, float f) {
        float f2;
        if (this.pathTime != f) {
            this.pathTime = f;
            int size = this.keyFrames.size();
            KeyFrame keyFrame = null;
            KeyFrame keyFrame2 = null;
            for (int i = 0; i < size; i++) {
                KeyFrame keyFrame3 = this.keyFrames.get(i);
                if ((keyFrame2 == null || keyFrame2.time < keyFrame3.time) && keyFrame3.time <= f) {
                    keyFrame2 = keyFrame3;
                }
                if ((keyFrame == null || keyFrame.time > keyFrame3.time) && keyFrame3.time >= f) {
                    keyFrame = keyFrame3;
                }
            }
            if (keyFrame == keyFrame2) {
                keyFrame2 = null;
            }
            if (keyFrame2 != null && keyFrame == null) {
                keyFrame = keyFrame2;
                keyFrame2 = null;
            }
            if (keyFrame == null) {
                return;
            }
            if (keyFrame2 != null && keyFrame2.commands.size() != keyFrame.commands.size()) {
                return;
            }
            this.path.reset();
            int size2 = keyFrame.commands.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Object obj = keyFrame2 != null ? keyFrame2.commands.get(i2) : null;
                Object obj2 = keyFrame.commands.get(i2);
                if (obj != null && obj.getClass() != obj2.getClass()) {
                    return;
                }
                if (keyFrame2 != null) {
                    float f3 = keyFrame2.time;
                    f2 = (f - f3) / (keyFrame.time - f3);
                } else {
                    f2 = 1.0f;
                }
                if (obj2 instanceof MoveTo) {
                    MoveTo moveTo = (MoveTo) obj2;
                    MoveTo moveTo2 = (MoveTo) obj;
                    if (moveTo2 != null) {
                        Path path = this.path;
                        float f4 = moveTo2.f1743x;
                        float dpf2 = AndroidUtilities.dpf2(f4 + ((moveTo.f1743x - f4) * f2));
                        float f5 = moveTo2.f1744y;
                        path.moveTo(dpf2, AndroidUtilities.dpf2(f5 + ((moveTo.f1744y - f5) * f2)));
                    } else {
                        this.path.moveTo(AndroidUtilities.dpf2(moveTo.f1743x), AndroidUtilities.dpf2(moveTo.f1744y));
                    }
                } else if (obj2 instanceof LineTo) {
                    LineTo lineTo = (LineTo) obj2;
                    LineTo lineTo2 = (LineTo) obj;
                    if (lineTo2 != null) {
                        Path path2 = this.path;
                        float f6 = lineTo2.f1741x;
                        float dpf22 = AndroidUtilities.dpf2(f6 + ((lineTo.f1741x - f6) * f2));
                        float f7 = lineTo2.f1742y;
                        path2.lineTo(dpf22, AndroidUtilities.dpf2(f7 + ((lineTo.f1742y - f7) * f2)));
                    } else {
                        this.path.lineTo(AndroidUtilities.dpf2(lineTo.f1741x), AndroidUtilities.dpf2(lineTo.f1742y));
                    }
                } else if (obj2 instanceof CurveTo) {
                    CurveTo curveTo = (CurveTo) obj2;
                    CurveTo curveTo2 = (CurveTo) obj;
                    if (curveTo2 != null) {
                        Path path3 = this.path;
                        float f8 = curveTo2.f1736x1;
                        float dpf23 = AndroidUtilities.dpf2(f8 + ((curveTo.f1736x1 - f8) * f2));
                        float f9 = curveTo2.f1739y1;
                        float dpf24 = AndroidUtilities.dpf2(f9 + ((curveTo.f1739y1 - f9) * f2));
                        float f10 = curveTo2.f1737x2;
                        float dpf25 = AndroidUtilities.dpf2(f10 + ((curveTo.f1737x2 - f10) * f2));
                        float f11 = curveTo2.f1740y2;
                        float dpf26 = AndroidUtilities.dpf2(f11 + ((curveTo.f1740y2 - f11) * f2));
                        float f12 = curveTo2.f1735x;
                        float dpf27 = AndroidUtilities.dpf2(f12 + ((curveTo.f1735x - f12) * f2));
                        float f13 = curveTo2.f1738y;
                        path3.cubicTo(dpf23, dpf24, dpf25, dpf26, dpf27, AndroidUtilities.dpf2(f13 + ((curveTo.f1738y - f13) * f2)));
                    } else {
                        this.path.cubicTo(AndroidUtilities.dpf2(curveTo.f1736x1), AndroidUtilities.dpf2(curveTo.f1739y1), AndroidUtilities.dpf2(curveTo.f1737x2), AndroidUtilities.dpf2(curveTo.f1740y2), AndroidUtilities.dpf2(curveTo.f1735x), AndroidUtilities.dpf2(curveTo.f1738y));
                    }
                }
            }
            this.path.close();
        }
        canvas.drawPath(this.path, paint);
    }
}
