package org.telegram.p048ui.Components.Paint;

import android.graphics.PointF;
/* renamed from: org.telegram.ui.Components.Paint.Point */
/* loaded from: classes6.dex */
public class Point {
    public boolean edge;

    /* renamed from: x */
    public double f1732x;

    /* renamed from: y */
    public double f1733y;

    /* renamed from: z */
    public double f1734z;

    public Point(double d, double d2, double d3) {
        this.f1732x = d;
        this.f1733y = d2;
        this.f1734z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1732x = d;
        this.f1733y = d2;
        this.f1734z = d3;
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
            return this.f1732x == point.f1732x && this.f1733y == point.f1733y && this.f1734z == point.f1734z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplySum(Point point, double d) {
        return new Point((this.f1732x + point.f1732x) * d, (this.f1733y + point.f1733y) * d, (this.f1734z + point.f1734z) * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point add(Point point) {
        return new Point(this.f1732x + point.f1732x, this.f1733y + point.f1733y, this.f1734z + point.f1734z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point substract(Point point) {
        return new Point(this.f1732x - point.f1732x, this.f1733y - point.f1733y, this.f1734z - point.f1734z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point multiplyByScalar(double d) {
        return new Point(this.f1732x * d, this.f1733y * d, this.f1734z * d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1732x - point.f1732x, 2.0d) + Math.pow(this.f1733y - point.f1733y, 2.0d) + Math.pow(this.f1734z - point.f1734z, 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointF toPointF() {
        return new PointF((float) this.f1732x, (float) this.f1733y);
    }
}
