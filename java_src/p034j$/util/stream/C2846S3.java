package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2846S3 implements InterfaceC2732s {

    /* renamed from: a */
    int f836a;

    /* renamed from: b */
    final int f837b;

    /* renamed from: c */
    int f838c;

    /* renamed from: d */
    final int f839d;

    /* renamed from: e */
    Object[] f840e;

    /* renamed from: f */
    final /* synthetic */ C2888a4 f841f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2846S3(C2888a4 c2888a4, int i, int i2, int i3, int i4) {
        this.f841f = c2888a4;
        this.f836a = i;
        this.f837b = i2;
        this.f838c = i3;
        this.f839d = i4;
        Object[][] objArr = c2888a4.f881f;
        this.f840e = objArr == null ? c2888a4.f880e : objArr[i];
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f836a;
        int i2 = this.f837b;
        if (i < i2 || (i == i2 && this.f838c < this.f839d)) {
            Object[] objArr = this.f840e;
            int i3 = this.f838c;
            this.f838c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f838c == this.f840e.length) {
                this.f838c = 0;
                int i4 = this.f836a + 1;
                this.f836a = i4;
                Object[][] objArr2 = this.f841f.f881f;
                if (objArr2 != null && i4 <= this.f837b) {
                    this.f840e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2732s
    public int characteristics() {
        return 16464;
    }

    @Override // p034j$.util.InterfaceC2732s
    public long estimateSize() {
        int i = this.f836a;
        int i2 = this.f837b;
        if (i == i2) {
            return this.f839d - this.f838c;
        }
        long[] jArr = this.f841f.f934d;
        return ((jArr[i2] + this.f839d) - jArr[i]) - this.f838c;
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f836a;
        int i3 = this.f837b;
        if (i2 < i3 || (i2 == i3 && this.f838c < this.f839d)) {
            int i4 = this.f838c;
            while (true) {
                i = this.f837b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f841f.f881f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f836a == i ? this.f840e : this.f841f.f881f[i];
            int i5 = this.f839d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f836a = this.f837b;
            this.f838c = this.f839d;
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC2732s
    public InterfaceC2732s trySplit() {
        int i = this.f836a;
        int i2 = this.f837b;
        if (i < i2) {
            C2888a4 c2888a4 = this.f841f;
            int i3 = i2 - 1;
            C2846S3 c2846s3 = new C2846S3(c2888a4, i, i3, this.f838c, c2888a4.f881f[i3].length);
            int i4 = this.f837b;
            this.f836a = i4;
            this.f838c = 0;
            this.f840e = this.f841f.f881f[i4];
            return c2846s3;
        } else if (i == i2) {
            int i5 = this.f839d;
            int i6 = this.f838c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2732s m614m = AbstractC2656I.m614m(this.f840e, i6, i6 + i7, 1040);
            this.f838c += i7;
            return m614m;
        } else {
            return null;
        }
    }
}
