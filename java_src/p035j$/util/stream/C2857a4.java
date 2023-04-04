package p035j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import p035j$.lang.InterfaceC2575e;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.wrappers.C3069h;
import p035j$.wrappers.C3099w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
public class C2857a4 extends AbstractC2876e implements Consumer, Iterable, InterfaceC2575e {

    /* renamed from: e */
    protected Object[] f882e = new Object[16];

    /* renamed from: f */
    protected Object[][] f883f;

    /* renamed from: v */
    private void m451v() {
        if (this.f883f == null) {
            Object[][] objArr = new Object[8];
            this.f883f = objArr;
            this.f936d = new long[8];
            objArr[0] = this.f882e;
        }
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f934b == this.f882e.length) {
            m451v();
            int i = this.f935c;
            int i2 = i + 1;
            Object[][] objArr = this.f883f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m452u(m453t() + 1);
            }
            this.f934b = 0;
            int i3 = this.f935c + 1;
            this.f935c = i3;
            this.f882e = this.f883f[i3];
        }
        Object[] objArr2 = this.f882e;
        int i4 = this.f934b;
        this.f934b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.stream.AbstractC2876e
    public void clear() {
        Object[][] objArr = this.f883f;
        if (objArr != null) {
            this.f882e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f882e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f883f = null;
            this.f936d = null;
        } else {
            for (int i2 = 0; i2 < this.f934b; i2++) {
                this.f882e[i2] = null;
            }
        }
        this.f934b = 0;
        this.f935c = 0;
    }

    @Override // p035j$.lang.InterfaceC2575e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f935c; i++) {
            for (Object obj : this.f883f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f934b; i2++) {
            consumer.accept(this.f882e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3099w.m103b(consumer));
    }

    /* renamed from: i */
    public void mo331i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f935c == 0) {
            System.arraycopy(this.f882e, 0, objArr, i, this.f934b);
            return;
        }
        for (int i2 = 0; i2 < this.f935c; i2++) {
            Object[][] objArr2 = this.f883f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f883f[i2].length;
        }
        int i3 = this.f934b;
        if (i3 > 0) {
            System.arraycopy(this.f882e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2625I.m628i(spliterator());
    }

    @Override // java.lang.Iterable, p035j$.lang.InterfaceC2575e
    public InterfaceC2701s spliterator() {
        return new C2815S3(this, 0, this.f935c, 0, this.f934b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3069h.m144a(spliterator());
    }

    /* renamed from: t */
    protected long m453t() {
        int i = this.f935c;
        if (i == 0) {
            return this.f882e.length;
        }
        return this.f883f[i].length + this.f936d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C2858b(arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public final void m452u(long j) {
        Object[][] objArr;
        int i;
        long m453t = m453t();
        if (j <= m453t) {
            return;
        }
        m451v();
        int i2 = this.f935c;
        while (true) {
            i2++;
            if (j <= m453t) {
                return;
            }
            Object[][] objArr2 = this.f883f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f883f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f936d = Arrays.copyOf(this.f936d, length);
            }
            int m425s = m425s(i2);
            this.f883f[i2] = new Object[m425s];
            long[] jArr = this.f936d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m453t += m425s;
        }
    }
}
