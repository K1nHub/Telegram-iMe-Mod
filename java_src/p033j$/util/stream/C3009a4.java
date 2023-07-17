package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import p033j$.lang.InterfaceC2727e;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.wrappers.C3221h;
import p033j$.wrappers.C3251w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
public class C3009a4 extends AbstractC3028e implements Consumer, Iterable, InterfaceC2727e {

    /* renamed from: e */
    protected Object[] f962e = new Object[16];

    /* renamed from: f */
    protected Object[][] f963f;

    /* renamed from: v */
    private void m442v() {
        if (this.f963f == null) {
            Object[][] objArr = new Object[8];
            this.f963f = objArr;
            this.f1016d = new long[8];
            objArr[0] = this.f962e;
        }
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f1014b == this.f962e.length) {
            m442v();
            int i = this.f1015c;
            int i2 = i + 1;
            Object[][] objArr = this.f963f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m443u(m444t() + 1);
            }
            this.f1014b = 0;
            int i3 = this.f1015c + 1;
            this.f1015c = i3;
            this.f962e = this.f963f[i3];
        }
        Object[] objArr2 = this.f962e;
        int i4 = this.f1014b;
        this.f1014b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.stream.AbstractC3028e
    public void clear() {
        Object[][] objArr = this.f963f;
        if (objArr != null) {
            this.f962e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f962e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f963f = null;
            this.f1016d = null;
        } else {
            for (int i2 = 0; i2 < this.f1014b; i2++) {
                this.f962e[i2] = null;
            }
        }
        this.f1014b = 0;
        this.f1015c = 0;
    }

    @Override // p033j$.lang.InterfaceC2727e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1015c; i++) {
            for (Object obj : this.f963f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f1014b; i2++) {
            consumer.accept(this.f962e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3251w.m94b(consumer));
    }

    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1015c == 0) {
            System.arraycopy(this.f962e, 0, objArr, i, this.f1014b);
            return;
        }
        for (int i2 = 0; i2 < this.f1015c; i2++) {
            Object[][] objArr2 = this.f963f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f963f[i2].length;
        }
        int i3 = this.f1014b;
        if (i3 > 0) {
            System.arraycopy(this.f962e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2777I.m618i(spliterator());
    }

    @Override // java.lang.Iterable, p033j$.lang.InterfaceC2727e
    public InterfaceC2853s spliterator() {
        return new C2967S3(this, 0, this.f1015c, 0, this.f1014b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3221h.m135a(spliterator());
    }

    /* renamed from: t */
    protected long m444t() {
        int i = this.f1015c;
        if (i == 0) {
            return this.f962e.length;
        }
        return this.f963f[i].length + this.f1016d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C3010b(arrayList));
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
        int i2 = this.f1015c;
        while (true) {
            i2++;
            if (j <= m444t) {
                return;
            }
            Object[][] objArr2 = this.f963f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f963f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f1016d = Arrays.copyOf(this.f1016d, length);
            }
            int m416s = m416s(i2);
            this.f963f[i2] = new Object[m416s];
            long[] jArr = this.f1016d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m444t += m416s;
        }
    }
}
