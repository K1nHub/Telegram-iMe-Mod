package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S3 */
/* loaded from: classes2.dex */
public class C3106S3 implements InterfaceC2992s {

    /* renamed from: a */
    int f931a;

    /* renamed from: b */
    final int f932b;

    /* renamed from: c */
    int f933c;

    /* renamed from: d */
    final int f934d;

    /* renamed from: e */
    Object[] f935e;

    /* renamed from: f */
    final /* synthetic */ C3148a4 f936f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3106S3(C3148a4 c3148a4, int i, int i2, int i3, int i4) {
        this.f936f = c3148a4;
        this.f931a = i;
        this.f932b = i2;
        this.f933c = i3;
        this.f934d = i4;
        Object[][] objArr = c3148a4.f976f;
        this.f935e = objArr == null ? c3148a4.f975e : objArr[i];
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f931a;
        int i2 = this.f932b;
        if (i < i2 || (i == i2 && this.f933c < this.f934d)) {
            Object[] objArr = this.f935e;
            int i3 = this.f933c;
            this.f933c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.f933c == this.f935e.length) {
                this.f933c = 0;
                int i4 = this.f931a + 1;
                this.f931a = i4;
                Object[][] objArr2 = this.f936f.f976f;
                if (objArr2 != null && i4 <= this.f932b) {
                    this.f935e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return 16464;
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        int i = this.f931a;
        int i2 = this.f932b;
        if (i == i2) {
            return this.f934d - this.f933c;
        }
        long[] jArr = this.f936f.f1029d;
        return ((jArr[i2] + this.f934d) - jArr[i]) - this.f933c;
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        int i2 = this.f931a;
        int i3 = this.f932b;
        if (i2 < i3 || (i2 == i3 && this.f933c < this.f934d)) {
            int i4 = this.f933c;
            while (true) {
                i = this.f932b;
                if (i2 >= i) {
                    break;
                }
                Object[] objArr = this.f936f.f976f[i2];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i4 = 0;
                i2++;
            }
            Object[] objArr2 = this.f931a == i ? this.f935e : this.f936f.f976f[i];
            int i5 = this.f934d;
            while (i4 < i5) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f931a = this.f932b;
            this.f933c = this.f934d;
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2992s
    public InterfaceC2992s trySplit() {
        int i = this.f931a;
        int i2 = this.f932b;
        if (i < i2) {
            C3148a4 c3148a4 = this.f936f;
            int i3 = i2 - 1;
            C3106S3 c3106s3 = new C3106S3(c3148a4, i, i3, this.f933c, c3148a4.f976f[i3].length);
            int i4 = this.f932b;
            this.f931a = i4;
            this.f933c = 0;
            this.f935e = this.f936f.f976f[i4];
            return c3106s3;
        } else if (i == i2) {
            int i5 = this.f934d;
            int i6 = this.f933c;
            int i7 = (i5 - i6) / 2;
            if (i7 == 0) {
                return null;
            }
            InterfaceC2992s m632m = AbstractC2916I.m632m(this.f935e, i6, i6 + i7, 1040);
            this.f933c += i7;
            return m632m;
        } else {
            return null;
        }
    }
}
