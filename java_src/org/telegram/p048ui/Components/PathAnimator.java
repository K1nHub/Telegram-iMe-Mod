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
    private float f1744tx;

    /* renamed from: ty */
    private float f1745ty;
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
        public float f1754x;

        /* renamed from: y */
        public float f1755y;

        private MoveTo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PathAnimator$LineTo */
    /* loaded from: classes6.dex */
    public static class LineTo {

        /* renamed from: x */
        public float f1752x;

        /* renamed from: y */
        public float f1753y;

        private LineTo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PathAnimator$CurveTo */
    /* loaded from: classes6.dex */
    public static class CurveTo {

        /* renamed from: x */
        public float f1746x;

        /* renamed from: x1 */
        public float f1747x1;

        /* renamed from: x2 */
        public float f1748x2;

        /* renamed from: y */
        public float f1749y;

        /* renamed from: y1 */
        public float f1750y1;

        /* renamed from: y2 */
        public float f1751y2;

        private CurveTo() {
        }
    }

    public PathAnimator(float f, float f2, float f3, float f4) {
        this.scale = f;
        this.f1744tx = f2;
        this.f1745ty = f3;
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
                    curveTo.f1747x1 = (Float.parseFloat(split[i + 1]) + this.f1744tx) * this.scale;
                    curveTo.f1750y1 = (Float.parseFloat(split[i + 2]) + this.f1745ty) * this.scale;
                    curveTo.f1748x2 = (Float.parseFloat(split[i + 3]) + this.f1744tx) * this.scale;
                    curveTo.f1751y2 = (Float.parseFloat(split[i + 4]) + this.f1745ty) * this.scale;
                    curveTo.f1746x = (Float.parseFloat(split[i + 5]) + this.f1744tx) * this.scale;
                    i += 6;
                    curveTo.f1749y = (Float.parseFloat(split[i]) + this.f1745ty) * this.scale;
                    keyFrame.commands.add(curveTo);
                } else if (charAt == 'L') {
                    LineTo lineTo = new LineTo();
                    lineTo.f1752x = (Float.parseFloat(split[i + 1]) + this.f1744tx) * this.scale;
                    i += 2;
                    lineTo.f1753y = (Float.parseFloat(split[i]) + this.f1745ty) * this.scale;
                    keyFrame.commands.add(lineTo);
                } else if (charAt == 'M') {
                    MoveTo moveTo = new MoveTo();
                    moveTo.f1754x = (Float.parseFloat(split[i + 1]) + this.f1744tx) * this.scale;
                    i += 2;
                    moveTo.f1755y = (Float.parseFloat(split[i]) + this.f1745ty) * this.scale;
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
                        float f4 = moveTo2.f1754x;
                        float dpf2 = AndroidUtilities.dpf2(f4 + ((moveTo.f1754x - f4) * f2));
                        float f5 = moveTo2.f1755y;
                        path.moveTo(dpf2, AndroidUtilities.dpf2(f5 + ((moveTo.f1755y - f5) * f2)));
                    } else {
                        this.path.moveTo(AndroidUtilities.dpf2(moveTo.f1754x), AndroidUtilities.dpf2(moveTo.f1755y));
                    }
                } else if (obj2 instanceof LineTo) {
                    LineTo lineTo = (LineTo) obj2;
                    LineTo lineTo2 = (LineTo) obj;
                    if (lineTo2 != null) {
                        Path path2 = this.path;
                        float f6 = lineTo2.f1752x;
                        float dpf22 = AndroidUtilities.dpf2(f6 + ((lineTo.f1752x - f6) * f2));
                        float f7 = lineTo2.f1753y;
                        path2.lineTo(dpf22, AndroidUtilities.dpf2(f7 + ((lineTo.f1753y - f7) * f2)));
                    } else {
                        this.path.lineTo(AndroidUtilities.dpf2(lineTo.f1752x), AndroidUtilities.dpf2(lineTo.f1753y));
                    }
                } else if (obj2 instanceof CurveTo) {
                    CurveTo curveTo = (CurveTo) obj2;
                    CurveTo curveTo2 = (CurveTo) obj;
                    if (curveTo2 != null) {
                        Path path3 = this.path;
                        float f8 = curveTo2.f1747x1;
                        float dpf23 = AndroidUtilities.dpf2(f8 + ((curveTo.f1747x1 - f8) * f2));
                        float f9 = curveTo2.f1750y1;
                        float dpf24 = AndroidUtilities.dpf2(f9 + ((curveTo.f1750y1 - f9) * f2));
                        float f10 = curveTo2.f1748x2;
                        float dpf25 = AndroidUtilities.dpf2(f10 + ((curveTo.f1748x2 - f10) * f2));
                        float f11 = curveTo2.f1751y2;
                        float dpf26 = AndroidUtilities.dpf2(f11 + ((curveTo.f1751y2 - f11) * f2));
                        float f12 = curveTo2.f1746x;
                        float dpf27 = AndroidUtilities.dpf2(f12 + ((curveTo.f1746x - f12) * f2));
                        float f13 = curveTo2.f1749y;
                        path3.cubicTo(dpf23, dpf24, dpf25, dpf26, dpf27, AndroidUtilities.dpf2(f13 + ((curveTo.f1749y - f13) * f2)));
                    } else {
                        this.path.cubicTo(AndroidUtilities.dpf2(curveTo.f1747x1), AndroidUtilities.dpf2(curveTo.f1750y1), AndroidUtilities.dpf2(curveTo.f1748x2), AndroidUtilities.dpf2(curveTo.f1751y2), AndroidUtilities.dpf2(curveTo.f1746x), AndroidUtilities.dpf2(curveTo.f1749y));
                    }
                }
            }
            this.path.close();
        }
        canvas.drawPath(this.path, paint);
    }
}
