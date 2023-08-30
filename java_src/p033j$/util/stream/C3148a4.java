package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Spliterator;
import p033j$.lang.InterfaceC2866e;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.wrappers.C3360h;
import p033j$.wrappers.C3390w;
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
class C3148a4 extends AbstractC3167e implements Consumer, Iterable, InterfaceC2866e {

    /* renamed from: e */
    protected Object[] f975e = new Object[16];

    /* renamed from: f */
    protected Object[][] f976f;

    /* renamed from: v */
    private void m460v() {
        if (this.f976f == null) {
            Object[][] objArr = new Object[8];
            this.f976f = objArr;
            this.f1029d = new long[8];
            objArr[0] = this.f975e;
        }
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f1027b == this.f975e.length) {
            m460v();
            int i = this.f1028c;
            int i2 = i + 1;
            Object[][] objArr = this.f976f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m461u(m462t() + 1);
            }
            this.f1027b = 0;
            int i3 = this.f1028c + 1;
            this.f1028c = i3;
            this.f975e = this.f976f[i3];
        }
        Object[] objArr2 = this.f975e;
        int i4 = this.f1027b;
        this.f1027b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3167e
    public void clear() {
        Object[][] objArr = this.f976f;
        if (objArr != null) {
            this.f975e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f975e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f976f = null;
            this.f1029d = null;
        } else {
            for (int i2 = 0; i2 < this.f1027b; i2++) {
                this.f975e[i2] = null;
            }
        }
        this.f1027b = 0;
        this.f1028c = 0;
    }

    @Override // p033j$.lang.InterfaceC2866e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1028c; i++) {
            for (Object obj : this.f976f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f1027b; i2++) {
            consumer.accept(this.f975e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3390w.m112b(consumer));
    }

    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1028c == 0) {
            System.arraycopy(this.f975e, 0, objArr, i, this.f1027b);
            return;
        }
        for (int i2 = 0; i2 < this.f1028c; i2++) {
            Object[][] objArr2 = this.f976f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f976f[i2].length;
        }
        int i3 = this.f1027b;
        if (i3 > 0) {
            System.arraycopy(this.f975e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2916I.m636i(spliterator());
    }

    @Override // java.lang.Iterable, p033j$.lang.InterfaceC2866e
    public InterfaceC2992s spliterator() {
        return new C3106S3(this, 0, this.f1028c, 0, this.f1027b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3360h.m153a(spliterator());
    }

    /* renamed from: t */
    protected long m462t() {
        int i = this.f1028c;
        if (i == 0) {
            return this.f975e.length;
        }
        return this.f976f[i].length + this.f1029d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C3149b(arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public final void m461u(long j) {
        Object[][] objArr;
        int i;
        long m462t = m462t();
        if (j <= m462t) {
            return;
        }
        m460v();
        int i2 = this.f1028c;
        while (true) {
            i2++;
            if (j <= m462t) {
                return;
            }
            Object[][] objArr2 = this.f976f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f976f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f1029d = Arrays.copyOf(this.f1029d, length);
            }
            int m434s = m434s(i2);
            this.f976f[i2] = new Object[m434s];
            long[] jArr = this.f1029d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m462t += m434s;
        }
    }
}
