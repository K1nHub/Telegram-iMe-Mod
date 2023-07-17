package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class Matrix {

    /* renamed from: a */
    double f318a;

    /* renamed from: b */
    double f319b;

    /* renamed from: c */
    double f320c;

    /* renamed from: d */
    double f321d;

    /* renamed from: tx */
    double f322tx;

    /* renamed from: ty */
    double f323ty;

    /* renamed from: u */
    double f324u;

    /* renamed from: v */
    double f325v;

    /* renamed from: w */
    double f326w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f324u = d5;
        this.f325v = d6;
        this.f326w = d7;
        this.f318a = d;
        this.f319b = d2;
        this.f320c = d3;
        this.f321d = d4;
        this.f322tx = d8;
        this.f323ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Matrix.class != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f318a, this.f318a) == 0 && Double.compare(matrix.f319b, this.f319b) == 0 && Double.compare(matrix.f320c, this.f320c) == 0 && Double.compare(matrix.f321d, this.f321d) == 0 && Double.compare(matrix.f322tx, this.f322tx) == 0 && Double.compare(matrix.f323ty, this.f323ty) == 0 && Double.compare(matrix.f324u, this.f324u) == 0 && Double.compare(matrix.f325v, this.f325v) == 0 && Double.compare(matrix.f326w, this.f326w) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f324u);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f325v);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f326w);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f318a);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f319b);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f320c);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f321d);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f322tx);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f323ty);
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
        return "Matrix{u=" + this.f324u + ", v=" + this.f325v + ", w=" + this.f326w + ", a=" + this.f318a + ", b=" + this.f319b + ", c=" + this.f320c + ", d=" + this.f321d + ", tx=" + this.f322tx + ", ty=" + this.f323ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f318a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f319b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f324u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f320c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f321d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f325v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f322tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f323ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f326w);
    }
}
