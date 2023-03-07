package org.telegram.p048ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1720x;

    /* renamed from: y */
    public double f1721y;

    /* renamed from: z */
    public double f1722z;

    public Point(double d, double d2, double d3) {
        this.f1720x = d;
        this.f1721y = d2;
        this.f1722z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1720x = d;
        this.f1721y = d2;
        this.f1722z = d3;
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
            return this.f1720x == point.f1720x && this.f1721y == point.f1721y && this.f1722z == point.f1722z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1720x + point.f1720x) * d, (this.f1721y + point.f1721y) * d, (this.f1722z + point.f1722z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1720x + point.f1720x, this.f1721y + point.f1721y, this.f1722z + point.f1722z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1720x - point.f1720x, this.f1721y - point.f1721y, this.f1722z - point.f1722z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1720x * d, this.f1721y * d, this.f1722z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1720x - point.f1720x, 2.0d) + Math.pow(this.f1721y - point.f1721y, 2.0d) + Math.pow(this.f1722z - point.f1722z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1720x, (float) this.f1721y);
    }
}
