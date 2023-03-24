package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2499e;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.wrappers.C2993h;
import p034j$.wrappers.C3023w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
public class C2781a4 extends AbstractC2800e implements Consumer, Iterable, InterfaceC2499e {

    /* renamed from: e */
    protected Object[] f877e = new Object[16];

    /* renamed from: f */
    protected Object[][] f878f;

    /* renamed from: v */
    private void m456v() {
        if (this.f878f == null) {
            Object[][] objArr = new Object[8];
            this.f878f = objArr;
            this.f931d = new long[8];
            objArr[0] = this.f877e;
        }
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f929b == this.f877e.length) {
            m456v();
            int i = this.f930c;
            int i2 = i + 1;
            Object[][] objArr = this.f878f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m457u(m458t() + 1);
            }
            this.f929b = 0;
            int i3 = this.f930c + 1;
            this.f930c = i3;
            this.f877e = this.f878f[i3];
        }
        Object[] objArr2 = this.f877e;
        int i4 = this.f929b;
        this.f929b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.AbstractC2800e
    public void clear() {
        Object[][] objArr = this.f878f;
        if (objArr != null) {
            this.f877e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f877e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f878f = null;
            this.f931d = null;
        } else {
            for (int i2 = 0; i2 < this.f929b; i2++) {
                this.f877e[i2] = null;
            }
        }
        this.f929b = 0;
        this.f930c = 0;
    }

    @Override // p034j$.lang.InterfaceC2499e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f930c; i++) {
            for (Object obj : this.f878f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f929b; i2++) {
            consumer.accept(this.f877e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3023w.m108b(consumer));
    }

    /* renamed from: i */
    public void mo336i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f930c == 0) {
            System.arraycopy(this.f877e, 0, objArr, i, this.f929b);
            return;
        }
        for (int i2 = 0; i2 < this.f930c; i2++) {
            Object[][] objArr2 = this.f878f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f878f[i2].length;
        }
        int i3 = this.f929b;
        if (i3 > 0) {
            System.arraycopy(this.f877e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2549I.m633i(spliterator());
    }

    @Override // java.lang.Iterable, p034j$.lang.InterfaceC2499e
    public InterfaceC2625s spliterator() {
        return new C2739S3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C2993h.m149a(spliterator());
    }

    /* renamed from: t */
    protected long m458t() {
        int i = this.f930c;
        if (i == 0) {
            return this.f877e.length;
        }
        return this.f878f[i].length + this.f931d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C2782b(arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public final void m457u(long j) {
        Object[][] objArr;
        int i;
        long m458t = m458t();
        if (j <= m458t) {
            return;
        }
        m456v();
        int i2 = this.f930c;
        while (true) {
            i2++;
            if (j <= m458t) {
                return;
            }
            Object[][] objArr2 = this.f878f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f878f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f931d = Arrays.copyOf(this.f931d, length);
            }
            int m430s = m430s(i2);
            this.f878f[i2] = new Object[m430s];
            long[] jArr = this.f931d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m458t += m430s;
        }
    }
}
