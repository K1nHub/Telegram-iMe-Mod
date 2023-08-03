package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2967S3 implements InterfaceC2853s {

    /* renamed from: a */
    int f921a;

    /* renamed from: b */
    final int f922b;

    /* renamed from: c */
    int f923c;

    /* renamed from: d */
    final int f924d;

    /* renamed from: e */
    Object[] f925e;

    /* renamed from: f */
    final /* synthetic */ C3009a4 f926f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2967S3(C3009a4 c3009a4, int i, int i2, int i3, int i4) {
        this.f926f = c3009a4;
        this.f921a = i;
        this.f922b = i2;
        this.f923c = i3;
        this.f924d = i4;
        Object[][] objArr = c3009a4.f966f;
        this.f925e = objArr == null ? c3009a4.f965e : objArr[i];
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f921a;
        int i2 = this.f922b;
        if (i < i2 || (i == i2 && this.f923c < this.f924d)) {
            Object[] objArr = this.f925e;
            int i3 = this.f923c;
            this.f923c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f923c == this.f925e.length) {
                this.f923c = 0;
                int i4 = this.f921a + 1;
                this.f921a = i4;
                Object[][] objArr2 = this.f926f.f966f;
                if (objArr2 != null && i4 <= this.f922b) {
                    this.f925e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return 16464;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        int i = this.f921a;
        int i2 = this.f922b;
        if (i == i2) {
            return this.f924d - this.f923c;
        }
        long[] jArr = this.f926f.f1019d;
        return ((jArr[i2] + this.f924d) - jArr[i]) - this.f923c;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f921a;
        int i3 = this.f922b;
        if (i2 < i3 || (i2 == i3 && this.f923c < this.f924d)) {
            int i4 = this.f923c;
            while (true) {
                i = this.f922b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f926f.f966f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f921a == i ? this.f925e : this.f926f.f966f[i];
            int i5 = this.f924d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f921a = this.f922b;
            this.f923c = this.f924d;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        int i = this.f921a;
        int i2 = this.f922b;
        if (i < i2) {
            C3009a4 c3009a4 = this.f926f;
            int i3 = i2 - 1;
            C2967S3 c2967s3 = new C2967S3(c3009a4, i, i3, this.f923c, c3009a4.f966f[i3].length);
            int i4 = this.f922b;
            this.f921a = i4;
            this.f923c = 0;
            this.f925e = this.f926f.f966f[i4];
            return c2967s3;
        } else if (i == i2) {
            int i5 = this.f924d;
            int i6 = this.f923c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2853s m632m = AbstractC2777I.m632m(this.f925e, i6, i6 + i7, 1040);
            this.f923c += i7;
            return m632m;
        } else {
            return null;
        }
    }
}
