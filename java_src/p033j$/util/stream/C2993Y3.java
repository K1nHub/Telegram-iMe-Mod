package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2993Y3 extends AbstractC2998Z3 implements InterfaceC2830p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2993Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2993Y3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    /* renamed from: A */
    public Spliterator.InterfaceC2778c spliterator() {
        return new C2988X3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        m520z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((long[]) this.f1003e)[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: c */
    public Object mo528c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.lang.InterfaceC2674e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2830p) {
            mo340g((InterfaceC2830p) consumer);
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2773F.m678h(spliterator());
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: s */
    protected void mo527s(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2830p interfaceC2830p = (InterfaceC2830p) obj2;
        while (i < i2) {
            interfaceC2830p.accept(jArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: t */
    protected int mo526t(Object obj) {
        return ((long[]) obj).length;
    }

    public String toString() {
        long[] jArr = (long[]) mo341e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1068c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: y */
    protected Object[] mo521y(int i) {
        return new long[i];
    }
}
