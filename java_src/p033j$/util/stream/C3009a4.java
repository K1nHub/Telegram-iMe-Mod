package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Spliterator;
import p033j$.lang.InterfaceC2727e;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.wrappers.C3221h;
import p033j$.wrappers.C3251w;
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
class C3009a4 extends AbstractC3028e implements Consumer, Iterable, InterfaceC2727e {

    /* renamed from: e */
    protected Object[] f965e = new Object[16];

    /* renamed from: f */
    protected Object[][] f966f;

    /* renamed from: v */
    private void m460v() {
        if (this.f966f == null) {
            Object[][] objArr = new Object[8];
            this.f966f = objArr;
            this.f1019d = new long[8];
            objArr[0] = this.f965e;
        }
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f1017b == this.f965e.length) {
            m460v();
            int i = this.f1018c;
            int i2 = i + 1;
            Object[][] objArr = this.f966f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m461u(m462t() + 1);
            }
            this.f1017b = 0;
            int i3 = this.f1018c + 1;
            this.f1018c = i3;
            this.f965e = this.f966f[i3];
        }
        Object[] objArr2 = this.f965e;
        int i4 = this.f1017b;
        this.f1017b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3028e
    public void clear() {
        Object[][] objArr = this.f966f;
        if (objArr != null) {
            this.f965e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f965e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f966f = null;
            this.f1019d = null;
        } else {
            for (int i2 = 0; i2 < this.f1017b; i2++) {
                this.f965e[i2] = null;
            }
        }
        this.f1017b = 0;
        this.f1018c = 0;
    }

    @Override // p033j$.lang.InterfaceC2727e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1018c; i++) {
            for (Object obj : this.f966f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f1017b; i2++) {
            consumer.accept(this.f965e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3251w.m112b(consumer));
    }

    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1018c == 0) {
            System.arraycopy(this.f965e, 0, objArr, i, this.f1017b);
            return;
        }
        for (int i2 = 0; i2 < this.f1018c; i2++) {
            Object[][] objArr2 = this.f966f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f966f[i2].length;
        }
        int i3 = this.f1017b;
        if (i3 > 0) {
            System.arraycopy(this.f965e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2777I.m636i(spliterator());
    }

    @Override // java.lang.Iterable, p033j$.lang.InterfaceC2727e
    public InterfaceC2853s spliterator() {
        return new C2967S3(this, 0, this.f1018c, 0, this.f1017b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3221h.m153a(spliterator());
    }

    /* renamed from: t */
    protected long m462t() {
        int i = this.f1018c;
        if (i == 0) {
            return this.f965e.length;
        }
        return this.f966f[i].length + this.f1019d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C3010b(arrayList));
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
        int i2 = this.f1018c;
        while (true) {
            i2++;
            if (j <= m462t) {
                return;
            }
            Object[][] objArr2 = this.f966f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f966f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f1019d = Arrays.copyOf(this.f1019d, length);
            }
            int m434s = m434s(i2);
            this.f966f[i2] = new Object[m434s];
            long[] jArr = this.f1019d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m462t += m434s;
        }
    }
}
