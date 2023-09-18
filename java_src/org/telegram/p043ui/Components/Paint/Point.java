package org.telegram.p043ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes7.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1780x;

    /* renamed from: y */
    public double f1781y;

    /* renamed from: z */
    public double f1782z;

    public Point(double d, double d2, double d3) {
        this.f1780x = d;
        this.f1781y = d2;
        this.f1782z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1780x = d;
        this.f1781y = d2;
        this.f1782z = d3;
        this.edge = z;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Point) {
            Point point = (Point) obj;
            return this.f1780x == point.f1780x && this.f1781y == point.f1781y && this.f1782z == point.f1782z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1780x + point.f1780x) * d, (this.f1781y + point.f1781y) * d, (this.f1782z + point.f1782z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1780x + point.f1780x, this.f1781y + point.f1781y, this.f1782z + point.f1782z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1780x - point.f1780x, this.f1781y - point.f1781y, this.f1782z - point.f1782z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1780x * d, this.f1781y * d, this.f1782z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1780x - point.f1780x, 2.0d) + Math.pow(this.f1781y - point.f1781y, 2.0d) + Math.pow(this.f1782z - point.f1782z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1780x, (float) this.f1781y);
    }
}
