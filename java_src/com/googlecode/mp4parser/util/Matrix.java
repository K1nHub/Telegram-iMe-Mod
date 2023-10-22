package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class Matrix {

    /* renamed from: a */
    double f262a;

    /* renamed from: b */
    double f263b;

    /* renamed from: c */
    double f264c;

    /* renamed from: d */
    double f265d;

    /* renamed from: tx */
    double f266tx;

    /* renamed from: ty */
    double f267ty;

    /* renamed from: u */
    double f268u;

    /* renamed from: v */
    double f269v;

    /* renamed from: w */
    double f270w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f268u = d5;
        this.f269v = d6;
        this.f270w = d7;
        this.f262a = d;
        this.f263b = d2;
        this.f264c = d3;
        this.f265d = d4;
        this.f266tx = d8;
        this.f267ty = d9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Matrix.class != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.f262a, this.f262a) == 0 && Double.compare(matrix.f263b, this.f263b) == 0 && Double.compare(matrix.f264c, this.f264c) == 0 && Double.compare(matrix.f265d, this.f265d) == 0 && Double.compare(matrix.f266tx, this.f266tx) == 0 && Double.compare(matrix.f267ty, this.f267ty) == 0 && Double.compare(matrix.f268u, this.f268u) == 0 && Double.compare(matrix.f269v, this.f269v) == 0 && Double.compare(matrix.f270w, this.f270w) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f268u);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f269v);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f270w);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f262a);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f263b);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f264c);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f265d);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f266tx);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f267ty);
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
        return "Matrix{u=" + this.f268u + ", v=" + this.f269v + ", w=" + this.f270w + ", a=" + this.f262a + ", b=" + this.f263b + ", c=" + this.f264c + ", d=" + this.f265d + ", tx=" + this.f266tx + ", ty=" + this.f267ty + '}';
    }

    public static Matrix fromFileOrder(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return new Matrix(d, d2, d4, d5, d3, d6, d9, d7, d8);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f262a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f263b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f268u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f264c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f265d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f269v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f266tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f267ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f270w);
    }
}
