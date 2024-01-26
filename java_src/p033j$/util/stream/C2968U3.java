package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2968U3 extends AbstractC2993Z3 implements InterfaceC2815f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2968U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2968U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    /* renamed from: A */
    public Spliterator.InterfaceC2771a spliterator() {
        return new C2963T3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public void accept(double d) {
        m523z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((double[]) this.f1003e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: c */
    public Object mo531c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2669e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2815f) {
            mo343g((InterfaceC2815f) consumer);
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2768F.m683f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: s */
    protected void mo530s(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2815f interfaceC2815f = (InterfaceC2815f) obj2;
        while (i < i2) {
            interfaceC2815f.accept(dArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: t */
    protected int mo529t(Object obj) {
        return ((double[]) obj).length;
    }

    public String toString() {
        double[] dArr = (double[]) mo344e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: y */
    protected Object[] mo524y(int i) {
        return new double[i];
    }
}
