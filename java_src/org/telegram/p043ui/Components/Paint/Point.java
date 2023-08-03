package org.telegram.p043ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1770x;

    /* renamed from: y */
    public double f1771y;

    /* renamed from: z */
    public double f1772z;

    public Point(double d, double d2, double d3) {
        this.f1770x = d;
        this.f1771y = d2;
        this.f1772z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1770x = d;
        this.f1771y = d2;
        this.f1772z = d3;
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
            return this.f1770x == point.f1770x && this.f1771y == point.f1771y && this.f1772z == point.f1772z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1770x + point.f1770x) * d, (this.f1771y + point.f1771y) * d, (this.f1772z + point.f1772z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1770x + point.f1770x, this.f1771y + point.f1771y, this.f1772z + point.f1772z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1770x - point.f1770x, this.f1771y - point.f1771y, this.f1772z - point.f1772z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1770x * d, this.f1771y * d, this.f1772z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1770x - point.f1770x, 2.0d) + Math.pow(this.f1771y - point.f1771y, 2.0d) + Math.pow(this.f1772z - point.f1772z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1770x, (float) this.f1771y);
    }
}
