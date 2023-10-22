package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2969U3 extends AbstractC2994Z3 implements InterfaceC2816f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2969U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2969U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    /* renamed from: A */
    public Spliterator.InterfaceC2772a spliterator() {
        return new C2964T3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public void accept(double d) {
        m519z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((double[]) this.f1003e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: c */
    public Object mo527c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2670e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2816f) {
            mo339g((InterfaceC2816f) consumer);
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2769F.m679f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: s */
    protected void mo526s(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2816f interfaceC2816f = (InterfaceC2816f) obj2;
        while (i < i2) {
            interfaceC2816f.accept(dArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: t */
    protected int mo525t(Object obj) {
        return ((double[]) obj).length;
    }

    public String toString() {
        double[] dArr = (double[]) mo340e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: y */
    protected Object[] mo520y(int i) {
        return new double[i];
    }
}
