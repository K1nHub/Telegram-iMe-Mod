package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2485e;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.wrappers.C2979h;
import p034j$.wrappers.C3009w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
public class C2767a4 extends AbstractC2786e implements Consumer, Iterable, InterfaceC2485e {

    /* renamed from: e */
    protected Object[] f876e = new Object[16];

    /* renamed from: f */
    protected Object[][] f877f;

    /* renamed from: v */
    private void m457v() {
        if (this.f877f == null) {
            Object[][] objArr = new Object[8];
            this.f877f = objArr;
            this.f930d = new long[8];
            objArr[0] = this.f876e;
        }
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f928b == this.f876e.length) {
            m457v();
            int i = this.f929c;
            int i2 = i + 1;
            Object[][] objArr = this.f877f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m458u(m459t() + 1);
            }
            this.f928b = 0;
            int i3 = this.f929c + 1;
            this.f929c = i3;
            this.f876e = this.f877f[i3];
        }
        Object[] objArr2 = this.f876e;
        int i4 = this.f928b;
        this.f928b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.AbstractC2786e
    public void clear() {
        Object[][] objArr = this.f877f;
        if (objArr != null) {
            this.f876e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f876e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f877f = null;
            this.f930d = null;
        } else {
            for (int i2 = 0; i2 < this.f928b; i2++) {
                this.f876e[i2] = null;
            }
        }
        this.f928b = 0;
        this.f929c = 0;
    }

    @Override // p034j$.lang.InterfaceC2485e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f929c; i++) {
            for (Object obj : this.f877f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f928b; i2++) {
            consumer.accept(this.f876e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3009w.m109b(consumer));
    }

    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f929c == 0) {
            System.arraycopy(this.f876e, 0, objArr, i, this.f928b);
            return;
        }
        for (int i2 = 0; i2 < this.f929c; i2++) {
            Object[][] objArr2 = this.f877f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f877f[i2].length;
        }
        int i3 = this.f928b;
        if (i3 > 0) {
            System.arraycopy(this.f876e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2535I.m634i(spliterator());
    }

    @Override // java.lang.Iterable, p034j$.lang.InterfaceC2485e
    public InterfaceC2611s spliterator() {
        return new C2725S3(this, 0, this.f929c, 0, this.f928b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C2979h.m150a(spliterator());
    }

    /* renamed from: t */
    protected long m459t() {
        int i = this.f929c;
        if (i == 0) {
            return this.f876e.length;
        }
        return this.f877f[i].length + this.f930d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C2768b(arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public final void m458u(long j) {
        Object[][] objArr;
        int i;
        long m459t = m459t();
        if (j <= m459t) {
            return;
        }
        m457v();
        int i2 = this.f929c;
        while (true) {
            i2++;
            if (j <= m459t) {
                return;
            }
            Object[][] objArr2 = this.f877f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f877f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f930d = Arrays.copyOf(this.f930d, length);
            }
            int m431s = m431s(i2);
            this.f877f[i2] = new Object[m431s];
            long[] jArr = this.f930d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m459t += m431s;
        }
    }
}
