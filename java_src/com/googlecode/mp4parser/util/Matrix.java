package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class Matrix {

    /* renamed from: a */
    double f236a;

    /* renamed from: b */
    double f237b;

    /* renamed from: c */
    double f238c;

    /* renamed from: d */
    double f239d;

    /* renamed from: tx */
    double f240tx;

    /* renamed from: ty */
    double f241ty;

    /* renamed from: u */
    double f242u;

    /* renamed from: v */
    double f243v;

    /* renamed from: w */
    double f244w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f242u = d5;
        this.f243v = d6;
        this.f244w = d7;
        this.f236a = d;
        this.f237b = d2;
        this.f238c = d3;
        this.f239d = d4;
        this.f240tx = d8;
        this.f241ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Matrix.class != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f236a, this.f236a) == 0 && Double.compare(matrix.f237b, this.f237b) == 0 && Double.compare(matrix.f238c, this.f238c) == 0 && Double.compare(matrix.f239d, this.f239d) == 0 && Double.compare(matrix.f240tx, this.f240tx) == 0 && Double.compare(matrix.f241ty, this.f241ty) == 0 && Double.compare(matrix.f242u, this.f242u) == 0 && Double.compare(matrix.f243v, this.f243v) == 0 && Double.compare(matrix.f244w, this.f244w) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f242u);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f243v);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f244w);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f236a);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f237b);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f238c);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f239d);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f240tx);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f241ty);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)))) * 31) + ((int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32)))) * 31) + ((int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32)))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
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
        return "Matrix{u=" + this.f242u + ", v=" + this.f243v + ", w=" + this.f244w + ", a=" + this.f236a + ", b=" + this.f237b + ", c=" + this.f238c + ", d=" + this.f239d + ", tx=" + this.f240tx + ", ty=" + this.f241ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f236a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f237b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f242u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f238c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f239d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f243v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f240tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f241ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f244w);
    }
}
