package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2770F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2970U3 extends AbstractC2995Z3 implements InterfaceC2817f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2970U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2970U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3, java.lang.Iterable, p033j$.lang.InterfaceC2671e
    /* renamed from: A */
    public Spliterator.InterfaceC2773a spliterator() {
        return new C2965T3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public void accept(double d) {
        m520z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((double[]) this.f1003e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: c */
    public Object mo528c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2671e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2817f) {
            mo340g((InterfaceC2817f) consumer);
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2770F.m680f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: s */
    protected void mo527s(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2817f interfaceC2817f = (InterfaceC2817f) obj2;
        while (i < i2) {
            interfaceC2817f.accept(dArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: t */
    protected int mo526t(Object obj) {
        return ((double[]) obj).length;
    }

    public String toString() {
        double[] dArr = (double[]) mo341e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2995Z3
    /* renamed from: y */
    protected Object[] mo521y(int i) {
        return new double[i];
    }
}
