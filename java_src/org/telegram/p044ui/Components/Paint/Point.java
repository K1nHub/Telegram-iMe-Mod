package org.telegram.p044ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1660x;

    /* renamed from: y */
    public double f1661y;

    /* renamed from: z */
    public double f1662z;

    public Point(double d, double d2, double d3) {
        this.f1660x = d;
        this.f1661y = d2;
        this.f1662z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1660x = d;
        this.f1661y = d2;
        this.f1662z = d3;
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
            return this.f1660x == point.f1660x && this.f1661y == point.f1661y && this.f1662z == point.f1662z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1660x + point.f1660x) * d, (this.f1661y + point.f1661y) * d, (this.f1662z + point.f1662z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1660x + point.f1660x, this.f1661y + point.f1661y, this.f1662z + point.f1662z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1660x - point.f1660x, this.f1661y - point.f1661y, this.f1662z - point.f1662z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1660x * d, this.f1661y * d, this.f1662z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1660x - point.f1660x, 2.0d) + Math.pow(this.f1661y - point.f1661y, 2.0d) + Math.pow(this.f1662z - point.f1662z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1660x, (float) this.f1661y);
    }
}
