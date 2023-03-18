package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2725S3 implements InterfaceC2611s {

    /* renamed from: a */
    int f832a;

    /* renamed from: b */
    final int f833b;

    /* renamed from: c */
    int f834c;

    /* renamed from: d */
    final int f835d;

    /* renamed from: e */
    Object[] f836e;

    /* renamed from: f */
    final /* synthetic */ C2767a4 f837f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2725S3(C2767a4 c2767a4, int i, int i2, int i3, int i4) {
        this.f837f = c2767a4;
        this.f832a = i;
        this.f833b = i2;
        this.f834c = i3;
        this.f835d = i4;
        Object[][] objArr = c2767a4.f877f;
        this.f836e = objArr == null ? c2767a4.f876e : objArr[i];
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f832a;
        int i2 = this.f833b;
        if (i < i2 || (i == i2 && this.f834c < this.f835d)) {
            Object[] objArr = this.f836e;
            int i3 = this.f834c;
            this.f834c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f834c == this.f836e.length) {
                this.f834c = 0;
                int i4 = this.f832a + 1;
                this.f832a = i4;
                Object[][] objArr2 = this.f837f.f877f;
                if (objArr2 != null && i4 <= this.f833b) {
                    this.f836e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return 16464;
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        int i = this.f832a;
        int i2 = this.f833b;
        if (i == i2) {
            return this.f835d - this.f834c;
        }
        long[] jArr = this.f837f.f930d;
        return ((jArr[i2] + this.f835d) - jArr[i]) - this.f834c;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f832a;
        int i3 = this.f833b;
        if (i2 < i3 || (i2 == i3 && this.f834c < this.f835d)) {
            int i4 = this.f834c;
            while (true) {
                i = this.f833b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f837f.f877f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f832a == i ? this.f836e : this.f837f.f877f[i];
            int i5 = this.f835d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f832a = this.f833b;
            this.f834c = this.f835d;
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2611s
    public InterfaceC2611s trySplit() {
        int i = this.f832a;
        int i2 = this.f833b;
        if (i < i2) {
            C2767a4 c2767a4 = this.f837f;
            int i3 = i2 - 1;
            C2725S3 c2725s3 = new C2725S3(c2767a4, i, i3, this.f834c, c2767a4.f877f[i3].length);
            int i4 = this.f833b;
            this.f832a = i4;
            this.f834c = 0;
            this.f836e = this.f837f.f877f[i4];
            return c2725s3;
        } else if (i == i2) {
            int i5 = this.f835d;
            int i6 = this.f834c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2611s m630m = AbstractC2535I.m630m(this.f836e, i6, i6 + i7, 1040);
            this.f834c += i7;
            return m630m;
        } else {
            return null;
        }
    }
}
