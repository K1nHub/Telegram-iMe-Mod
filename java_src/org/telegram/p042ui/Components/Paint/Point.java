package org.telegram.p042ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1859x;

    /* renamed from: y */
    public double f1860y;

    /* renamed from: z */
    public double f1861z;

    public Point(double d, double d2, double d3) {
        this.f1859x = d;
        this.f1860y = d2;
        this.f1861z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1859x = d;
        this.f1860y = d2;
        this.f1861z = d3;
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
            return this.f1859x == point.f1859x && this.f1860y == point.f1860y && this.f1861z == point.f1861z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1859x + point.f1859x) * d, (this.f1860y + point.f1860y) * d, (this.f1861z + point.f1861z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1859x + point.f1859x, this.f1860y + point.f1860y, this.f1861z + point.f1861z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1859x - point.f1859x, this.f1860y - point.f1860y, this.f1861z - point.f1861z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1859x * d, this.f1860y * d, this.f1861z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1859x - point.f1859x, 2.0d) + Math.pow(this.f1860y - point.f1860y, 2.0d) + Math.pow(this.f1861z - point.f1861z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1859x, (float) this.f1860y);
    }
}
