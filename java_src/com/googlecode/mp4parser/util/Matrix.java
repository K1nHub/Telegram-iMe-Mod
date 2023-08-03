package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class Matrix {

    /* renamed from: a */
    double f321a;

    /* renamed from: b */
    double f322b;

    /* renamed from: c */
    double f323c;

    /* renamed from: d */
    double f324d;

    /* renamed from: tx */
    double f325tx;

    /* renamed from: ty */
    double f326ty;

    /* renamed from: u */
    double f327u;

    /* renamed from: v */
    double f328v;

    /* renamed from: w */
    double f329w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f327u = d5;
        this.f328v = d6;
        this.f329w = d7;
        this.f321a = d;
        this.f322b = d2;
        this.f323c = d3;
        this.f324d = d4;
        this.f325tx = d8;
        this.f326ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Matrix.class != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f321a, this.f321a) == 0 && Double.compare(matrix.f322b, this.f322b) == 0 && Double.compare(matrix.f323c, this.f323c) == 0 && Double.compare(matrix.f324d, this.f324d) == 0 && Double.compare(matrix.f325tx, this.f325tx) == 0 && Double.compare(matrix.f326ty, this.f326ty) == 0 && Double.compare(matrix.f327u, this.f327u) == 0 && Double.compare(matrix.f328v, this.f328v) == 0 && Double.compare(matrix.f329w, this.f329w) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f327u);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f328v);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f329w);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f321a);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f322b);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f323c);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f324d);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f325tx);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f326ty);
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
        return "Matrix{u=" + this.f327u + ", v=" + this.f328v + ", w=" + this.f329w + ", a=" + this.f321a + ", b=" + this.f322b + ", c=" + this.f323c + ", d=" + this.f324d + ", tx=" + this.f325tx + ", ty=" + this.f326ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f321a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f322b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f327u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f323c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f324d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f328v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f325tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f326ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f329w);
    }
}
