package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C2802S3 implements InterfaceC2688s {

    /* renamed from: a */
    int f833a;

    /* renamed from: b */
    final int f834b;

    /* renamed from: c */
    int f835c;

    /* renamed from: d */
    final int f836d;

    /* renamed from: e */
    Object[] f837e;

    /* renamed from: f */
    final /* synthetic */ C2844a4 f838f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2802S3(C2844a4 c2844a4, int i, int i2, int i3, int i4) {
        this.f838f = c2844a4;
        this.f833a = i;
        this.f834b = i2;
        this.f835c = i3;
        this.f836d = i4;
        Object[][] objArr = c2844a4.f878f;
        this.f837e = objArr == null ? c2844a4.f877e : objArr[i];
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f833a;
        int i2 = this.f834b;
        if (i < i2 || (i == i2 && this.f835c < this.f836d)) {
            Object[] objArr = this.f837e;
            int i3 = this.f835c;
            this.f835c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f835c == this.f837e.length) {
                this.f835c = 0;
                int i4 = this.f833a + 1;
                this.f833a = i4;
                Object[][] objArr2 = this.f838f.f878f;
                if (objArr2 != null && i4 <= this.f834b) {
                    this.f837e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2688s
    public int characteristics() {
        return 16464;
    }

    @Override // p034j$.util.InterfaceC2688s
    public long estimateSize() {
        int i = this.f833a;
        int i2 = this.f834b;
        if (i == i2) {
            return this.f836d - this.f835c;
        }
        long[] jArr = this.f838f.f931d;
        return ((jArr[i2] + this.f836d) - jArr[i]) - this.f835c;
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f833a;
        int i3 = this.f834b;
        if (i2 < i3 || (i2 == i3 && this.f835c < this.f836d)) {
            int i4 = this.f835c;
            while (true) {
                i = this.f834b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f838f.f878f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f833a == i ? this.f837e : this.f838f.f878f[i];
            int i5 = this.f836d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f833a = this.f834b;
            this.f835c = this.f836d;
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2688s
    public InterfaceC2688s trySplit() {
        int i = this.f833a;
        int i2 = this.f834b;
        if (i < i2) {
            C2844a4 c2844a4 = this.f838f;
            int i3 = i2 - 1;
            C2802S3 c2802s3 = new C2802S3(c2844a4, i, i3, this.f835c, c2844a4.f878f[i3].length);
            int i4 = this.f834b;
            this.f833a = i4;
            this.f835c = 0;
            this.f837e = this.f838f.f878f[i4];
            return c2802s3;
        } else if (i == i2) {
            int i5 = this.f836d;
            int i6 = this.f835c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2688s m610m = AbstractC2612I.m610m(this.f837e, i6, i6 + i7, 1040);
            this.f835c += i7;
            return m610m;
        } else {
            return null;
        }
    }
}
