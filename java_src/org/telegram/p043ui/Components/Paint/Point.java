package org.telegram.p043ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1749x;

    /* renamed from: y */
    public double f1750y;

    /* renamed from: z */
    public double f1751z;

    public Point(double d, double d2, double d3) {
        this.f1749x = d;
        this.f1750y = d2;
        this.f1751z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1749x = d;
        this.f1750y = d2;
        this.f1751z = d3;
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
            return this.f1749x == point.f1749x && this.f1750y == point.f1750y && this.f1751z == point.f1751z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1749x + point.f1749x) * d, (this.f1750y + point.f1750y) * d, (this.f1751z + point.f1751z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1749x + point.f1749x, this.f1750y + point.f1750y, this.f1751z + point.f1751z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1749x - point.f1749x, this.f1750y - point.f1750y, this.f1751z - point.f1751z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1749x * d, this.f1750y * d, this.f1751z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1749x - point.f1749x, 2.0d) + Math.pow(this.f1750y - point.f1750y, 2.0d) + Math.pow(this.f1751z - point.f1751z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1749x, (float) this.f1750y);
    }
}
