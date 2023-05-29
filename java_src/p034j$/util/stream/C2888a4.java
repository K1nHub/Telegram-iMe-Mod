package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2606e;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.wrappers.C3100h;
import p034j$.wrappers.C3130w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
public class C2888a4 extends AbstractC2907e implements Consumer, Iterable, InterfaceC2606e {

    /* renamed from: e */
    protected Object[] f880e = new Object[16];

    /* renamed from: f */
    protected Object[][] f881f;

    /* renamed from: v */
    private void m442v() {
        if (this.f881f == null) {
            Object[][] objArr = new Object[8];
            this.f881f = objArr;
            this.f934d = new long[8];
            objArr[0] = this.f880e;
        }
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f932b == this.f880e.length) {
            m442v();
            int i = this.f933c;
            int i2 = i + 1;
            Object[][] objArr = this.f881f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m443u(m444t() + 1);
            }
            this.f932b = 0;
            int i3 = this.f933c + 1;
            this.f933c = i3;
            this.f880e = this.f881f[i3];
        }
        Object[] objArr2 = this.f880e;
        int i4 = this.f932b;
        this.f932b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.AbstractC2907e
    public void clear() {
        Object[][] objArr = this.f881f;
        if (objArr != null) {
            this.f880e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f880e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f881f = null;
            this.f934d = null;
        } else {
            for (int i2 = 0; i2 < this.f932b; i2++) {
                this.f880e[i2] = null;
            }
        }
        this.f932b = 0;
        this.f933c = 0;
    }

    @Override // p034j$.lang.InterfaceC2606e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f933c; i++) {
            for (Object obj : this.f881f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f932b; i2++) {
            consumer.accept(this.f880e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3130w.m94b(consumer));
    }

    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f933c == 0) {
            System.arraycopy(this.f880e, 0, objArr, i, this.f932b);
            return;
        }
        for (int i2 = 0; i2 < this.f933c; i2++) {
            Object[][] objArr2 = this.f881f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f881f[i2].length;
        }
        int i3 = this.f932b;
        if (i3 > 0) {
            System.arraycopy(this.f880e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2656I.m618i(spliterator());
    }

    @Override // java.lang.Iterable, p034j$.lang.InterfaceC2606e
    public InterfaceC2732s spliterator() {
        return new C2846S3(this, 0, this.f933c, 0, this.f932b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3100h.m135a(spliterator());
    }

    /* renamed from: t */
    protected long m444t() {
        int i = this.f933c;
        if (i == 0) {
            return this.f880e.length;
        }
        return this.f881f[i].length + this.f934d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C2889b(arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public final void m443u(long j) {
        Object[][] objArr;
        int i;
        long m444t = m444t();
        if (j <= m444t) {
            return;
        }
        m442v();
        int i2 = this.f933c;
        while (true) {
            i2++;
            if (j <= m444t) {
                return;
            }
            Object[][] objArr2 = this.f881f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f881f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f934d = Arrays.copyOf(this.f934d, length);
            }
            int m416s = m416s(i2);
            this.f881f[i2] = new Object[m416s];
            long[] jArr = this.f934d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m444t += m416s;
        }
    }
}
