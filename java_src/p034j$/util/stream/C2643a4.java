package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2361e;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.wrappers.C2855h;
import p034j$.wrappers.C2885w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
public class C2643a4 extends AbstractC2662e implements Consumer, Iterable, InterfaceC2361e {

    /* renamed from: e */
    protected Object[] f871e = new Object[16];

    /* renamed from: f */
    protected Object[][] f872f;

    /* renamed from: v */
    private void m457v() {
        if (this.f872f == null) {
            Object[][] objArr = new Object[8];
            this.f872f = objArr;
            this.f925d = new long[8];
            objArr[0] = this.f871e;
        }
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f923b == this.f871e.length) {
            m457v();
            int i = this.f924c;
            int i2 = i + 1;
            Object[][] objArr = this.f872f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m458u(m459t() + 1);
            }
            this.f923b = 0;
            int i3 = this.f924c + 1;
            this.f924c = i3;
            this.f871e = this.f872f[i3];
        }
        Object[] objArr2 = this.f871e;
        int i4 = this.f923b;
        this.f923b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.AbstractC2662e
    public void clear() {
        Object[][] objArr = this.f872f;
        if (objArr != null) {
            this.f871e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f871e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f872f = null;
            this.f925d = null;
        } else {
            for (int i2 = 0; i2 < this.f923b; i2++) {
                this.f871e[i2] = null;
            }
        }
        this.f923b = 0;
        this.f924c = 0;
    }

    @Override // p034j$.lang.InterfaceC2361e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f924c; i++) {
            for (Object obj : this.f872f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f923b; i2++) {
            consumer.accept(this.f871e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C2885w.m109b(consumer));
    }

    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f924c == 0) {
            System.arraycopy(this.f871e, 0, objArr, i, this.f923b);
            return;
        }
        for (int i2 = 0; i2 < this.f924c; i2++) {
            Object[][] objArr2 = this.f872f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f872f[i2].length;
        }
        int i3 = this.f923b;
        if (i3 > 0) {
            System.arraycopy(this.f871e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2411I.m634i(spliterator());
    }

    @Override // java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public InterfaceC2487s spliterator() {
        return new C2601S3(this, 0, this.f924c, 0, this.f923b);
    }

    @Override // java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public /* synthetic */ Spliterator spliterator() {
        return C2855h.m150a(spliterator());
    }

    /* renamed from: t */
    protected long m459t() {
        int i = this.f924c;
        if (i == 0) {
            return this.f871e.length;
        }
        return this.f872f[i].length + this.f925d[i];
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C2644b(arrayList));
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
        int i2 = this.f924c;
        while (true) {
            i2++;
            if (j <= m459t) {
                return;
            }
            Object[][] objArr2 = this.f872f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f872f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f925d = Arrays.copyOf(this.f925d, length);
            }
            int m431s = m431s(i2);
            this.f872f[i2] = new Object[m431s];
            long[] jArr = this.f925d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m459t += m431s;
        }
    }
}
