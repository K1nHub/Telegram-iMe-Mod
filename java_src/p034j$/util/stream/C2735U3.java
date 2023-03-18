package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2735U3 extends AbstractC2760Z3 implements InterfaceC2578f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2735U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2735U3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    /* renamed from: B */
    public InterfaceC2611s.InterfaceC2612a spliterator() {
        return new C2730T3(this, 0, this.f929c, 0, this.f928b);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public void accept(double d) {
        m479A();
        int i = this.f928b;
        this.f928b = i + 1;
        ((double[]) this.f864e)[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: c */
    public Object mo478c(int i) {
        return new double[i];
    }

    @Override // p034j$.lang.InterfaceC2485e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2578f) {
            mo291g((InterfaceC2578f) consumer);
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2535I.m637f(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: t */
    protected void mo477t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2578f interfaceC2578f = (InterfaceC2578f) obj2;
        while (i < i2) {
            interfaceC2578f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo292e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f929c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f929c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: u */
    protected int mo476u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: z */
    protected Object[] mo471z(int i) {
        return new double[i];
    }
}
