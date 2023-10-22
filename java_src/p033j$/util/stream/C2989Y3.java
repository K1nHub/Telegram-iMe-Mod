package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2989Y3 extends AbstractC2994Z3 implements InterfaceC2826p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2989Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2989Y3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    /* renamed from: A */
    public Spliterator.InterfaceC2774c spliterator() {
        return new C2984X3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        m519z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((long[]) this.f1003e)[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: c */
    public Object mo527c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }

    @Override // p033j$.lang.InterfaceC2670e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2826p) {
            mo339g((InterfaceC2826p) consumer);
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2769F.m677h(spliterator());
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: s */
    protected void mo526s(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2826p interfaceC2826p = (InterfaceC2826p) obj2;
        while (i < i2) {
            interfaceC2826p.accept(jArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: t */
    protected int mo525t(Object obj) {
        return ((long[]) obj).length;
    }

    public String toString() {
        long[] jArr = (long[]) mo340e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1068c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: y */
    protected Object[] mo520y(int i) {
        return new long[i];
    }
}
