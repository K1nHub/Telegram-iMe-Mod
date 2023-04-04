package p035j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2815S3 implements InterfaceC2701s {

    /* renamed from: a */
    int f838a;

    /* renamed from: b */
    final int f839b;

    /* renamed from: c */
    int f840c;

    /* renamed from: d */
    final int f841d;

    /* renamed from: e */
    Object[] f842e;

    /* renamed from: f */
    final /* synthetic */ C2857a4 f843f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2815S3(C2857a4 c2857a4, int i, int i2, int i3, int i4) {
        this.f843f = c2857a4;
        this.f838a = i;
        this.f839b = i2;
        this.f840c = i3;
        this.f841d = i4;
        Object[][] objArr = c2857a4.f883f;
        this.f842e = objArr == null ? c2857a4.f882e : objArr[i];
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f838a;
        int i2 = this.f839b;
        if (i < i2 || (i == i2 && this.f840c < this.f841d)) {
            Object[] objArr = this.f842e;
            int i3 = this.f840c;
            this.f840c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f840c == this.f842e.length) {
                this.f840c = 0;
                int i4 = this.f838a + 1;
                this.f838a = i4;
                Object[][] objArr2 = this.f843f.f883f;
                if (objArr2 != null && i4 <= this.f839b) {
                    this.f842e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return 16464;
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        int i = this.f838a;
        int i2 = this.f839b;
        if (i == i2) {
            return this.f841d - this.f840c;
        }
        long[] jArr = this.f843f.f936d;
        return ((jArr[i2] + this.f841d) - jArr[i]) - this.f840c;
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f838a;
        int i3 = this.f839b;
        if (i2 < i3 || (i2 == i3 && this.f840c < this.f841d)) {
            int i4 = this.f840c;
            while (true) {
                i = this.f839b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f843f.f883f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f838a == i ? this.f842e : this.f843f.f883f[i];
            int i5 = this.f841d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f838a = this.f839b;
            this.f840c = this.f841d;
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC2701s
    public InterfaceC2701s trySplit() {
        int i = this.f838a;
        int i2 = this.f839b;
        if (i < i2) {
            C2857a4 c2857a4 = this.f843f;
            int i3 = i2 - 1;
            C2815S3 c2815s3 = new C2815S3(c2857a4, i, i3, this.f840c, c2857a4.f883f[i3].length);
            int i4 = this.f839b;
            this.f838a = i4;
            this.f840c = 0;
            this.f842e = this.f843f.f883f[i4];
            return c2815s3;
        } else if (i == i2) {
            int i5 = this.f841d;
            int i6 = this.f840c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2701s m624m = AbstractC2625I.m624m(this.f842e, i6, i6 + i7, 1040);
            this.f840c += i7;
            return m624m;
        } else {
            return null;
        }
    }
}
