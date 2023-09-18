package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C3022S3 implements InterfaceC2908s {

    /* renamed from: a */
    int f922a;

    /* renamed from: b */
    final int f923b;

    /* renamed from: c */
    int f924c;

    /* renamed from: d */
    final int f925d;

    /* renamed from: e */
    Object[] f926e;

    /* renamed from: f */
    final /* synthetic */ C3064a4 f927f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3022S3(C3064a4 c3064a4, int i, int i2, int i3, int i4) {
        this.f927f = c3064a4;
        this.f922a = i;
        this.f923b = i2;
        this.f924c = i3;
        this.f925d = i4;
        Object[][] objArr = c3064a4.f967f;
        this.f926e = objArr == null ? c3064a4.f966e : objArr[i];
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f922a;
        int i2 = this.f923b;
        if (i < i2 || (i == i2 && this.f924c < this.f925d)) {
            Object[] objArr = this.f926e;
            int i3 = this.f924c;
            this.f924c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f924c == this.f926e.length) {
                this.f924c = 0;
                int i4 = this.f922a + 1;
                this.f922a = i4;
                Object[][] objArr2 = this.f927f.f967f;
                if (objArr2 != null && i4 <= this.f923b) {
                    this.f926e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return 16464;
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        int i = this.f922a;
        int i2 = this.f923b;
        if (i == i2) {
            return this.f925d - this.f924c;
        }
        long[] jArr = this.f927f.f1020d;
        return ((jArr[i2] + this.f925d) - jArr[i]) - this.f924c;
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f922a;
        int i3 = this.f923b;
        if (i2 < i3 || (i2 == i3 && this.f924c < this.f925d)) {
            int i4 = this.f924c;
            while (true) {
                i = this.f923b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f927f.f967f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f922a == i ? this.f926e : this.f927f.f967f[i];
            int i5 = this.f925d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f922a = this.f923b;
            this.f924c = this.f925d;
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2908s
    public InterfaceC2908s trySplit() {
        int i = this.f922a;
        int i2 = this.f923b;
        if (i < i2) {
            C3064a4 c3064a4 = this.f927f;
            int i3 = i2 - 1;
            C3022S3 c3022s3 = new C3022S3(c3064a4, i, i3, this.f924c, c3064a4.f967f[i3].length);
            int i4 = this.f923b;
            this.f922a = i4;
            this.f924c = 0;
            this.f926e = this.f927f.f967f[i4];
            return c3022s3;
        } else if (i == i2) {
            int i5 = this.f925d;
            int i6 = this.f924c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2908s m632m = AbstractC2832I.m632m(this.f926e, i6, i6 + i7, 1040);
            this.f924c += i7;
            return m632m;
        } else {
            return null;
        }
    }
}
