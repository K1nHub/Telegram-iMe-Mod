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
    int f918a;

    /* renamed from: b */
    final int f919b;

    /* renamed from: c */
    int f920c;

    /* renamed from: d */
    final int f921d;

    /* renamed from: e */
    Object[] f922e;

    /* renamed from: f */
    final /* synthetic */ C3009a4 f923f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2967S3(C3009a4 c3009a4, int i, int i2, int i3, int i4) {
        this.f923f = c3009a4;
        this.f918a = i;
        this.f919b = i2;
        this.f920c = i3;
        this.f921d = i4;
        Object[][] objArr = c3009a4.f963f;
        this.f922e = objArr == null ? c3009a4.f962e : objArr[i];
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f918a;
        int i2 = this.f919b;
        if (i < i2 || (i == i2 && this.f920c < this.f921d)) {
            Object[] objArr = this.f922e;
            int i3 = this.f920c;
            this.f920c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f920c == this.f922e.length) {
                this.f920c = 0;
                int i4 = this.f918a + 1;
                this.f918a = i4;
                Object[][] objArr2 = this.f923f.f963f;
                if (objArr2 != null && i4 <= this.f919b) {
                    this.f922e = objArr2[i4];
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
        int i = this.f918a;
        int i2 = this.f919b;
        if (i == i2) {
            return this.f921d - this.f920c;
        }
        long[] jArr = this.f923f.f1016d;
        return ((jArr[i2] + this.f921d) - jArr[i]) - this.f920c;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f918a;
        int i3 = this.f919b;
        if (i2 < i3 || (i2 == i3 && this.f920c < this.f921d)) {
            int i4 = this.f920c;
            while (true) {
                i = this.f919b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f923f.f963f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f918a == i ? this.f922e : this.f923f.f963f[i];
            int i5 = this.f921d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f918a = this.f919b;
            this.f920c = this.f921d;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        int i = this.f918a;
        int i2 = this.f919b;
        if (i < i2) {
            C3009a4 c3009a4 = this.f923f;
            int i3 = i2 - 1;
            C2967S3 c2967s3 = new C2967S3(c3009a4, i, i3, this.f920c, c3009a4.f963f[i3].length);
            int i4 = this.f919b;
            this.f918a = i4;
            this.f920c = 0;
            this.f922e = this.f923f.f963f[i4];
            return c2967s3;
        } else if (i == i2) {
            int i5 = this.f921d;
            int i6 = this.f920c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2853s m614m = AbstractC2777I.m614m(this.f922e, i6, i6 + i7, 1040);
            this.f920c += i7;
            return m614m;
        } else {
            return null;
        }
    }
}
