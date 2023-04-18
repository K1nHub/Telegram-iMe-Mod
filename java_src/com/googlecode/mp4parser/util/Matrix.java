package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class Matrix {

    /* renamed from: a */
    double f233a;

    /* renamed from: b */
    double f234b;

    /* renamed from: c */
    double f235c;

    /* renamed from: d */
    double f236d;

    /* renamed from: tx */
    double f237tx;

    /* renamed from: ty */
    double f238ty;

    /* renamed from: u */
    double f239u;

    /* renamed from: v */
    double f240v;

    /* renamed from: w */
    double f241w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f239u = d5;
        this.f240v = d6;
        this.f241w = d7;
        this.f233a = d;
        this.f234b = d2;
        this.f235c = d3;
        this.f236d = d4;
        this.f237tx = d8;
        this.f238ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Matrix.class != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f233a, this.f233a) == 0 && Double.compare(matrix.f234b, this.f234b) == 0 && Double.compare(matrix.f235c, this.f235c) == 0 && Double.compare(matrix.f236d, this.f236d) == 0 && Double.compare(matrix.f237tx, this.f237tx) == 0 && Double.compare(matrix.f238ty, this.f238ty) == 0 && Double.compare(matrix.f239u, this.f239u) == 0 && Double.compare(matrix.f240v, this.f240v) == 0 && Double.compare(matrix.f241w, this.f241w) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f239u);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f240v);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f241w);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f233a);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f234b);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f235c);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f236d);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f237tx);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f238ty);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)))) * 31) + ((int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32)))) * 31) + ((int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32)))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public String toString() {
        if (equals(ROTATE_0)) {
            return "Rotate 0°";
        }
        if (equals(ROTATE_90)) {
            return "Rotate 90°";
        }
        if (equals(ROTATE_180)) {
            return "Rotate 180°";
        }
        if (equals(ROTATE_270)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f239u + ", v=" + this.f240v + ", w=" + this.f241w + ", a=" + this.f233a + ", b=" + this.f234b + ", c=" + this.f235c + ", d=" + this.f236d + ", tx=" + this.f237tx + ", ty=" + this.f238ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f233a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f234b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f239u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f235c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f236d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f240v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f237tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f238ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f241w);
    }
}
