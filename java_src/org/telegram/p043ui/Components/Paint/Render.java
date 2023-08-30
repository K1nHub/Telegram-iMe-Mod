package org.telegram.p043ui.Components.Paint;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.opengl.GLES20;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* renamed from: org.telegram.ui.Components.Paint.Render */
/* loaded from: classes6.dex */
public class Render {
    public static RectF RenderPath(Path path, RenderState renderState, boolean z) {
        renderState.baseWeight = path.getBaseWeight();
        renderState.spacing = path.getBrush().getSpacing();
        renderState.alpha = z ? 1.0f : path.getBrush().getAlpha();
        renderState.angle = path.getBrush().getAngle();
        renderState.scale = path.getBrush().getScale();
        int length = path.getLength();
        if (length == 0) {
            return null;
        }
        int i = 0;
        if (length == 1) {
            PaintStamp(path.getPoints()[0], renderState);
        } else {
            Point[] points = path.getPoints();
            renderState.prepare();
            while (i < points.length - 1) {
                Point point = points[i];
                i++;
                PaintSegment(point, points[i], renderState);
            }
        }
        path.remainder = renderState.remainder;
        return Draw(renderState);
    }

    private static void PaintSegment(Point point, Point point2, RenderState renderState) {
        int i;
        boolean z;
        double distanceTo = point.getDistanceTo(point2);
        Point substract = point2.substract(point);
        Point point3 = new Point(1.0d, 1.0d, 0.0d);
        float atan2 = Math.abs(renderState.angle) > BitmapDescriptorFactory.HUE_RED ? renderState.angle : (float) Math.atan2(substract.f1790y, substract.f1789x);
        float f = (float) ((((renderState.baseWeight * point2.f1791z) * renderState.scale) * 1.0d) / renderState.viewportScale);
        double max = Math.max(1.0f, renderState.spacing * f);
        if (distanceTo > 0.0d) {
            point3 = substract.multiplyByScalar(1.0d / distanceTo);
        }
        Point point4 = point3;
        float min = Math.min(1.0f, renderState.alpha * 1.15f);
        boolean z2 = point.edge;
        boolean z3 = point2.edge;
        int count = renderState.getCount();
        renderState.appendValuesCount((int) Math.ceil((distanceTo - renderState.remainder) / max));
        renderState.setPosition(count);
        Point add = point.add(point4.multiplyByScalar(renderState.remainder));
        int i2 = 1;
        double d = renderState.remainder;
        boolean z4 = true;
        while (true) {
            if (d > distanceTo) {
                i = i2;
                z = z3;
                break;
            }
            i = i2;
            z = z3;
            z4 = renderState.addPoint(add.toPointF(), f, atan2, z2 ? min : renderState.alpha, -1);
            if (!z4) {
                break;
            }
            add = add.add(point4.multiplyByScalar(max));
            z2 = false;
            d += max;
            i2 = i;
            z3 = z;
        }
        if (z4 && z) {
            renderState.appendValuesCount(i);
            renderState.addPoint(point2.toPointF(), f, atan2, min, -1);
        }
        renderState.remainder = d - distanceTo;
    }

    private static void PaintStamp(Point point, RenderState renderState) {
        float f = ((renderState.baseWeight * renderState.scale) * 1.0f) / renderState.viewportScale;
        PointF pointF = point.toPointF();
        float f2 = Math.abs(renderState.angle) > BitmapDescriptorFactory.HUE_RED ? renderState.angle : 0.0f;
        float f3 = renderState.alpha;
        renderState.prepare();
        renderState.appendValuesCount(1);
        renderState.addPoint(pointF, f, f2, f3, 0);
    }

    private static RectF Draw(RenderState renderState) {
        int i;
        float f;
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        int count = renderState.getCount();
        if (count <= 0) {
            return rectF;
        }
        int i2 = count - 1;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(((count * 4) + (i2 * 2)) * 20);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        int i3 = 0;
        asFloatBuffer.position(0);
        renderState.setPosition(0);
        int i4 = 0;
        int i5 = 0;
        while (i4 < count) {
            float read = renderState.read();
            float read2 = renderState.read();
            float read3 = renderState.read();
            float read4 = renderState.read();
            float read5 = renderState.read();
            RectF rectF2 = new RectF(read - read3, read2 - read3, read + read3, read2 + read3);
            float[] fArr = new float[8];
            float f2 = rectF2.left;
            fArr[i3] = f2;
            float f3 = rectF2.top;
            fArr[1] = f3;
            float f4 = rectF2.right;
            fArr[2] = f4;
            fArr[3] = f3;
            fArr[4] = f2;
            float f5 = rectF2.bottom;
            fArr[5] = f5;
            fArr[6] = f4;
            fArr[7] = f5;
            float centerX = rectF2.centerX();
            float centerY = rectF2.centerY();
            Matrix matrix = new Matrix();
            matrix.setRotate((float) Math.toDegrees(read4), centerX, centerY);
            matrix.mapPoints(fArr);
            matrix.mapRect(rectF2);
            Utils.RectFIntegral(rectF2);
            rectF.union(rectF2);
            if (i5 != 0) {
                asFloatBuffer.put(fArr[0]);
                i = 1;
                asFloatBuffer.put(fArr[1]);
                f = BitmapDescriptorFactory.HUE_RED;
                asFloatBuffer.put(BitmapDescriptorFactory.HUE_RED);
                asFloatBuffer.put(BitmapDescriptorFactory.HUE_RED);
                asFloatBuffer.put(read5);
                i5++;
            } else {
                i = 1;
                f = BitmapDescriptorFactory.HUE_RED;
            }
            asFloatBuffer.put(fArr[0]);
            asFloatBuffer.put(fArr[i]);
            asFloatBuffer.put(f);
            asFloatBuffer.put(f);
            asFloatBuffer.put(read5);
            asFloatBuffer.put(fArr[2]);
            asFloatBuffer.put(fArr[3]);
            asFloatBuffer.put(1.0f);
            asFloatBuffer.put(f);
            asFloatBuffer.put(read5);
            asFloatBuffer.put(fArr[4]);
            asFloatBuffer.put(fArr[5]);
            asFloatBuffer.put(f);
            asFloatBuffer.put(1.0f);
            asFloatBuffer.put(read5);
            asFloatBuffer.put(fArr[6]);
            asFloatBuffer.put(fArr[7]);
            asFloatBuffer.put(1.0f);
            asFloatBuffer.put(1.0f);
            asFloatBuffer.put(read5);
            i5 = i5 + i + i + i + i;
            if (i4 != i2) {
                asFloatBuffer.put(fArr[6]);
                asFloatBuffer.put(fArr[7]);
                asFloatBuffer.put(1.0f);
                asFloatBuffer.put(1.0f);
                asFloatBuffer.put(read5);
                i5++;
            }
            i4++;
            i3 = 0;
        }
        asFloatBuffer.position(i3);
        GLES20.glVertexAttribPointer(0, 2, 5126, false, 20, (Buffer) asFloatBuffer.slice());
        GLES20.glEnableVertexAttribArray(0);
        asFloatBuffer.position(2);
        GLES20.glVertexAttribPointer(1, 2, 5126, true, 20, (Buffer) asFloatBuffer.slice());
        GLES20.glEnableVertexAttribArray(1);
        asFloatBuffer.position(4);
        GLES20.glVertexAttribPointer(2, 1, 5126, true, 20, (Buffer) asFloatBuffer.slice());
        GLES20.glEnableVertexAttribArray(2);
        GLES20.glDrawArrays(5, 0, i5);
        return rectF;
    }
}
