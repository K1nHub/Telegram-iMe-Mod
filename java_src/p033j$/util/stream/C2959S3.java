package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2959S3 implements Spliterator {

    /* renamed from: a */
    int f971a;

    /* renamed from: b */
    final int f972b;

    /* renamed from: c */
    int f973c;

    /* renamed from: d */
    final int f974d;

    /* renamed from: e */
    Object[] f975e;

    /* renamed from: f */
    final /* synthetic */ C3001a4 f976f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2959S3(C3001a4 c3001a4, int i, int i2, int i3, int i4) {
        this.f976f = c3001a4;
        this.f971a = i;
        this.f972b = i2;
        this.f973c = i3;
        this.f974d = i4;
        Object[][] objArr = c3001a4.f1016f;
        this.f975e = objArr == null ? c3001a4.f1015e : objArr[i];
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo178b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f971a;
        int i2 = this.f972b;
        if (i < i2 || (i == i2 && this.f973c < this.f974d)) {
            Object[] objArr = this.f975e;
            int i3 = this.f973c;
            this.f973c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f973c == this.f975e.length) {
                this.f973c = 0;
                int i4 = this.f971a + 1;
                this.f971a = i4;
                Object[][] objArr2 = this.f976f.f1016f;
                if (objArr2 != null && i4 <= this.f972b) {
                    this.f975e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return 16464;
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        int i = this.f971a;
        int i2 = this.f972b;
        if (i == i2) {
            return this.f974d - this.f973c;
        }
        long[] jArr = this.f976f.f1069d;
        return ((jArr[i2] + this.f974d) - jArr[i]) - this.f973c;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f971a;
        int i3 = this.f972b;
        if (i2 < i3 || (i2 == i3 && this.f973c < this.f974d)) {
            int i4 = this.f973c;
            while (true) {
                i = this.f972b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f976f.f1016f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f971a == i ? this.f975e : this.f976f.f1016f[i];
            int i5 = this.f974d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f971a = this.f972b;
            this.f973c = this.f974d;
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2839k.m601d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        int i = this.f971a;
        int i2 = this.f972b;
        if (i < i2) {
            C3001a4 c3001a4 = this.f976f;
            int i3 = i2 - 1;
            C2959S3 c2959s3 = new C2959S3(c3001a4, i, i3, this.f973c, c3001a4.f1016f[i3].length);
            int i4 = this.f972b;
            this.f971a = i4;
            this.f973c = 0;
            this.f975e = this.f976f.f1016f[i4];
            return c2959s3;
        } else if (i == i2) {
            int i5 = this.f974d;
            int i6 = this.f973c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            Spliterator m672m = AbstractC2769F.m672m(this.f975e, i6, i6 + i7, 1040);
            this.f973c += i7;
            return m672m;
        } else {
            return null;
        }
    }
}
