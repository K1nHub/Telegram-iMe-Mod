package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2601S3 implements InterfaceC2487s {

    /* renamed from: a */
    int f827a;

    /* renamed from: b */
    final int f828b;

    /* renamed from: c */
    int f829c;

    /* renamed from: d */
    final int f830d;

    /* renamed from: e */
    Object[] f831e;

    /* renamed from: f */
    final /* synthetic */ C2643a4 f832f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2601S3(C2643a4 c2643a4, int i, int i2, int i3, int i4) {
        this.f832f = c2643a4;
        this.f827a = i;
        this.f828b = i2;
        this.f829c = i3;
        this.f830d = i4;
        Object[][] objArr = c2643a4.f872f;
        this.f831e = objArr == null ? c2643a4.f871e : objArr[i];
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f827a;
        int i2 = this.f828b;
        if (i < i2 || (i == i2 && this.f829c < this.f830d)) {
            Object[] objArr = this.f831e;
            int i3 = this.f829c;
            this.f829c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f829c == this.f831e.length) {
                this.f829c = 0;
                int i4 = this.f827a + 1;
                this.f827a = i4;
                Object[][] objArr2 = this.f832f.f872f;
                if (objArr2 != null && i4 <= this.f828b) {
                    this.f831e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return 16464;
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        int i = this.f827a;
        int i2 = this.f828b;
        if (i == i2) {
            return this.f830d - this.f829c;
        }
        long[] jArr = this.f832f.f925d;
        return ((jArr[i2] + this.f830d) - jArr[i]) - this.f829c;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f827a;
        int i3 = this.f828b;
        if (i2 < i3 || (i2 == i3 && this.f829c < this.f830d)) {
            int i4 = this.f829c;
            while (true) {
                i = this.f828b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f832f.f872f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f827a == i ? this.f831e : this.f832f.f872f[i];
            int i5 = this.f830d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f827a = this.f828b;
            this.f829c = this.f830d;
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2487s
    public InterfaceC2487s trySplit() {
        int i = this.f827a;
        int i2 = this.f828b;
        if (i < i2) {
            C2643a4 c2643a4 = this.f832f;
            int i3 = i2 - 1;
            C2601S3 c2601s3 = new C2601S3(c2643a4, i, i3, this.f829c, c2643a4.f872f[i3].length);
            int i4 = this.f828b;
            this.f827a = i4;
            this.f829c = 0;
            this.f831e = this.f832f.f872f[i4];
            return c2601s3;
        } else if (i == i2) {
            int i5 = this.f830d;
            int i6 = this.f829c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2487s m630m = AbstractC2411I.m630m(this.f831e, i6, i6 + i7, 1040);
            this.f829c += i7;
            return m630m;
        } else {
            return null;
        }
    }
}
