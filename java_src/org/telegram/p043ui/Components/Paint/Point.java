package org.telegram.p043ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1864x;

    /* renamed from: y */
    public double f1865y;

    /* renamed from: z */
    public double f1866z;

    public Point(double d, double d2, double d3) {
        this.f1864x = d;
        this.f1865y = d2;
        this.f1866z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1864x = d;
        this.f1865y = d2;
        this.f1866z = d3;
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
            return this.f1864x == point.f1864x && this.f1865y == point.f1865y && this.f1866z == point.f1866z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1864x + point.f1864x) * d, (this.f1865y + point.f1865y) * d, (this.f1866z + point.f1866z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1864x + point.f1864x, this.f1865y + point.f1865y, this.f1866z + point.f1866z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1864x - point.f1864x, this.f1865y - point.f1865y, this.f1866z - point.f1866z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1864x * d, this.f1865y * d, this.f1866z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1864x - point.f1864x, 2.0d) + Math.pow(this.f1865y - point.f1865y, 2.0d) + Math.pow(this.f1866z - point.f1866z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1864x, (float) this.f1865y);
    }
}
