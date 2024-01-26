package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import p033j$.lang.InterfaceC2669e;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.wrappers.C3209h;
import p033j$.wrappers.C3237v;
/* renamed from: j$.util.stream.a4 */
/* loaded from: classes2.dex */
class C3000a4 extends AbstractC3019e implements Consumer, Iterable, InterfaceC2669e {

    /* renamed from: e */
    protected Object[] f1015e = new Object[16];

    /* renamed from: f */
    protected Object[][] f1016f;

    /* renamed from: u */
    private void m509u() {
        if (this.f1016f == null) {
            Object[][] objArr = new Object[8];
            this.f1016f = objArr;
            this.f1069d = new long[8];
            objArr[0] = this.f1015e;
        }
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f1067b == this.f1015e.length) {
            m509u();
            int i = this.f1068c;
            int i2 = i + 1;
            Object[][] objArr = this.f1016f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m510t(m511s() + 1);
            }
            this.f1067b = 0;
            int i3 = this.f1068c + 1;
            this.f1068c = i3;
            this.f1015e = this.f1016f[i3];
        }
        Object[] objArr2 = this.f1015e;
        int i4 = this.f1067b;
        this.f1067b = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3019e
    public void clear() {
        Object[][] objArr = this.f1016f;
        if (objArr != null) {
            this.f1015e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f1015e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f1016f = null;
            this.f1069d = null;
        } else {
            for (int i2 = 0; i2 < this.f1067b; i2++) {
                this.f1015e[i2] = null;
            }
        }
        this.f1067b = 0;
        this.f1068c = 0;
    }

    @Override // p033j$.lang.InterfaceC2669e
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1068c; i++) {
            for (Object obj : this.f1016f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.f1067b; i2++) {
            consumer.accept(this.f1015e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
        forEach(C3237v.m168b(consumer));
    }

    /* renamed from: i */
    public void mo389i(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1068c == 0) {
            System.arraycopy(this.f1015e, 0, objArr, i, this.f1067b);
            return;
        }
        for (int i2 = 0; i2 < this.f1068c; i2++) {
            Object[][] objArr2 = this.f1016f;
            System.arraycopy(objArr2[i2], 0, objArr, i, objArr2[i2].length);
            i += this.f1016f[i2].length;
        }
        int i3 = this.f1067b;
        if (i3 > 0) {
            System.arraycopy(this.f1015e, 0, objArr, i, i3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2768F.m680i(spliterator());
    }

    /* renamed from: s */
    protected long m511s() {
        int i = this.f1068c;
        if (i == 0) {
            return this.f1015e.length;
        }
        return this.f1016f[i].length + this.f1069d[i];
    }

    @Override // java.lang.Iterable, p033j$.lang.InterfaceC2669e
    public Spliterator spliterator() {
        return new C2958S3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return C3209h.m205a(spliterator());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: t */
    public final void m510t(long j) {
        Object[][] objArr;
        int i;
        long m511s = m511s();
        if (j <= m511s) {
            return;
        }
        m509u();
        int i2 = this.f1068c;
        while (true) {
            i2++;
            if (j <= m511s) {
                return;
            }
            Object[][] objArr2 = this.f1016f;
            if (i2 >= objArr2.length) {
                int length = objArr2.length * 2;
                this.f1016f = (Object[][]) Arrays.copyOf(objArr2, length);
                this.f1069d = Arrays.copyOf(this.f1069d, length);
            }
            int m483r = m483r(i2);
            this.f1016f[i2] = new Object[m483r];
            long[] jArr = this.f1069d;
            jArr[i2] = jArr[i2 - 1] + objArr[i].length;
            m511s += m483r;
        }
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        forEach(new C3001b(arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }
}
